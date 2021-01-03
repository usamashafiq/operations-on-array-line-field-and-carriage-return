 .model small
.stack 100h
.data
Array db ‘1’,’2’,’3’,’4’
.code
Main proc
	Mov ax,@data
	Mov ds,ax
	Mov si,offset array
Mov dx,[si]
mov ah,2
int 21h
Mov dx,[si+1]
mov ah,2
int 21h
Mov dx,[si+2]
mov ah,2
int 21h
Mov dx,[si+3]
mov ah,2
int 21h
mov ah, 4ch
int 21h
	
main endp
end main
