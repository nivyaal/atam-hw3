.global hook

.section .data
msg: .ascii "This code was hacked by Noa Killa's gang\n"
endmsg:

.section .text



hook: 
  lea _start,%rax
  add $0x1e,%rax
  movb $0xc3,(%rax)
  call _start
	mov $1, %rdi		  #stdout
	mov $msg , %rsi		  
	mov $41, %rdx		# msg width
	mov $1, %rax
	syscall
  
  lea _start,%rax
  add $0x1d,%rax
  jmp *%rax
  movq $60, %rax
  movq $0, %rdi
  syscall

	
