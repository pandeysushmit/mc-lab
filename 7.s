	area ncr,code,readonly
entry
			mov r0,#9;n
			mov r1,#2;r
			mov r7,r1;r stored now in r7
			sub r1,r0,r1;n-r stored in r1
			mov r2,#1
			mov r3,#1
			mov r6,#1
			mov r8,#0
backk	mul r2,r0,r3;dividend
			mov r3,r2
			sub r0,#1
			cmp r0,r1;comparing n by n-r
			beq mult
			b backk
mult		mul r5,r7,r6;divisor
			mov r6,r5
			sub r7,#1
			cmp r7,#1
			beq div
			b mult
div			cmp r2,r5
			bcc go
			add r8,#1;quotient is the answer
			sub r2,r5
			b div
go			b go
			end