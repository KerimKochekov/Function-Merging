if [ -z "$1" ]; then
NJOBS=$(nproc)
else
NJOBS=$1
fi
DIR=$(dirname $0)
cd ${DIR}




mkdir -p build
cd build
cmake -DLLVM_ENABLE_PROJECTS='clang;compiler-rt' -DCMAKE_BUILD_TYPE="Release" -DLLVM_ENABLE_ASSERTIONS=On ../llvm-project/llvm -DCMAKE_EXPORT_COMPILE_COMMANDS=1
# cmake -DLLVM_ENABLE_PROJECTS='clang;compiler-rt' -DCMAKE_BUILD_TYPE="Debug" -DLLVM_ENABLE_ASSERTIONS=On  -DCMAKE_EXPORT_COMPILE_COMMANDS=1 $path ../llvm-project/llvm

# use this with first build
# make clang opt llvm-link -j${NJOBS}
# use this for subsequent builds
make opt -j${NJOBS}

