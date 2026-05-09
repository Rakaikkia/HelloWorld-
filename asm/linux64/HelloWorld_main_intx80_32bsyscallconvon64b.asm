; HelloWorld_main_intx80_32bsyscallconvon64b.asm

section .data
            msg         db "Hello World!", 10
            msg_len     equ $ - msg

            error_msg   db "ERROR: write failed", 10
            error_len   equ $ - error_msg

section .text
            global main

; -------------------------------------------------------------------
; void hello_world(void)
;           Returns: eax = number of bytes written (>=0) on success,
;               eax = negative errno on error.
; -------------------------------------------------------------------
hello_world:
            mov eax, 4              ; sys_write (32-bit)
            mov ebx, 1              ; stdout
            mov ecx, msg
            mov edx, msg_len
            int 0x80
            ret

; -------------------------------------------------------------------
; int main(void)
;           Returns 0 on success, 1 on error.
; -------------------------------------------------------------------
main:
            call hello_world
            test eax, eax
            js  .error

            xor ebx, ebx            ; exit code 0 (must be in ebx for int 0x80)
            jmp .exit

.error:
            ; write error message to stderr
            mov eax, 4
            mov ebx, 2              ; stderr
            mov ecx, error_msg
            mov edx, error_len
            int 0x80

            mov ebx, 1              ; exit code 1

.exit:
            mov eax, 1              ; sys_exit (32-bit)
            int 0x80

section .note.GNU-stack noalloc noexec nowrite progbits

