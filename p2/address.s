;;; testing the addressing of our wave
;;; (c) drsmith modsoussi

	add	r1, r0, #1	;r1 is 1
	add	r2, r2, r1, lsl #2	;r2 should be 4
	add	r3, r1, r1, lsl r1	;r1 should be 3