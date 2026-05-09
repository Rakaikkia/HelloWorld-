; HelloWorld_main_Syscall.asm

section .data
            msg         db "Hello World!", 10, 13, 0
            msg_len     equ $ - msg - 1

            error_msg   db "ERROR: write failed", 10, 13, 0
            error_len   equ $ - error_msg - 1

section .text
            global main

; -------------------------------------------------------------------
; void hello_world(void)
;           Writes "Hello World!" to stdout.
;           Returns: rax = number of bytes written (>=0) on success,
;               rax = negative errno on error.
; -------------------------------------------------------------------
hello_world:
            mov rax, 1              ; sys_write
            mov rdi, 1              ; stdout
            mov rsi, msg
            mov rdx, msg_len
            syscall
            ret

; -------------------------------------------------------------------
; int main(void)
;           Calls hello_world, checks for error, prints error to stderr if needed,
;               and returns exit code 0 (success) or 1 (failure).
; -------------------------------------------------------------------
main:
            call hello_world
            test rax, rax           ; rax < 0 -> error
            js  .error

            xor edi, edi            ; exit code 0
            jmp .exit

.error:
            ; Print error message to stderr
            mov rax, 1
            mov rdi, 2              ; stderr
            mov rsi, error_msg
            mov rdx, error_len
            syscall

            mov edi, 1              ; exit code 1

.exit:
            mov rax, 60             ; sys_exit
            syscall

section .note.GNU-stack noalloc noexec nowrite progbits

