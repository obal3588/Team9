 .global fib

fib:
		mov r4, #0
		add r4, r0, #0
		mov r0, #0

iteration:
		sub		sp, sp, #4
		str		lr, [sp]

case1:
		cmp		r4, #0
		bne		case2
		mov		r4, #0
		ldr		r2, [sp]
		add		sp, sp, #4
		mov		pc, r2

case2:
		cmp		r4, #1
		bne		body
		mov		r4, #1
		add		r0, r0, #1
		ldr		r2, [sp]
		add		sp, sp, #4
		mov		pc, r2

body:
		sub		sp, sp, #4
		str		r4, [sp]
		sub		r4, r4, #1
		bl		iteration

		add		r1, r4, #0
		ldr		r4, [sp]
		add		sp, sp, #4
		sub		r4, r4, #2
		bl		iteration

		add		r4, r4, r1
		ldr		r2, [sp]
		add		sp, sp, #4
		mov		pc, r2
		mov		pc, r2
