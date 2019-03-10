stack0	segment	stack		
	dw 40h dup(0)
stack0	ends

data	segment
	maxlen		db	11
				db	?
	bString		db	10	dup(?)

data	ends


code	segment
	assume	cs:code,ds:data,ss:stack0;
main:   mov ax,	data
        mov ds,	ax
        
        mov dx, offset maxlen
		mov ah,	0ah
		int	21h
        
        mov ah,	4ch
		int 21h
code	ends
	end	main