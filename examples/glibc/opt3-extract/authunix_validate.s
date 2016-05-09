  .text
  .globl authunix_validate
  .type authunix_validate, @function

#! file-offset 0x131bd0
#! rip-offset  0x131bd0
#! capacity    352 bytes

# Text                                #  Line  RIP       Bytes  Opcode              
.authunix_validate:                   #        0x131bd0  0      OPC=<label>         
  cmpl $0x2, (%rsi)                   #  1     0x131bd0  3      OPC=cmpl_m32_imm8   
  je .L_131be0                        #  2     0x131bd3  2      OPC=je_label        
  movl $0x1, %eax                     #  3     0x131bd5  5      OPC=movl_r32_imm32  
  retq                                #  4     0x131bda  1      OPC=retq            
  nop                                 #  5     0x131bdb  1      OPC=nop             
  nop                                 #  6     0x131bdc  1      OPC=nop             
  nop                                 #  7     0x131bdd  1      OPC=nop             
  nop                                 #  8     0x131bde  1      OPC=nop             
  nop                                 #  9     0x131bdf  1      OPC=nop             
.L_131be0:                            #        0x131be0  0      OPC=<label>         
  pushq %r13                          #  10    0x131be0  2      OPC=pushq_r64_1     
  pushq %r12                          #  11    0x131be2  2      OPC=pushq_r64_1     
  movl $0x1, %ecx                     #  12    0x131be4  5      OPC=movl_r32_imm32  
  pushq %rbp                          #  13    0x131be9  1      OPC=pushq_r64_1     
  pushq %rbx                          #  14    0x131bea  1      OPC=pushq_r64_1     
  movq %rdi, %rbx                     #  15    0x131beb  3      OPC=movq_r64_r64    
  subq $0x68, %rsp                    #  16    0x131bee  4      OPC=subq_r64_imm8   
  movq 0x40(%rdi), %rbp               #  17    0x131bf2  4      OPC=movq_r64_m64    
  movl 0x10(%rsi), %edx               #  18    0x131bf6  3      OPC=movl_r32_m32    
  movq 0x8(%rsi), %rsi                #  19    0x131bf9  4      OPC=movq_r64_m64    
  movq %rsp, %rdi                     #  20    0x131bfd  3      OPC=movq_r64_r64    
  movq %rsp, %r12                     #  21    0x131c00  3      OPC=movq_r64_r64    
  callq .xdrmem_create_GLIBC_2_2_5    #  22    0x131c03  5      OPC=callq_label     
  movq 0x20(%rbp), %rdi               #  23    0x131c08  4      OPC=movq_r64_m64    
  testq %rdi, %rdi                    #  24    0x131c0c  3      OPC=testq_r64_r64   
  je .L_131c1e                        #  25    0x131c0f  2      OPC=je_label        
  callq .L_1f8c0                      #  26    0x131c11  5      OPC=callq_label     
  movq $0x0, 0x20(%rbp)               #  27    0x131c16  8      OPC=movq_m64_imm32  
.L_131c1e:                            #        0x131c1e  0      OPC=<label>         
  leaq 0x18(%rbp), %r13               #  28    0x131c1e  4      OPC=leaq_r64_m16    
  movq %r12, %rdi                     #  29    0x131c22  3      OPC=movq_r64_r64    
  movq %r13, %rsi                     #  30    0x131c25  3      OPC=movq_r64_r64    
  callq .xdr_opaque_auth_GLIBC_2_2_5  #  31    0x131c28  5      OPC=callq_label     
  testl %eax, %eax                    #  32    0x131c2d  2      OPC=testl_r32_r32   
  je .L_131cd0                        #  33    0x131c2f  6      OPC=je_label_1      
  movq 0x18(%rbp), %rax               #  34    0x131c35  4      OPC=movq_r64_m64    
  movq %rax, (%rbx)                   #  35    0x131c39  3      OPC=movq_m64_r64    
  movq 0x20(%rbp), %rax               #  36    0x131c3c  4      OPC=movq_r64_m64    
  movq %rax, 0x8(%rbx)                #  37    0x131c40  4      OPC=movq_m64_r64    
  movq 0x28(%rbp), %rax               #  38    0x131c44  4      OPC=movq_r64_m64    
  movq %rax, 0x10(%rbx)               #  39    0x131c48  4      OPC=movq_m64_r64    
