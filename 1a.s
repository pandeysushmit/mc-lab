	AREA ONEA,CODE,READONLY
ENTRY
		MOV R0,#1 ;SUM
		MOV R1,#9 ;COUNT
		MOV R2,#1 ;CURR SUM
BACKK 	ADD R2,R2,#2
		ADD R0,R0,R2
		SUBS R1,R1,#1
		BNE BACKK
GO		B	GO
		END