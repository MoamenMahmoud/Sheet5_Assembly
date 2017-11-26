.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
	
		prompt_p BYTE "Enter num of pennies:",0
		prompt_n BYTE "Enter num of nickels",0
		prompt_d BYTE "Enter num of dimes:",0
		prompt_q BYTE "Enter num of quarters: ",0
		inp BYTE  40 DUP (?),0
  
		total_lbl BYTE  "TOTAL CENTS:  ", 0
		TOTALS     Byte    11 DUP (?), 0
		dollars BYTE 11 DUP(?),0
		dollar_lbl BYTE "Total Dollar :",0

		pen 	DWORD ?
			nick	DWORD ?
			dimes	DWORD ?
			quart	DWORD ?
			
			total DWORD ?
			dollar DWORD ?
.CODE

_MainProc PROC
	


		input prompt_p,inp,40
		atod inp
		mov pen,eax
		mov eax,pen
		add total,eax

		input prompt_n,inp,40
		atod inp
		mov nick,eax
		mov eax,nick
		imul eax,5
		add total,eax

		input prompt_d,inp,40
		atod inp
		mov dimes,eax
		mov eax,dimes
		imul eax,10
		add total,eax

		input prompt_q,inp,40
		atod inp
		mov quart,eax
		mov eax,quart
		imul eax,25 
		add total,eax

		mov eax,total
		mov dollar,eax

		dtoa TOTALS,eax
		output total_lbl,TOTALS

		mov edx,0
		mov eax,dollar
		mov ecx,100
		div ecx

		   dtoa    dollars,eax
		   output dollar_lbl,dollars

		mov eax,0
		ret
_MainProc ENDP
END