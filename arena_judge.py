import subprocess
import time
import json
import os
import statistics
import sys

# Configuration
ROUNDS = 5
INPUT_SIZE = 1_000_000  # Data size to process
DATA_FILE = "arena_data.bin"

def generate_test_data():
    """Generates a massive binary file for the agents to process."""
    print(f"⚖️ JUDGE: Generating {INPUT_SIZE} random integers for the challenge...")
    if not os.path.exists(DATA_FILE):
        with open(DATA_FILE, "wb") as f:
            f.write(os.urandom(INPUT_SIZE * 4)) # 4 bytes per int
    print("⚖️ JUDGE: Data ready.")

def compile_agents():
    """Compiles both teams' code."""
    results = {}

    # Team Rustacean (Rust)
    if os.path.exists("team_rust/Cargo.toml"):
        print("🦀 Compiling Team Rustacean...")
        start = time.time()
        p = subprocess.run(["cargo", "build", "--release", "--manifest-path", "team_rust/Cargo.toml"], capture_output=True)
        if p.returncode != 0:
            print(f"❌ Rust Compilation Failed:\n{p.stderr.decode()}")
            results['rust'] = False
        else:
            print(f"✅ Rust Compiled in {time.time() - start:.2f}s")
            results['rust'] = True
            # Generate assembly for forensics
            subprocess.run(["cargo", "rustc", "--release", "--manifest-path", "team_rust/Cargo.toml", "--", "--emit=asm"],
                         capture_output=True)
    else:
        print("⚠️ Team Rustacean code not found.")
        results['rust'] = False

    # Team SpeedDemon (C++)
    if os.path.exists("team_cpp/main.cpp"):
        print("⚡ Compiling Team SpeedDemon...")
        start = time.time()
        # Use best found configuration: clang++ with -O3
        compiler = "clang++"
        cmd = [compiler, "-O3", "-march=native", "-pthread", "team_cpp/main.cpp", "-o", "team_cpp/speed_demon"]
        p = subprocess.run(cmd, capture_output=True)

        if p.returncode != 0:
            # Fallback to g++
            compiler = "g++"
            cmd = ["g++", "-O3", "-march=native", "-pthread", "team_cpp/main.cpp", "-o", "team_cpp/speed_demon"]
            p = subprocess.run(cmd, capture_output=True)

        if p.returncode != 0:
            print(f"❌ C++ Compilation Failed:\n{p.stderr.decode()}")
            results['cpp'] = False
        else:
            print(f"✅ C++ Compiled with {compiler} in {time.time() - start:.2f}s")
            results['cpp'] = True
            # Generate assembly for forensics
            subprocess.run([compiler, "-O3", "-march=native", "-pthread", "-S", "-fverbose-asm",
                          "team_cpp/main.cpp", "-o", "team_cpp/main.s"], capture_output=True)
    else:
        print("⚠️ Team SpeedDemon code not found.")
        results['cpp'] = False

    return results

def run_benchmark(executable_path):
    """Runs the executable and captures stdout for timing."""
    times = []
    try:
        for _ in range(ROUNDS):
            start = time.time()
            subprocess.run([executable_path, DATA_FILE], check=True, stdout=subprocess.DEVNULL)
            end = time.time()
            times.append((end - start) * 1000) # ms
        return statistics.median(times)
    except Exception as e:
        print(f"Error running {executable_path}: {e}")
        return float('inf')

def main():
    generate_test_data()
    status = compile_agents()
    
    scores = {}
    
    if status['rust']:
        print("\n🏁 Running Team Rustacean...")
        # Assuming binary location
        bin_path = "./team_rust/target/release/team_rust" 
        scores['rust'] = run_benchmark(bin_path)
        print(f"🦀 Rust Median Time: {scores['rust']:.4f} ms")
        
    if status['cpp']:
        print("\n🏁 Running Team SpeedDemon...")
        bin_path = "./team_cpp/speed_demon"
        scores['cpp'] = run_benchmark(bin_path)
        print(f"⚡ C++ Median Time:  {scores['cpp']:.4f} ms")

    # The Verdict
    print("\n" + "="*30)
    if 'rust' in scores and 'cpp' in scores:
        diff = abs(scores['rust'] - scores['cpp'])
        winner = "Rustacean" if scores['rust'] < scores['cpp'] else "SpeedDemon"
        loser = "SpeedDemon" if winner == "Rustacean" else "Rustacean"
        winner_key = "rust" if winner == "Rustacean" else "cpp"

        print(f"🏆 WINNER: Team {winner}")
        print(f"💀 LOSER:  Team {loser} (lagging by {diff:.4f} ms)")
        print(f"\n📢 JUDGE ORDER: Team {loser}, rewrite your core algorithm to beat {scores[winner_key]:.4f} ms. You have 1 iteration.")

        # Write verdict to file for Claude to read
        with open("verdict.txt", "w") as f:
            f.write(f"WINNER:{winner}\nLOSER:{loser}\nTARGET_MS:{scores[winner_key]}\n")

        # Generate execution profile (assembly of loser)
        with open("execution_profile.txt", "w") as f:
            f.write(f"=== ASSEMBLY FORENSICS: Team {loser} ===\n")
            f.write(f"Performance Gap: {diff:.4f} ms\n")
            f.write(f"Target to Beat: {scores[winner_key]:.4f} ms\n\n")

            if loser == "SpeedDemon":
                asm_path = "team_cpp/main.s"
                if os.path.exists(asm_path):
                    with open(asm_path, "r") as asm:
                        f.write(asm.read())
                else:
                    f.write("Assembly not generated\n")
            else:  # Rust loser
                # Find rust assembly in target/release/deps
                asm_dir = "team_rust/target/release/deps"
                if os.path.exists(asm_dir):
                    asm_files = [f for f in os.listdir(asm_dir) if f.endswith('.s')]
                    if asm_files:
                        with open(os.path.join(asm_dir, asm_files[0]), "r") as asm:
                            f.write(asm.read())
                    else:
                        f.write("Assembly not generated\n")
                else:
                    f.write("Assembly directory not found\n")
            
    else:
        print("❌ Match cancelled due to compilation errors.")

if __name__ == "__main__":
    main()
