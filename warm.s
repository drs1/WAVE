;;; example program, reads number writes it out
	swi	#SysGetNum
	swi	#SysPutNum
	mov	r0, #10
	swi	#SysPutChar
	swi	#SysHalt