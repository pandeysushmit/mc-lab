	area sum_of_digits,code,readonly
entry
			ldr r0,=324579;input
			mov r1,#0;quotient
			mov r2,#10;number 10 to divide
			mov r3,#0;stores result
backk	cmp r0,r2;comparing the input with the number 10
			bcc backk1
			sub r0,r2
			add r1,r1,#1
			b backk
backk1	add r3,r3,r0
			mov r0,r1
			cmp r1,#0
			beq go
			mov r1,#0
			b backk
go			b go
			end