;;; emulator for warm - phase 2
;;; (c) d.r.smith modsoussi bijan
zeros:
	.data 	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	
	.requ	wpc, r15
	.requ	rega, r14
	lea	WARM,r0
	trap	$SysOverlay
	mov	$0,wpc
	lea	zeros,r10 
;;; snag the opcode
	mov	1(r10), r5
	trap	$SysPutNum
	mov	WARM(wpc), r1
	mov	r1, r2
	shl	$5,r2
	shr	$26,r2
;;; we have the opcode in r2, now what do we do with it?
loop:	mov	WARM(r10),r0
	cmp	$0x06800000,r0
	je	found
	add	$1,r10
	jmp	loop

found:	mov	r10, r0
	trap	$SysPutNum
	mov	$'\n, r0
	trap	$SysPutChar
	trap	$SysHalt
WARM:	 
