
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
prompt1 BYTE "Enter grade1",0
prompt2 BYTE "Enter weight1",0
prompt3 BYTE "Enter grade2",0
prompt4 BYTE "Enter weight2",0
prompt5 BYTE "Enter grade3",0
prompt6 BYTE "Enter weight3",0
prompt7 BYTE "Enter grade4",0
prompt8 BYTE "Enter weight4",0
inp BYTE 40 DUP(?)
weighsum BYTE "The weightedsum is",0
sumofw BYTE "The sumofweight is",0
aver BYTE "The average is ",0
weightofsum BYTE 11 DUP(?),0
sum BYTE 11 DUP(?),0
average BYTE 11 DUP(?),0
num1 dword ?
num2 dword ?
num3 dword ?
num4 dword ?
num5 dword ?
num6 dword ?
.CODE
MainProc Proc
  input prompt1,inp,40
  atod inp
  mov num1,eax
  input prompt2,inp,40
  atod inp
  mov num5,eax
  mul num1
  mov num1,eax
  input prompt3,inp,40
  atod inp
  mov num2,eax
  input prompt4,inp,40
  atod inp
  add num5,eax
  mul num2
  mov num2,eax
  input prompt5,inp,40
  atod inp
  mov num3,eax
  input prompt6,inp,40
  atod inp
  add num5,eax
  mul num3
  mov num3,eax
  input prompt7,inp,40
  atod inp
  mov num4,eax
  input prompt8,inp,40
  atod inp
  add num5,eax
  mul num4
  add eax,num3
  add eax,num2
  add eax,num1
  mov num6,eax
  dtoa weightofsum,num6
  dtoa sum,num5
  mov eax,num6
  div num5
  dtoa average,eax
  output weighsum,weightofsum
  output sumofw,sum
  output aver,average
mov eax,0
ret
MainProc ENDP
END