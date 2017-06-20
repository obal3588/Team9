		mov		r0, #7
		b		init
		
start
		
		
fib
		sub		sp, sp, #4
		str		lr, [sp]
		
case1
		cmp		r0, #0
		bne		case2
		mov		r0, #0
		ldr		r2, [sp]
		add		sp, sp, #4
		mov		pc, r2
		
case2
		cmp		r0, #1
		bne		body
		mov		r0, #1
		add		r4, r4, #1
		ldr		r2, [sp]
		add		sp, sp, #4
		mov		pc, r2
		
body
		sub		sp, sp, #4
		str		r0, [sp]
		sub		r0, r0, #1
		bl		fib
		
		add		r1, r0, #0
		ldr		r0, [sp]
		add		sp, sp, #4
		sub		r0, r0, #2
		bl		fib
		
		add		r0, r0, r1
		ldr		r2, [sp]
		add		sp, sp, #4
		mov		pc, r2
		
init
		bl		fib
		add		r0, r4, #0
		b		exit
		
exit
		b		exit
