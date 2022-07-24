set(SOURCES
    "boot.S"
    "init.cpp"
)

add_executable(kernel ${SOURCES})

# Need to create toolchain
target_compile_options(kernel PRIVATE -m32)
target_link_options(kernel PRIVATE LINKER:-T ${CMAKE_CURRENT_SOURCE_DIR}/linker.ld -nostdlib -m32)
