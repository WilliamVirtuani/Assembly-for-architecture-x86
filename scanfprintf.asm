global main
extern printf,scanf,exit

section.data
x: dd 0
y: dd 0
z: dd 0


section .rodata
msg1: db 'primo numero:',10,0
msg2: db 'secondo numero:',10,0
formato: db '%d'



section.text
main:
push msg1
call printf
push x
push formato
call scanf
push msg2
call printf
push y
push formato
call scanf
mov eax,0
add eax, [x]
add eax, [y]
mov [z], eax
push dword [z]
push formato
call printf

push 0
call exit
