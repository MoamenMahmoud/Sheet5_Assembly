.586
.MODEL FLAT
INCLUDE IO.H
.STACK 4096
.DATA 
prompt1 BYTE " Enter Rectangle Length ",0
Prompt2 BYTE " Enetr Rectangle Width ",0
res BYTE "The Parmeter is: ",0
num1 dword ?
num2 dword ?
sum  dword ?
.CODE
	_MainProc Proc
		input prompt1, num1,40
		atod num1 
		mov num1,eax

		input prompt2,num2,40 
		atod num2
		add eax,num1 
		imul eax,2 
		mov sum,eax 

		dtoa sum,eax  
		output res,sum 
	mov eax,0 
ret 
	_MainProc ENDP
End