.L_131c4c:                            #        0x131c4c  0      OPC=<label>         
  movq 0x40(%rbx), %r12               #  40    0x131c4c  4      OPC=movq_r64_m64    
  leaq 0x30(%rsp), %rbp               #  41    0x131c50  5      OPC=leaq_r64_m16    
  xorl %ecx, %ecx                     #  42    0x131c55  2      OPC=xorl_r32_r32    
  movl $0x190, %edx                   #  43    0x131c57  5      OPC=movl_r32_imm32  
  movq %rbp, %rdi                     #  44    0x131c5c  3      OPC=movq_r64_r64    
  leaq 0x38(%r12), %rsi               #  45    0x131c5f  5      OPC=leaq_r64_m16    
  callq .xdrmem_create_GLIBC_2_2_5    #  46    0x131c64  5      OPC=callq_label     
  movq %rbx, %rsi                     #  47    0x131c69  3      OPC=movq_r64_r64    
  movq %rbp, %rdi                     #  48    0x131c6c  3      OPC=movq_r64_r64    
  callq .xdr_opaque_auth_GLIBC_2_2_5  #  49    0x131c6f  5      OPC=callq_label     
  testl %eax, %eax                    #  50    0x131c74  2      OPC=testl_r32_r32   
  je .L_131c8c                        #  51    0x131c76  2      OPC=je_label        
  leaq 0x18(%rbx), %rsi               #  52    0x131c78  4      OPC=leaq_r64_m16    
  movq %rbp, %rdi                     #  53    0x131c7c  3      OPC=movq_r64_r64    
  callq .xdr_opaque_auth_GLIBC_2_2_5  #  54    0x131c7f  5      OPC=callq_label     
  testl %eax, %eax                    #  55    0x131c84  2      OPC=testl_r32_r32   
  jne .L_131d10                       #  56    0x131c86  6      OPC=jne_label_1     
.L_131c8c:                            #        0x131c8c  0      OPC=<label>         
  leaq 0x58909(%rip), %rdi            #  57    0x131c8c  7      OPC=leaq_r64_m16    
  leaq 0x5ece6(%rip), %rsi            #  58    0x131c93  7      OPC=leaq_r64_m16    
  movl $0x5, %edx                     #  59    0x131c9a  5      OPC=movl_r32_imm32  
  callq .__dcgettext                  #  60    0x131c9f  5      OPC=callq_label     
  movq %rax, %rdi                     #  61    0x131ca4  3      OPC=movq_r64_r64    
  callq .perror                       #  62    0x131ca7  5      OPC=callq_label     
.L_131cac:                            #        0x131cac  0      OPC=<label>         
  movq 0x38(%rsp), %rax               #  63    0x131cac  5      OPC=movq_r64_m64    
  movq 0x38(%rax), %rax               #  64    0x131cb1  4      OPC=movq_r64_m64    
  testq %rax, %rax                    #  65    0x131cb5  3      OPC=testq_r64_r64   
  je .L_131cbf                        #  66    0x131cb8  2      OPC=je_label        
  movq %rbp, %rdi                     #  67    0x131cba  3      OPC=movq_r64_r64    
  callq %rax                          #  68    0x131cbd  2      OPC=callq_r64       
