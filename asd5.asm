.586
.MODEL FLAT 
INCLUDE IO.H
.STACK 4096
.DATA
prompt1 BYTE "Enter Grade 1 :",0
prompt2 BYTE "Enter Grade 2 :",0
prompt3 BYTE "Enter Grade 3 :",0
prompt4 BYTE "Enter Grade 4 :",0

 res BYTE "The sum is :",0
  result BYTE 11 DUP(?),0
res1 BYTE "The avrage is : ",0

 g1 dword ?
 g2 dword ?
 g3 dword ?
 g4 dword ?
 s dword 4
 avg dword ?
.CODE 
	_MainProc Proc 
	input prompt1 ,g1,20 
	atod g1  
	mov g1,eax 

	input prompt2 ,g2, 20 
	atod g2 
	add eax,g1 
	mov g1,eax

	input prompt3 ,g3, 20 
	atod g3 
    add eax,g1 
	mov g1,eax

	input prompt4 ,g4,20
	atod g4 
	add eax,g1 
	mov g1,eax

	dtoa result ,eax
	output res ,result
		
    mov edx,0		
	mov eax,g1	  
	mov ecx,s	
	div ecx	
		
	dtoa result ,eax
	output res1 ,result	
	mov eax,0 
     ret
	_MainProc ENDP
End 