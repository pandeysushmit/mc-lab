	area factorial,code,readonly
entry
		mov r0,#10;this is the number whose factorial is to be found
		mov r1,#1;this is the result
loop	mul r1,r0,r1;multiplying the number by 1 first
		subs r0,r0,#1;decreasing the number by 1
		bne loop
stop	b stop
		end