.L_131cbf:                            #        0x131cbf  0      OPC=<label>         
  addq $0x68, %rsp                    #  69    0x131cbf  4      OPC=addq_r64_imm8   
  movl $0x1, %eax                     #  70    0x131cc3  5      OPC=movl_r32_imm32  
  popq %rbx                           #  71    0x131cc8  1      OPC=popq_r64_1      
  popq %rbp                           #  72    0x131cc9  1      OPC=popq_r64_1      
  popq %r12                           #  73    0x131cca  2      OPC=popq_r64_1      
  popq %r13                           #  74    0x131ccc  2      OPC=popq_r64_1      
  retq                                #  75    0x131cce  1      OPC=retq            
  nop                                 #  76    0x131ccf  1      OPC=nop             
.L_131cd0:                            #        0x131cd0  0      OPC=<label>         
  movq %r13, %rsi                     #  77    0x131cd0  3      OPC=movq_r64_r64    
  movq %r12, %rdi                     #  78    0x131cd3  3      OPC=movq_r64_r64    
  movl $0x2, (%rsp)                   #  79    0x131cd6  7      OPC=movl_m32_imm32  
  callq .xdr_opaque_auth_GLIBC_2_2_5  #  80    0x131cdd  5      OPC=callq_label     
  movq (%rbp), %rax                   #  81    0x131ce2  4      OPC=movq_r64_m64    
  movq $0x0, 0x20(%rbp)               #  82    0x131ce6  8      OPC=movq_m64_imm32  
  movq %rax, (%rbx)                   #  83    0x131cee  3      OPC=movq_m64_r64    
  movq 0x8(%rbp), %rax                #  84    0x131cf1  4      OPC=movq_r64_m64    
  movq %rax, 0x8(%rbx)                #  85    0x131cf5  4      OPC=movq_m64_r64    
  movq 0x10(%rbp), %rax               #  86    0x131cf9  4      OPC=movq_r64_m64    
  movq %rax, 0x10(%rbx)               #  87    0x131cfd  4      OPC=movq_m64_r64    
  jmpq .L_131c4c                      #  88    0x131d01  5      OPC=jmpq_label_1    
  nop                                 #  89    0x131d06  1      OPC=nop             
  nop                                 #  90    0x131d07  1      OPC=nop             
  nop                                 #  91    0x131d08  1      OPC=nop             
  nop                                 #  92    0x131d09  1      OPC=nop             
  nop                                 #  93    0x131d0a  1      OPC=nop             
  nop                                 #  94    0x131d0b  1      OPC=nop             
  nop                                 #  95    0x131d0c  1      OPC=nop             
  nop                                 #  96    0x131d0d  1      OPC=nop             
  nop                                 #  97    0x131d0e  1      OPC=nop             
  nop                                 #  98    0x131d0f  1      OPC=nop             
.L_131d10:                            #        0x131d10  0      OPC=<label>         
  movq 0x38(%rsp), %rax               #  99    0x131d10  5      OPC=movq_r64_m64    
  movq %rbp, %rdi                     #  100   0x131d15  3      OPC=movq_r64_r64    
  callq 0x20(%rax)                    #  101   0x131d18  3      OPC=callq_m64       
  movl %eax, 0x1c8(%r12)              #  102   0x131d1b  8      OPC=movl_m32_r32    
  jmpq .L_131cac                      #  103   0x131d23  2      OPC=jmpq_label      
  nop                                 #  104   0x131d25  1      OPC=nop             
  nop                                 #  105   0x131d26  1      OPC=nop             
  nop                                 #  106   0x131d27  1      OPC=nop             
  nop                                 #  107   0x131d28  1      OPC=nop             
  nop                                 #  108   0x131d29  1      OPC=nop             
  nop                                 #  109   0x131d2a  1      OPC=nop             
  nop                                 #  110   0x131d2b  1      OPC=nop             
  nop                                 #  111   0x131d2c  1      OPC=nop             
  nop                                 #  112   0x131d2d  1      OPC=nop             
  nop                                 #  113   0x131d2e  1      OPC=nop             
  nop                                 #  114   0x131d2f  1      OPC=nop             
                                                                                    
.size authunix_validate, .-authunix_validate
