#include <iostream>
#include <algorithm>
#include <vector>
#include <cstdint>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <immintrin.h>
#include <execution>

// Select optimization variant:
// 0 = Original radix sort
// 1 = SIMD-accelerated counting (AVX2)
// 2 = Cache-blocked radix sort
// 3 = American Flag Sort (in-place radix variant)
// 4 = 16-bit radix (2 passes, 256KB histogram)
// 5 = Prefetch-optimized radix
// 6 = std::sort (sequential pdqsort)
// 7 = Parallel sort (std::execution::par_unseq)
#define VARIANT 6

#if VARIANT == 0
// ===== VARIANT 0: ORIGINAL RADIX SORT =====
__attribute__((always_inline))
inline void radix_pass(uint32_t* __restrict__ src, uint32_t* __restrict__ dst, size_t n, int shift) {
    size_t count[256] = {0};

    // Count phase
    uint32_t* end = src + n;
    for (uint32_t* p = src; p < end; ++p) {
        ++count[(*p >> shift) & 0xFF];
    }

    // Prefix sum
    for (size_t i = 1; i < 256; ++i) {
        count[i] += count[i - 1];
    }

    // Distribution phase (backwards)
    for (size_t i = n; i-- > 0; ) {
        uint8_t byte = (src[i] >> shift) & 0xFF;
        dst[--count[byte]] = src[i];
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    uint32_t* temp = new uint32_t[n];
    radix_pass(arr, temp, n, 0);
    radix_pass(temp, arr, n, 8);
    radix_pass(arr, temp, n, 16);
    radix_pass(temp, arr, n, 24);
    delete[] temp;
}

#elif VARIANT == 1
// ===== VARIANT 1: SIMD-ACCELERATED RADIX WITH AVX2 =====
// Hypothesis: Vectorize the counting phase using SIMD gather operations

__attribute__((always_inline))
inline void radix_pass_simd(uint32_t* __restrict__ src, uint32_t* __restrict__ dst, size_t n, int shift) {
    alignas(64) size_t count[256] = {0};

    // SIMD-accelerated counting phase
    size_t i = 0;
    const size_t simd_end = (n / 8) * 8;

    // Process 8 elements at a time with AVX2
    for (; i < simd_end; i += 8) {
        // Load 8 uint32_t values
        __m256i vals = _mm256_loadu_si256((__m256i*)&src[i]);

        // Shift and mask to get bytes
        __m256i shifted = _mm256_srli_epi32(vals, shift);
        __m256i masked = _mm256_and_si256(shifted, _mm256_set1_epi32(0xFF));

        // Store to temp array and count (can't vectorize random writes to histogram)
        alignas(32) uint32_t bytes[8];
        _mm256_storeu_si256((__m256i*)bytes, masked);

        // Manual unroll for better throughput
        ++count[bytes[0]];
        ++count[bytes[1]];
        ++count[bytes[2]];
        ++count[bytes[3]];
        ++count[bytes[4]];
        ++count[bytes[5]];
        ++count[bytes[6]];
        ++count[bytes[7]];
    }

    // Handle remainder
    for (; i < n; ++i) {
        ++count[(src[i] >> shift) & 0xFF];
    }

    // Prefix sum (SIMD doesn't help much here due to dependencies)
    for (size_t j = 1; j < 256; ++j) {
        count[j] += count[j - 1];
    }

    // Distribution phase - forward iteration for better cache behavior
    for (size_t j = n; j-- > 0; ) {
        uint8_t byte = (src[j] >> shift) & 0xFF;
        dst[--count[byte]] = src[j];
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    // Align temp buffer for SIMD
    void* raw_ptr = nullptr;
    if (posix_memalign(&raw_ptr, 64, n * sizeof(uint32_t)) != 0) {
        std::cerr << "Memory alignment failed\n";
        return;
    }
    uint32_t* temp = static_cast<uint32_t*>(raw_ptr);

    radix_pass_simd(arr, temp, n, 0);
    radix_pass_simd(temp, arr, n, 8);
    radix_pass_simd(arr, temp, n, 16);
    radix_pass_simd(temp, arr, n, 24);

    free(temp);
}

#elif VARIANT == 2
// ===== VARIANT 2: CACHE-BLOCKED RADIX SORT =====
// Hypothesis: Process data in cache-sized blocks to reduce memory bandwidth

constexpr size_t BLOCK_SIZE = 8192; // 32KB working set (fits in L1)

__attribute__((always_inline))
inline void radix_pass_blocked(uint32_t* __restrict__ src, uint32_t* __restrict__ dst, size_t n, int shift) {
    alignas(64) size_t count[256] = {0};

    // Blocked counting for better cache utilization
    for (size_t block_start = 0; block_start < n; block_start += BLOCK_SIZE) {
        size_t block_end = std::min(block_start + BLOCK_SIZE, n);

        // Count within block
        for (size_t i = block_start; i < block_end; ++i) {
            ++count[(src[i] >> shift) & 0xFF];
        }
    }

    // Prefix sum
    for (size_t i = 1; i < 256; ++i) {
        count[i] += count[i - 1];
    }

    // Distribution - also blocked
    for (size_t i = n; i-- > 0; ) {
        uint8_t byte = (src[i] >> shift) & 0xFF;
        dst[--count[byte]] = src[i];
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    uint32_t* temp = new uint32_t[n];
    radix_pass_blocked(arr, temp, n, 0);
    radix_pass_blocked(temp, arr, n, 8);
    radix_pass_blocked(arr, temp, n, 16);
    radix_pass_blocked(temp, arr, n, 24);
    delete[] temp;
}

#elif VARIANT == 3
// ===== VARIANT 3: AMERICAN FLAG SORT (IN-PLACE RADIX) =====
// Hypothesis: Eliminate allocation overhead with in-place partitioning

void american_flag_sort(uint32_t* arr, size_t n, int shift) {
    if (shift < 0 || n < 2) return;

    size_t count[257] = {0};

    // Count
    for (size_t i = 0; i < n; ++i) {
        ++count[((arr[i] >> shift) & 0xFF) + 1];
    }

    // Prefix sum to get bucket boundaries
    for (size_t i = 1; i < 257; ++i) {
        count[i] += count[i - 1];
    }

    // In-place permutation
    size_t indices[256];
    memcpy(indices, count, 256 * sizeof(size_t));

    for (size_t bucket = 0; bucket < 256; ++bucket) {
        while (indices[bucket] < count[bucket + 1]) {
            uint32_t val = arr[indices[bucket]];
            uint8_t target_bucket = (val >> shift) & 0xFF;

            if (target_bucket == bucket) {
                ++indices[bucket];
            } else {
                std::swap(arr[indices[bucket]], arr[indices[target_bucket]]);
                ++indices[target_bucket];
            }
        }
    }

    // Recurse on each bucket for next byte
    if (shift > 0) {
        for (size_t bucket = 0; bucket < 256; ++bucket) {
            size_t start = count[bucket];
            size_t end = count[bucket + 1];
            if (end - start > 1) {
                american_flag_sort(arr + start, end - start, shift - 8);
            }
        }
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    american_flag_sort(arr, n, 24);
}

#elif VARIANT == 4
// ===== VARIANT 4: 16-BIT RADIX (2 PASSES) =====
// Hypothesis: Reduce passes from 4 to 2, halve memory bandwidth

__attribute__((always_inline))
inline void radix_pass_16bit(uint32_t* __restrict__ src, uint32_t* __restrict__ dst, size_t n, int shift) {
    alignas(64) size_t count[65536] = {0};

    // Count phase - blocked for cache
    constexpr size_t BLOCK = 8192;
    for (size_t block_start = 0; block_start < n; block_start += BLOCK) {
        size_t block_end = std::min(block_start + BLOCK, n);
        for (size_t i = block_start; i < block_end; ++i) {
            ++count[(src[i] >> shift) & 0xFFFF];
        }
    }

    // Prefix sum
    for (size_t i = 1; i < 65536; ++i) {
        count[i] += count[i - 1];
    }

    // Distribution
    for (size_t i = n; i-- > 0; ) {
        uint16_t key = (src[i] >> shift) & 0xFFFF;
        dst[--count[key]] = src[i];
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    uint32_t* temp = new uint32_t[n];

    // Only 2 passes: lower 16 bits, upper 16 bits
    radix_pass_16bit(arr, temp, n, 0);
    radix_pass_16bit(temp, arr, n, 16);

    delete[] temp;
}

#elif VARIANT == 5
// ===== VARIANT 5: PREFETCH-OPTIMIZED =====
// Hypothesis: Explicit prefetching reduces memory stalls

__attribute__((always_inline))
inline void radix_pass_prefetch(uint32_t* __restrict__ src, uint32_t* __restrict__ dst, size_t n, int shift) {
    alignas(64) size_t count[256] = {0};

    // Count with prefetching
    constexpr size_t PREFETCH_DISTANCE = 64; // Cache lines ahead
    for (size_t i = 0; i < n; ++i) {
        if (i + PREFETCH_DISTANCE < n) {
            __builtin_prefetch(&src[i + PREFETCH_DISTANCE], 0, 3);
        }
        ++count[(src[i] >> shift) & 0xFF];
    }

    // Prefix sum
    for (size_t i = 1; i < 256; ++i) {
        count[i] += count[i - 1];
    }

    // Distribution with prefetching
    for (size_t i = n; i-- > 0; ) {
        if (i >= PREFETCH_DISTANCE) {
            __builtin_prefetch(&src[i - PREFETCH_DISTANCE], 0, 3);
        }
        uint8_t byte = (src[i] >> shift) & 0xFF;
        dst[--count[byte]] = src[i];
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    uint32_t* temp = new uint32_t[n];
    radix_pass_prefetch(arr, temp, n, 0);
    radix_pass_prefetch(temp, arr, n, 8);
    radix_pass_prefetch(arr, temp, n, 16);
    radix_pass_prefetch(temp, arr, n, 24);
    delete[] temp;
}

#elif VARIANT == 6
// ===== VARIANT 6: PDQSORT (STL HYBRID) =====
// Hypothesis: Leverage C++ standard library optimizations

void radix_sort(uint32_t* arr, size_t n) {
    std::sort(arr, arr + n);
}

#elif VARIANT == 7
// ===== VARIANT 7: PARALLEL SORT =====
// Hypothesis: Multi-threaded sort exploits all CPU cores

void radix_sort(uint32_t* arr, size_t n) {
    std::sort(std::execution::par_unseq, arr, arr + n);
}

#endif

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <input_file>" << std::endl;
        return 1;
    }

    const char* filename = argv[1];

    // Open file
    int fd = open(filename, O_RDONLY);
    if (fd == -1) {
        std::cerr << "Failed to open file" << std::endl;
        return 1;
    }

    // Get file size
    struct stat sb;
    if (fstat(fd, &sb) == -1) {
        std::cerr << "Failed to get file size" << std::endl;
        close(fd);
        return 1;
    }

    size_t file_size = sb.st_size;
    size_t num_integers = file_size / sizeof(uint32_t);

    // Memory-map with POPULATE and HUGEPAGE hints
    void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE,
                        MAP_PRIVATE | MAP_POPULATE, fd, 0);
    if (mapped == MAP_FAILED) {
        std::cerr << "Failed to mmap file" << std::endl;
        close(fd);
        return 1;
    }

    // Advise kernel about access pattern
    madvise(mapped, file_size, MADV_SEQUENTIAL | MADV_WILLNEED);

    close(fd);

    uint32_t* numbers = static_cast<uint32_t*>(mapped);

    // Sort using selected variant
    radix_sort(numbers, num_integers);

    // Calculate sum of top 50%
    size_t top_half_start = num_integers / 2;
    uint64_t sum = 0;
    for (size_t i = top_half_start; i < num_integers; ++i) {
        sum += numbers[i];
    }

    std::cout << "Sum of top 50%: " << sum << std::endl;

    munmap(mapped, file_size);

    return 0;
}
