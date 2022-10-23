ENTRY(start)

PHDRS
{
    text PT_LOAD;
    rodata PT_LOAD;
    data PT_LOAD;
    bss PT_LOAD;
}

SECTIONS {
    . = 0x00100000;

    .text ALIGN(4K) :
    {
        *(.text*)
    } : text

	.rodata ALIGN(4K) :
    {
        *(.rodata*)
    } : data

	.data ALIGN(4K) :
    {
        *(.data*)
    } : data

    .bss ALIGN(4K) :
    {
        *(COMMON)
        *(.bss)
    } : bss
}
