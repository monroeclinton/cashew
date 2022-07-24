.global start

.long 0x1badb002
.long 0x0
.long -0x1badb002

start:
    call init
    jmp .
