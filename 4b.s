	area fibonacci,code,readonly
entry
			mov r0,#0;this stores the sum
			mov r1,#1;this is the initial number
			mov r2,#0;this holds the count
			mov r3,#0x40000000
backk		add r5,r0,r1;adding the two series terms
			mov r0,r1;this moves the sum to be the previous input 
			mov r1,r5
			mov r6,r5
			str r6,[r3],#4;storing the terms in register
			add r2,r2,#1;incrementing the count
			cmp r2,#6;comparing the count to the desired number of terms
			bne backk
go			b go
			end