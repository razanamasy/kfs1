section .text
	global _start
 	_start:
		jmp $ ;current meory address but it's not 512 bytes need to add bunch of zeros
		times 510-($-$$) db 0 ;repeat action "db 0 --> define byte 0 sur un octet (voir cours assembleur)" n times --> 510-($-$$) times -> $$ = debut current section and $ = current memory address. $-$$ = size of previous code
		db 0x55, 0xaa ;les deux derniere valeur necessaires au boot sector pour etre considere comme bootcode
