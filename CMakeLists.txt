cmake_minimum_required(VERSION 3.13)

project(Cashew)

set(CMAKE_CXX_COMPILER clang++)

enable_language(ASM)

add_subdirectory(kernel)
