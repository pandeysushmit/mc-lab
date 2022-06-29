	area ten_avg,code,readonly
start
		ldr r6,=table
		mov r0,#9; storing the count
		ldrh r1,[r6];loading the address of r6 in r1
backk	ldrh r2,[r6,#2]!
		add r1,r1,r2;r1 stores the sum
		subs r0,r0,#1;decreasing the count
		bne backk
		mov r3,#10;this is the divisor
		mov r4,#0;this is the count for repeated substraction
		mov r5,r1;this is the total sum of the numbers
backk1	subs r5,r5,r3;repeated division by 10.also backk1 is loop for division logic through repeated substraction
		addpl r4,r4,#1;if the flag is updated by the above subs then r4 is incremented.it stores the quotient
		bpl backk1;perform the loop till flag is updated
		addmi r5,r5,r3;storing the remainder
go		b go
table	dcw 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000
		end