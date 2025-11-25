# Parameterized Algorithms for Function Merging

## LLVM-11

The current implementation is built on the PLDI 20' artifact of SALSSA ([Artifact](https://figshare.com/articles/code/pldi20salssa/12089217) \& [GitHub Archive](https://github.com/rcorcs/llvm-project/tree/func-merge)) under LLVM v11.1.0.

To install llvm-11, either use the shell script from llvm website (recommended), or directly use apt (if the previous method fails):
```
// use llvm shell script
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 11 all
// use apt-get
sudo apt-get install libllvm-11-ocaml-dev libllvm11 llvm-11 llvm-11-dev llvm-11-doc llvm-11-examples llvm-11-runtime \
clang-11 clang-tools-11 clang-11-doc libclang-common-11-dev libclang-11-dev libclang1-11 clang-format-11 clangd-11 \
libfuzzer-11-dev lldb-11 lld-11 libc++-11-dev libc++abi-11-dev libomp-11-dev -y
```

## SPEC CPU 2017

Set `EXPER` to the path to the experiment directory containing benchmark ISO (`cpu2017-1_0_5.iso`), and set `LLVM_DIR` to the LLVM installation location. For instance, 
```
export EXPER="$PWD/bench"
export LLVM_DIR=/usr/lib/llvm-11/
```

Change directory to benchmark folder, then mount the ISO file as below.
```
cd $EXPER
mkdir mnt
sudo mount -t iso9660 -o ro,exec,loop cpu2017-1_0_5.iso $EXPER/mnt
$EXPER/mnt/install.sh
sudo umount $EXPER/mnt
rm -r mnt
```

Now the benchmark is inside folder `spec2017/`. Make sure that the configuration file `myexpcfg.cfg` and the folder `scripts/` are at current location. To profile and compile the benchmark, copy the script inside the folder and run it as below.
```
cp scripts/*.sh spec2017
cd spec2017
. shrc
bash compile_IR.sh $LLVM_DIR "-O0" 500.perlbench_r 502.gcc_r 505.mcf_r 508.namd_r 510.parest_r 511.povray_r 519.lbm_r 520.omnetpp_r 523.xalancbmk_r 525.x264_r 526.blender_r 531.deepsjeng_r 538.imagick_r 541.leela_r 544.nab_r 557.xz_r
```

The script will first profile the sub-benchmarks and then compile them into LLVM IR. The compiled `.ll` files are now under `bench/-O0/` folder.

For vanilla build, use command
```
bash build.sh $LLVM_DIR "-O0" 500.perlbench_r 502.gcc_r 505.mcf_r 508.namd_r 510.parest_r 511.povray_r 519.lbm_r 520.omnetpp_r 523.xalancbmk_r 525.x264_r 526.blender_r 531.deepsjeng_r 538.imagick_r 541.leela_r 544.nab_r 557.xz_r
```

## Function Merging Passes

The branch alignment merger has been registered as a pass. To compile the pass, suppose LLVM is installed under `/usr/lib/llvm-11` directory, 
```
cd algos
mkdir -p build
cd build
cmake ../src -DLLVM_ROOT="/usr/lib/llvm-11"
// alternatively, may use '-DLLVM_DIR:PATH' flag
cmake ../src -DLLVM_DIR:PATH="/usr/lib/llvm-11/lib/cmake/llvm"
make
cd ..
```
and three `.so` objects will be generated under `algos/build/lib/` folder.

Set `SALSSA_PATH`, and `LCS_PATH` to the path of the shared objects, e.g., 
```
export SALSSA_PATH="$PWD/build/lib/libSALSSA_FM.so"
export LCS_PATH="$PWD/build/lib/libLCS_FM.so
```

To generate the IR for a program, use clang-11 to compile
```
clang++-11 -O0 -emit-llvm -S samples/branch.cpp -o samples/branch.ll
```

To run the legacy passes under the `algos` directory, use commands
```
opt-11 --enable-new-pm=false -load $SALSSA_PATH -salssa-fm -S samples/branch.ll
opt-11 --enable-new-pm=false -load $LCS_PATH -lcs-fm -S samples/branch.ll
```
where `-salssa-fm` calls the original SALSSA merger, `-lcs-fm` calls the merger with optimal branch order given by DP.

## Compile SPEC with Funciton Merging Passes

To run the optimization pass and link the IRs, use the following script.
```
cd ..
export EXPER="$PWD/bench/"
export LLVM_DIR=/usr/lib/llvm-11/
export SALSSA_PATH="$PWD/algos/build/lib/libSALSSA_FM.so"
export LCS_PATH="$PWD/algos/build/lib/libLCS_FM.so"

cd $EXPER/spec2017
bash compile_opt_link.sh $LLVM_DIR "-O0" $SALSSA_PATH "-salssa-fm" 500.perlbench_r
```

## Clang Suite with Our Function Merging Passes

Under `algos/pldi20ae` folder, use command `sh build-all.sh X` to build the clang suite (replace `X` with the number of threads allowed, preferably 8~16). The clang suite with modified function merging passes will be built under `pldi20ae/build/`.

The modified clang suite has different flags that supports four types of function merging actions: no function merging (baseline), FMSA, SALSSA, and LCS. The details of the different flags and built options are specified in `bench/Makefile.lto.default`.

To run the experiments, use shell script `bench/run-all.sh`. The results will be generate under `bench/results/`.
