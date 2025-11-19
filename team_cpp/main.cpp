#include <iostream>
#include <algorithm>
#include <vector>
#include <cstdint>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <cstring>
#include <thread>

// Highly optimized single-pass radix sort
__attribute__((always_inline))
inline void radix_pass(uint32_t* __restrict__ src, uint32_t* __restrict__ dst, size_t n, int shift) {
    size_t count[256] = {0};

    // Count phase - pointer iteration
    uint32_t* end = src + n;
    for (uint32_t* p = src; p < end; ++p) {
        ++count[(*p >> shift) & 0xFF];
    }

    // Prefix sum
    for (size_t i = 1; i < 256; ++i) {
        count[i] += count[i - 1];
    }

    // Distribution phase (backwards for stability)
    for (size_t i = n; i-- > 0; ) {
        uint8_t byte = (src[i] >> shift) & 0xFF;
        dst[--count[byte]] = src[i];
    }
}

void radix_sort(uint32_t* arr, size_t n) {
    uint32_t* temp = new uint32_t[n];

    // 4 passes for 32-bit integers (8 bits per pass)
    radix_pass(arr, temp, n, 0);
    radix_pass(temp, arr, n, 8);
    radix_pass(arr, temp, n, 16);
    radix_pass(temp, arr, n, 24);

    delete[] temp;
}

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

    // Memory-map the file with POPULATE flag for faster access
    void* mapped = mmap(nullptr, file_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_POPULATE, fd, 0);
    if (mapped == MAP_FAILED) {
        std::cerr << "Failed to mmap file" << std::endl;
        close(fd);
        return 1;
    }

    // Close fd early (mmap keeps reference)
    close(fd);

    // Use mmap'd memory directly as uint32_t array
    uint32_t* numbers = static_cast<uint32_t*>(mapped);

    // Sort using radix sort (O(n) for 32-bit integers)
    radix_sort(numbers, num_integers);

    // Calculate sum of top 50%
    size_t top_half_start = num_integers / 2;
    uint64_t sum = 0;
    for (size_t i = top_half_start; i < num_integers; ++i) {
        sum += numbers[i];
    }

    std::cout << "Sum of top 50%: " << sum << std::endl;

    // Cleanup
    munmap(mapped, file_size);

    return 0;
}
