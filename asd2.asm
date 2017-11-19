.586
.MODEL FLAT
INCLUDE IO.H
.STACK 4096
.DATA
	prompt1 BYTE "Enter x...",0
	prompt2 BYTE "Enter y...",0
	prompt3 BYTE "Enter z...",0
	 result BYTE "The value is ",0

	 num1 dword ?
	 num2 dword ?
	 num3 dword ?
	 sum dword ?
.CODE
	_MainProc proc
	input prompt1,num1,20
	atod num1
	mov num1,eax

	input prompt2,num2,20
	atod num2 
	add eax,num1
	imul eax,2
	mov ebx,eax

	input prompt3,num3,20
	atod num3 
	add eax,ebx
	mov sum,eax

	dtoa sum  ,eax
	output result,sum
	 	mov eax,0
 	ret 
  _MainProc ENDP
END
