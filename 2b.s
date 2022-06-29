	area twob,code,readonly
entry
		mov r0,#2;initial term
		mov r1,#3;common ratio
		mov r2,#1;count
		mov r3,#0x40000000
loop	mul r5,r0,r1;multiplying to obtain new term
		mov r0,r5;important step
		str r0,[r3],#4
		add r2,r2,#1;incrementing the count
		cmp r2,#6;comparing the count to 6
		bne loop
go 	b 	go
		end