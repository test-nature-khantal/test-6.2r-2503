section .data                ; This section contains data
    message db 'Nature, Nature!', 0  ; Define a string (null-terminated)

section .text                ; This section contains executable code
    global _start            ; Declare the entry point (for Linux)

_start:                      ; Entry point of the program
    mov edx, 13              ; Set edx to the string length (13 bytes)
    mov ecx, message         ; Set ecx to the address of the string
    mov ebx, 1               ; Set ebx to 1 (stdout file descriptor)
    mov eax, 4               ; Set eax to 4 (sys_write system call)
    int 0x80                 ; Make the system call to print the string

    mov eax, 1               ; Set eax to 1 (sys_exit system call)
    xor ebx, ebx             ; Set ebx to 0 (exit status)
    int 0x80                 ; Make the system call to exit
