git clone https://github.com/llvm/llvm-project.git
cd llvm-project
git checkout llvmorg-14.0.0
cd ..
mkdir llvm-build
cd llvm-build/
CC=clang CXX=clang++ cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../llvm-release -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;compiler-rt" -G "Unix Makefiles" ../llvm-project/llvm
make -j4
make install
cd ..
tar cJf llvm-release.tar.xz llvm-release/

# llvm-14.0.0-arm64-apple-darwin.tar.xz
