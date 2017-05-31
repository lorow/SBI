.comm   tape,4000,32
.glob   i
.data   
.align  8
.type   i,@object
.size   i, 8
.i:
.quad   tape
.section   .rodata
.stty:
.string "stty -icanon"
.text 
.globl  main
.type   main, @function
main: 
.cfi_startproc
pushq   %rbp
.cfi_def_cfa_offset 16
.cfi_offset 6, -16
movq    %rsp, %rbp
.cfi_def_cfa_register 6
movl    $.stty, %edi
call    system
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# [
.loops1:
movq    i(%rip), %rax
movzbl  (%rax), %eax
cmpb    0, %al
je  .loope1
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# <
movq    i(%rip), %rax
subq    1, %rax
movq    %rax, i(%rip)
# <
movq    i(%rip), %rax
subq    1, %rax
movq    %rax, i(%rip)
# <
movq    i(%rip), %rax
subq    1, %rax
movq    %rax, i(%rip)
# <
movq    i(%rip), %rax
subq    1, %rax
movq    %rax, i(%rip)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# ]
jmp .loops1
.loope1:
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# <
movq    i(%rip), %rax
subq    1, %rax
movq    %rax, i(%rip)
# <
movq    i(%rip), %rax
subq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# -
movq    i(%rip), %rax
movzbl  (%rax), %edx
subl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# +
movq    i(%rip), %rax
movzbl  (%rax), %edx
addl    1, %edx
movb    %dl, (%rax)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
# >
movq    i(%rip), %rax
addq    1, %rax
movq    %rax, i(%rip)
# .
movq    i(%rip), %rax
movzbl  (%rax), %eax
movsbl  %al, %eax
movl    %eax, %edi
call    putchar
movl    $0, %eax
popq    %rbpe
.cfi_def_cfa 7, 8
ret
.cfi_endproc
