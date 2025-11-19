use memmap2::MmapMut;
use std::env;
use std::fs::File;
use std::io;

// Radix sort implementation - O(n) for 32-bit integers
fn radix_sort(arr: &mut [u32]) {
    let n = arr.len();
    let mut temp = vec![0u32; n];

    // Process 8 bits at a time (4 passes for 32 bits)
    for shift in (0..32).step_by(8) {
        let mut count = [0usize; 256];

        // Count occurrences
        for &val in arr.iter() {
            let byte = ((val >> shift) & 0xFF) as usize;
            count[byte] += 1;
        }

        // Compute prefix sum
        for i in 1..256 {
            count[i] += count[i - 1];
        }

        // Build output array (go backwards for stability)
        for &val in arr.iter().rev() {
            let byte = ((val >> shift) & 0xFF) as usize;
            count[byte] -= 1;
            temp[count[byte]] = val;
        }

        // Copy back
        arr.copy_from_slice(&temp);
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

    // Sort using radix sort (O(n) for 32-bit integers)
    radix_sort(numbers);

    // Calculate sum of top 50%
    let top_half_start = num_integers / 2;
    let sum: u64 = numbers[top_half_start..].iter().map(|&x| x as u64).sum();

    println!("Sum of top 50%: {}", sum);

    Ok(())
}
