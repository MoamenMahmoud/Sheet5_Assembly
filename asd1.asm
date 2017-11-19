.586
.MODEL FLAT
INCLUDE IO.h
.STACK 4096
.DATA
	prompt1 BYTE "Enter x ",0
	prompt2 BYTE "Enter y ",0
	prompt3 BYTE "Enter z ",0
	result Byte  "The value is ",0

	num1 dword ?
	num2 dword ?
	num3 dword ?
	sum dword ?
	temp dword ?

.CODE
	_MainProc Proc

	input prompt1,num1,40
	atod num1
	mov num1,eax

	input prompt2,num2,40
	atod num2
	add eax,num1
	mov sum,eax

	input prompt3,num3,40
	atod num3
	imul eax,2

	mov temp,eax
	mov eax ,sum
	sub eax ,temp
	inc eax
	neg eax
	dtoa sum  ,eax
	output result ,sum

  	mov eax,0
 	ret 
  _MainProc ENDP
END
