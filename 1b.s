	area oneb,code,readonly
entry
		mov r5,#0;sum
		mov r2,#1;initial number
loop	bl squ
		add r5,r5,r3;adding the number to obtain the sum and store it in the sum
		add r2,r2,#1;incrementing the integer
		cmp r2,#6;comparing the integer with 6
		bne loop
go 	b 	go
squ	mul r3,r2,r2;obtaining the square of the integer
		mov pc,lr
		end