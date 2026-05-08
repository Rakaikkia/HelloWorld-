section .data
            msg db "Hello, world!", 10, 13, 0
section .bss
section .text
            global main
print_string:
push rbp
mov rbp, rsp
push r12
            xor rdx, rdx
            mov r12, rdi
.lengthloop:
            cmp byte [r12], 0
            je .lengthfound
            inc rdx
            inc r12
            jmp .lengthloop
.lengthfound:
            cmp rdx, 0
            je .done
            mov rsi, rdi
            mov rax, 1
            mov rdi, 1
            syscall
.done:
pop r12
leave
ret

main:
            mov rdi, msg
            call print_string
            mov rax, 60
            xor rdi, rdi
            syscall
section .note.GNU-stack noalloc noexec nowrite progbits
