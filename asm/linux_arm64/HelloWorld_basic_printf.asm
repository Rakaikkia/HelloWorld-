.data
    msg:    .ascii "Hello, World!\n"
.text
    .global main
main:
    adrp x0, msg
    add x0, x0, :lo12:msg
    bl printf
    mov x8, #93
    mov x0, #0
    svc #0
