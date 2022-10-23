.text
.align 4

/* Multiboot */
.long 0x1badb002
.long 0x0
.long -0x1badb002

.global start
start:
    /* Create stack */
    movl $(stack + 0x1000), %esp

    /* Move into C++ */
    call init
    jmp .


.bss
.comm stack, 0x1000
