cmake_minimum_required(VERSION 3.13.4)
project(llvm-function-merging)

# To find newest version packages by default: 
# SET(CMAKE_FIND_PACKAGE_SORT_ORDER NATURAL)
# SET(CMAKE_FIND_PACKAGE_SORT_DIRECTION DEC)

# To set specific llvm version, use either of the following flags:
# -DLLVM_ROOT="/usr/lib/llvm-XX"
# -DLLVM_DIR:PATH="/usr/lib/llvm-XX/lib/cmake/llvm"

SET(LLVM_ROOT "/usr/lib/llvm-11")  # Change this to your llvm-11 root directory
# Uncomment the following to include CPLEX libraries
# SET(CPLEX_ROOT_DIR "/opt/ibm/ILOG/CPLEX_Studio2211")  # Change this to your CPLEX root directory
# SET(CPLEX_SYSTEM_NAME "x86-64_linux")  # Change this to your system processor & name recognized by CPLEX

find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# Uncomment the following to include CPLEX libraries
# find_path(CPLEX_INCLUDE_DIR NAMES ilcplex/cplex.h PATHS ${CPLEX_ROOT_DIR}/cplex/include)
# find_library(CPLEX_LIBRARY NAMES cplex PATHS ${CPLEX_ROOT_DIR}/cplex/lib/${CPLEX_SYSTEM_NAME}/static_pic)
# find_library(CONCERT_LIBRARY NAMES concert PATHS ${CPLEX_ROOT_DIR}/concert/lib/${CPLEX_SYSTEM_NAME}/static_pic)
# find_library(ILOCPLEX_LIBRARY NAMES ilocplex PATHS ${CPLEX_ROOT_DIR}/cplex/lib/${CPLEX_SYSTEM_NAME}/static_pic)

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

set(LLVM_NEXT_FM_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR})
set(LLVM_NEXT_FM_PLUGIN_PATH "${CMAKE_BINARY_DIR}/lib/LLVMFM${CMAKE_SHARED_LIBRARY_SUFFIX}")

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})

# Uncomment the following to include CPLEX libraries
# include_directories(SYSTEM "${CPLEX_ROOT_DIR}/cplex/include")
# include_directories(SYSTEM "${CPLEX_ROOT_DIR}/concert/include")

add_compile_definitions(LLVM_FM)
include_directories(include)
add_subdirectory(lib)
