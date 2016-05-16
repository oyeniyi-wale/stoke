  .text
  .globl __strsep_2c
  .type __strsep_2c, @function

#! file-offset 0x9d4f0
#! rip-offset  0x9d4f0
#! capacity    96 bytes

# Text                  #  Line  RIP      Bytes  Opcode             
.__strsep_2c:           #        0x9d4f0  0      OPC=<label>        
  movq (%rdi), %rax     #  1     0x9d4f0  3      OPC=movq_r64_m64   
  movl %esi, %r8d       #  2     0x9d4f3  3      OPC=movl_r32_r32   
  movl %edx, %r9d       #  3     0x9d4f6  3      OPC=movl_r32_r32   
  testq %rax, %rax      #  4     0x9d4f9  3      OPC=testq_r64_r64  
  je .L_9d532           #  5     0x9d4fc  2      OPC=je_label       
  movzbl (%rax), %ecx   #  6     0x9d4fe  3      OPC=movzbl_r32_m8  
  testb %cl, %cl        #  7     0x9d501  2      OPC=testb_r8_r8    
  je .L_9d52d           #  8     0x9d503  2      OPC=je_label       
  cmpb %sil, %cl        #  9     0x9d505  3      OPC=cmpb_r8_r8     
  je .L_9d534           #  10    0x9d508  2      OPC=je_label       
  cmpb %dl, %cl         #  11    0x9d50a  2      OPC=cmpb_r8_r8     
  je .L_9d534           #  12    0x9d50c  2      OPC=je_label       
  movq %rax, %rcx       #  13    0x9d50e  3      OPC=movq_r64_r64   
  jmpq .L_9d522         #  14    0x9d511  2      OPC=jmpq_label     
  nop                   #  15    0x9d513  1      OPC=nop            
  nop                   #  16    0x9d514  1      OPC=nop            
  nop                   #  17    0x9d515  1      OPC=nop            
  nop                   #  18    0x9d516  1      OPC=nop            
  nop                   #  19    0x9d517  1      OPC=nop            
.L_9d518:               #        0x9d518  0      OPC=<label>        
  cmpb %r8b, %dl        #  20    0x9d518  3      OPC=cmpb_r8_r8     
  je .L_9d540           #  21    0x9d51b  2      OPC=je_label       
  cmpb %r9b, %dl        #  22    0x9d51d  3      OPC=cmpb_r8_r8     
  je .L_9d540           #  23    0x9d520  2      OPC=je_label       
.L_9d522:               #        0x9d522  0      OPC=<label>        
  addq $0x1, %rcx       #  24    0x9d522  4      OPC=addq_r64_imm8  
  movzbl (%rcx), %edx   #  25    0x9d526  3      OPC=movzbl_r32_m8  
  testb %dl, %dl        #  26    0x9d529  2      OPC=testb_r8_r8    
  jne .L_9d518          #  27    0x9d52b  2      OPC=jne_label      
.L_9d52d:               #        0x9d52d  0      OPC=<label>        
  xorl %edx, %edx       #  28    0x9d52d  2      OPC=xorl_r32_r32   
  movq %rdx, (%rdi)     #  29    0x9d52f  3      OPC=movq_m64_r64   
.L_9d532:               #        0x9d532  0      OPC=<label>        
  retq                  #  30    0x9d532  1      OPC=retq           
  nop                   #  31    0x9d533  1      OPC=nop            
.L_9d534:               #        0x9d534  0      OPC=<label>        
  movq %rax, %rcx       #  32    0x9d534  3      OPC=movq_r64_r64   
  nop                   #  33    0x9d537  1      OPC=nop            
  nop                   #  34    0x9d538  1      OPC=nop            
  nop                   #  35    0x9d539  1      OPC=nop            
  nop                   #  36    0x9d53a  1      OPC=nop            
  nop                   #  37    0x9d53b  1      OPC=nop            
  nop                   #  38    0x9d53c  1      OPC=nop            
  nop                   #  39    0x9d53d  1      OPC=nop            
  nop                   #  40    0x9d53e  1      OPC=nop            
  nop                   #  41    0x9d53f  1      OPC=nop            
.L_9d540:               #        0x9d540  0      OPC=<label>        
  leaq 0x1(%rcx), %rdx  #  42    0x9d540  4      OPC=leaq_r64_m16   
  movb $0x0, (%rcx)     #  43    0x9d544  3      OPC=movb_m8_imm8   
  movq %rdx, (%rdi)     #  44    0x9d547  3      OPC=movq_m64_r64   
  retq                  #  45    0x9d54a  1      OPC=retq           
  nop                   #  46    0x9d54b  1      OPC=nop            
  nop                   #  47    0x9d54c  1      OPC=nop            
  nop                   #  48    0x9d54d  1      OPC=nop            
  nop                   #  49    0x9d54e  1      OPC=nop            
  nop                   #  50    0x9d54f  1      OPC=nop            
                                                                    
.size __strsep_2c, .-__strsep_2c
