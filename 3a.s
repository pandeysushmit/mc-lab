	AREA NUMONES_NUMZEROES,CODE,READONLY
NUMBER RN 1
NUMONES RN 10
NUMZEROES RN 11
ENTRY
	MOV R5,#0x40000000
	LDR NUMBER,=0xB
	MOV NUMONES,#0
	MOV NUMZEROES,#0
LOOP LSRS NUMBER,#1;logical shiftng the number to obtain the 1s and 0s
	ADDCS NUMONES,#1;if lsrs generates the carry then increment numones
	ADDCC NUMZEROES,#1;if lsrs doesnot generates carry then increment numzeroes
	CMP NUMBER,#0;compare the number with 0 so as to stop when it becomes zero
	BNE LOOP
	STR NUMONES,[R5];storing the numones in register
	STR NUMZEROES,[R5,#4];storing the numzeroes in register
STOP B STOP
	END