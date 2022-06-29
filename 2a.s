	area twoa,code,readonly
entry
			mov r0,#0;count
			mov r1,#0;curr even number
			mov r2,#0;sum after adding the even number currently
backk 		add r1,r1,#2;incrementing the even number by 2 to get the new even number
			add r2,r2,r1;adding the even number to the current sum
			add r0,r0,#1;incrementing the count
			cmp r0,#10; comparing the count to 10
			bne backk
go			b	go
			end
			
			