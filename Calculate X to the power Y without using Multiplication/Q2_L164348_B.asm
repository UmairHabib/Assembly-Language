;Umair Habib
;a program to find power of a number
;Write a code to calculate xy without using multiplication. (Hint: use add and loop(s)) Store the result in a memory label. X and Y both should also be declared as memory labels. (db or dw?)
[org 0x0100]
jmp power0

root:
mov si,[pow]
sub si,1 
mov ax,0
mov cx,[pow]
jmp start 
num :dw 5
pow :dw 5
result :dw 0

inl:
mov ax,0
jmp end

start: 
add ax,[num]
sub cx,1
cmp cx,0
jne start


l1:
sub si,1
mov [num],ax
mov cx,[pow]
jmp inl

end:
cmp si,0
jne start

resultt:
mov [result],ax
mov ax, 0x4c00
int 0x21

power0:
mov si,[pow]
cmp si,0
jne power1
mov ax,1
jmp resultt

power1:
cmp si,1
jne root
mov ax,[num]
jmp resultt