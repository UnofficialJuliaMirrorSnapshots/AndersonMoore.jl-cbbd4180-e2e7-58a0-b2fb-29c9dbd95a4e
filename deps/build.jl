using Compat
#import BinDeps.library_dependency
#import BinDeps.BuildProcess
#import BinDeps.Sources
#import BinDeps.URI
using BinDeps
@BinDeps.setup
print("before wrapper")
using CMakeWrapper

print("after wrapper")
AMAC=library_dependency("libAMAC",aliases=["libAMAC","libAMAC.so","libAMAC.dylib","libAMAC.dll"])

print("after AMAC")

print(pwd())
print("\nafter pwd")
run(`$cmake_executable ./CMakeLists.txt`)
print("\nafter read CMakelists.txt")
run(`$cmake_executable --build .`)
print("\nafter build")

                       
                       
                       
                       
