	area npr,code,readonly
entry
			mov r0,#7;n
			mov r1,#3;r
			sub r1,r0,r1;n-r
			mov r2,#1
			mov r3,#1
backk	mul r2,r0,r3;7*1
			mov r3,r2;moving the product as the new input
			sub r0,#1;decreasing n by 1
			cmp r0,r1;comparing n by r
			beq go
			b backk
go			b go
			end