use memmap2::MmapMut;
use std::env;
use std::fs::File;
use std::io;

// Optimization variant selection
// 0 = Original safe radix sort
// 1 = sort_unstable (pdqsort - matches C++ std::sort)
// 2 = Unsafe raw pointer radix sort
// 3 = Parallel radix sort (rayon)
const VARIANT: u32 = 1;

#[cfg(feature = "variant_0")]
// ===== VARIANT 0: ORIGINAL SAFE RADIX SORT =====
fn radix_sort(arr: &mut [u32]) {
    let n = arr.len();
    let mut temp = vec![0u32; n];

    for shift in (0..32).step_by(8) {
        let mut count = [0usize; 256];

        for &val in arr.iter() {
            let byte = ((val >> shift) & 0xFF) as usize;
            count[byte] += 1;
        }

        for i in 1..256 {
            count[i] += count[i - 1];
        }

        for &val in arr.iter().rev() {
            let byte = ((val >> shift) & 0xFF) as usize;
            count[byte] -= 1;
            temp[count[byte]] = val;
        }

        arr.copy_from_slice(&temp);
    }
}

#[cfg(not(feature = "variant_0"))]
fn radix_sort(arr: &mut [u32]) {
    match VARIANT {
        0 => {
            // Original safe radix sort
            let n = arr.len();
            let mut temp = vec![0u32; n];

            for shift in (0..32).step_by(8) {
                let mut count = [0usize; 256];

                for &val in arr.iter() {
                    let byte = ((val >> shift) & 0xFF) as usize;
                    count[byte] += 1;
                }

                for i in 1..256 {
                    count[i] += count[i - 1];
                }

                for &val in arr.iter().rev() {
                    let byte = ((val >> shift) & 0xFF) as usize;
                    count[byte] -= 1;
                    temp[count[byte]] = val;
                }

                arr.copy_from_slice(&temp);
            }
        }
        1 => {
            // VARIANT 1: Use Rust's highly optimized sort_unstable (pdqsort)
            // This is the same algorithm family as C++ std::sort
            arr.sort_unstable();
        }
        2 => {
            // VARIANT 2: Unsafe raw pointer radix sort (bypass bounds checking)
            unsafe {
                let n = arr.len();
                let mut temp = vec![0u32; n];
                let arr_ptr = arr.as_mut_ptr();
                let temp_ptr = temp.as_mut_ptr();

                for shift in (0..32).step_by(8) {
                    let mut count = [0usize; 256];

                    // Unsafe counting - no bounds checks
                    for i in 0..n {
                        let val = *arr_ptr.add(i);
                        let byte = ((val >> shift) & 0xFF) as usize;
                        count[byte] += 1;
                    }

                    // Prefix sum
                    for i in 1..256 {
                        count[i] += count[i - 1];
                    }

                    // Distribution
                    for i in (0..n).rev() {
                        let val = *arr_ptr.add(i);
                        let byte = ((val >> shift) & 0xFF) as usize;
                        count[byte] -= 1;
                        *temp_ptr.add(count[byte]) = val;
                    }

                    // Copy back using raw pointer memcpy
                    std::ptr::copy_nonoverlapping(temp_ptr, arr_ptr, n);
                }
            }
        }
        3 => {
            // VARIANT 3: Would require rayon dependency - fallback to sort_unstable
            arr.sort_unstable();
        }
        _ => arr.sort_unstable(),
    }
}

fn main() -> io::Result<()> {
    let args: Vec<String> = env::args().collect();
    if args.len() != 2 {
        eprintln!("Usage: {} <input_file>", args[0]);
        std::process::exit(1);
    }

    let filename = &args[1];

    // Memory-map the file with write access for in-place sorting
    let file = File::options().read(true).write(true).open(filename)?;
    let mut mmap = unsafe { MmapMut::map_mut(&file)? };

    // Cast bytes directly to u32 slice (zero-copy)
    let num_integers = mmap.len() / 4;
    let numbers: &mut [u32] = unsafe {
        std::slice::from_raw_parts_mut(
            mmap.as_mut_ptr() as *mut u32,
            num_integers
        )
    };

    // Sort using selected variant
    radix_sort(numbers);

    // Calculate sum of top 50%
    let top_half_start = num_integers / 2;
    let sum: u64 = numbers[top_half_start..].iter().map(|&x| x as u64).sum();

    println!("Sum of top 50%: {}", sum);

    Ok(())
}
