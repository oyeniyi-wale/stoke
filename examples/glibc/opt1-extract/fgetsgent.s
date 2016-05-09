  .text
  .globl fgetsgent
  .type fgetsgent, @function

#! file-offset 0xe47bb
#! rip-offset  0xe47bb
#! capacity    421 bytes

# Text                               #  Line  RIP      Bytes  Opcode                
.fgetsgent:                          #        0xe47bb  0      OPC=<label>           
  pushq %r15                         #  1     0xe47bb  2      OPC=pushq_r64_1       
  pushq %r14                         #  2     0xe47bd  2      OPC=pushq_r64_1       
  pushq %r13                         #  3     0xe47bf  2      OPC=pushq_r64_1       
  pushq %r12                         #  4     0xe47c1  2      OPC=pushq_r64_1       
  pushq %rbp                         #  5     0xe47c3  1      OPC=pushq_r64_1       
  pushq %rbx                         #  6     0xe47c4  1      OPC=pushq_r64_1       
  subq $0x38, %rsp                   #  7     0xe47c5  4      OPC=subq_r64_imm8     
  movq %rdi, %rbp                    #  8     0xe47c9  3      OPC=movq_r64_r64      
  leaq 0x20(%rsp), %rsi              #  9     0xe47cc  5      OPC=leaq_r64_m16      
  callq ._IO_fgetpos64__GLIBC_2_2_5  #  10    0xe47d1  5      OPC=callq_label       
  testl %eax, %eax                   #  11    0xe47d6  2      OPC=testl_r32_r32     
  jne .L_e494c                       #  12    0xe47d8  6      OPC=jne_label_1       
  movl $0x1, %esi                    #  13    0xe47de  5      OPC=movl_r32_imm32    
  cmpl $0x0, 0x2ac416(%rip)          #  14    0xe47e3  7      OPC=cmpl_m32_imm8     
  je .L_e47f8                        #  15    0xe47ea  2      OPC=je_label          
  lock                               #  16    0xe47ec  1      OPC=lock              
  cmpxchgl %esi, 0x2aa3b4(%rip)      #  17    0xe47ed  7      OPC=cmpxchgl_m32_r32  
  nop                                #  18    0xe47f4  1      OPC=nop               
  jne .L_e4801                       #  19    0xe47f5  2      OPC=jne_label         
  jmpq .L_e481b                      #  20    0xe47f7  2      OPC=jmpq_label        
.L_e47f8:                            #        0xe47f9  0      OPC=<label>           
  cmpxchgl %esi, 0x2aa3a9(%rip)      #  21    0xe47f9  7      OPC=cmpxchgl_m32_r32  
  je .L_e481b                        #  22    0xe4800  2      OPC=je_label          
.L_e4801:                            #        0xe4802  0      OPC=<label>           
  leaq 0x2aa3a0(%rip), %rdi          #  23    0xe4802  7      OPC=leaq_r64_m16      
  subq $0x80, %rsp                   #  24    0xe4809  7      OPC=subq_r64_imm32    
  callq .__lll_lock_wait_private     #  25    0xe4810  5      OPC=callq_label       
  addq $0x80, %rsp                   #  26    0xe4815  7      OPC=addq_r64_imm32    
.L_e481b:                            #        0xe481c  0      OPC=<label>           
  cmpq $0x0, 0x2a811d(%rip)          #  27    0xe481c  8      OPC=cmpq_m64_imm8     
  jne .L_e4841                       #  28    0xe4824  2      OPC=jne_label         
  movq $0x400, 0x2aa370(%rip)        #  29    0xe4826  11     OPC=movq_m64_imm32    
  movl $0x400, %edi                  #  30    0xe4831  5      OPC=movl_r32_imm32    
  callq .memalign_plt                #  31    0xe4836  5      OPC=callq_label       
  movq %rax, 0x2a80ff(%rip)          #  32    0xe483b  7      OPC=movq_m64_r64      
.L_e4841:                            #        0xe4842  0      OPC=<label>           
  leaq 0x18(%rsp), %r14              #  33    0xe4842  5      OPC=leaq_r64_m16      
  leaq 0x2aa333(%rip), %r13          #  34    0xe4847  7      OPC=leaq_r64_m16      
  leaq 0x20(%rsp), %r15              #  35    0xe484e  5      OPC=leaq_r64_m16      
  jmpq .L_e48c5                      #  36    0xe4853  2      OPC=jmpq_label        
.L_e4854:                            #        0xe4855  0      OPC=<label>           
  movq 0x2aa345(%rip), %rax          #  37    0xe4855  7      OPC=movq_r64_m64      
  leaq 0x400(%rax), %rsi             #  38    0xe485c  7      OPC=leaq_r64_m16      
  movq %rsi, 0x2aa337(%rip)          #  39    0xe4863  7      OPC=movq_m64_r64      
  movq 0x2a80d0(%rip), %r12          #  40    0xe486a  7      OPC=movq_r64_m64      
  movq %r12, %rdi                    #  41    0xe4871  3      OPC=movq_r64_r64      
  callq .__tls_get_addr_plt          #  42    0xe4874  5      OPC=callq_label       
  movq %rax, %rbx                    #  43    0xe4879  3      OPC=movq_r64_r64      
  testq %rax, %rax                   #  44    0xe487c  3      OPC=testq_r64_r64     
  jne .L_e48a4                       #  45    0xe487f  2      OPC=jne_label         
  movq 0x2a65f9(%rip), %rax          #  46    0xe4881  7      OPC=movq_r64_m64      
  movl (%rax), %eax                  #  47    0xe4888  2      OPC=movl_r32_m32      
  nop                                #  48    0xe488a  1      OPC=nop               
  movl %eax, 0xc(%rsp)               #  49    0xe488b  4      OPC=movl_m32_r32      
  movq %r12, %rdi                    #  50    0xe488f  3      OPC=movq_r64_r64      
  callq .L_1f8d0                     #  51    0xe4892  5      OPC=callq_label       
  movq 0x2a65e3(%rip), %rcx          #  52    0xe4897  7      OPC=movq_r64_m64      
  movl 0xc(%rsp), %eax               #  53    0xe489e  4      OPC=movl_r32_m32      
  movl %eax, (%rcx)                  #  54    0xe48a2  2      OPC=movl_m32_r32      
  nop                                #  55    0xe48a4  1      OPC=nop               
.L_e48a4:                            #        0xe48a5  0      OPC=<label>           
  movq %rbx, 0x2a8095(%rip)          #  56    0xe48a5  7      OPC=movq_m64_r64      
  movq %r15, %rsi                    #  57    0xe48ac  3      OPC=movq_r64_r64      
  movq %rbp, %rdi                    #  58    0xe48af  3      OPC=movq_r64_r64      
  callq ._IO_fsetpos64__GLIBC_2_2_5  #  59    0xe48b2  5      OPC=callq_label       
  testl %eax, %eax                   #  60    0xe48b7  2      OPC=testl_r32_r32     
  je .L_e48c5                        #  61    0xe48b9  2      OPC=je_label          
  movq $0x0, 0x2a807b(%rip)          #  62    0xe48bb  11     OPC=movq_m64_imm32    
.L_e48c5:                            #        0xe48c6  0      OPC=<label>           
  movq 0x2a8074(%rip), %rdx          #  63    0xe48c6  7      OPC=movq_r64_m64      
  testq %rdx, %rdx                   #  64    0xe48cd  3      OPC=testq_r64_r64     
  je .L_e48f9                        #  65    0xe48d0  2      OPC=je_label          
  movq %r14, %r8                     #  66    0xe48d2  3      OPC=movq_r64_r64      
  movq 0x2aa2c5(%rip), %rcx          #  67    0xe48d5  7      OPC=movq_r64_m64      
  movq %r13, %rsi                    #  68    0xe48dc  3      OPC=movq_r64_r64      
  movq %rbp, %rdi                    #  69    0xe48df  3      OPC=movq_r64_r64      
  callq .fgetsgent_r                 #  70    0xe48e2  5      OPC=callq_label       
  cmpl $0x22, %eax                   #  71    0xe48e7  3      OPC=cmpl_r32_imm8     
  je .L_e4854                        #  72    0xe48ea  6      OPC=je_label_1        
  cmpq $0x0, 0x2a8049(%rip)          #  73    0xe48f0  8      OPC=cmpq_m64_imm8     
  jne .L_e4902                       #  74    0xe48f8  2      OPC=jne_label         
.L_e48f9:                            #        0xe48fa  0      OPC=<label>           
  movq $0x0, 0x18(%rsp)              #  75    0xe48fa  9      OPC=movq_m64_imm32    
.L_e4902:                            #        0xe4903  0      OPC=<label>           
  movq 0x2a6577(%rip), %rdx          #  76    0xe4903  7      OPC=movq_r64_m64      
  movl (%rdx), %esi                  #  77    0xe490a  2      OPC=movl_r32_m32      
  nop                                #  78    0xe490c  1      OPC=nop               
  cmpl $0x0, 0x2ac2ed(%rip)          #  79    0xe490d  7      OPC=cmpl_m32_imm8     
  je .L_e4920                        #  80    0xe4914  2      OPC=je_label          
  lock                               #  81    0xe4916  1      OPC=lock              
  decl 0x2aa28c(%rip)                #  82    0xe4917  6      OPC=decl_m32          
  nop                                #  83    0xe491d  1      OPC=nop               
  jne .L_e4928                       #  84    0xe491e  2      OPC=jne_label         
  jmpq .L_e4942                      #  85    0xe4920  2      OPC=jmpq_label        
.L_e4920:                            #        0xe4922  0      OPC=<label>           
  decl 0x2aa282(%rip)                #  86    0xe4922  6      OPC=decl_m32          
  je .L_e4942                        #  87    0xe4928  2      OPC=je_label          
.L_e4928:                            #        0xe492a  0      OPC=<label>           
  leaq 0x2aa279(%rip), %rdi          #  88    0xe492a  7      OPC=leaq_r64_m16      
  subq $0x80, %rsp                   #  89    0xe4931  7      OPC=subq_r64_imm32    
  callq .__lll_unlock_wake_private   #  90    0xe4938  5      OPC=callq_label       
  addq $0x80, %rsp                   #  91    0xe493d  7      OPC=addq_r64_imm32    
.L_e4942:                            #        0xe4944  0      OPC=<label>           
  movl %esi, (%rdx)                  #  92    0xe4944  2      OPC=movl_m32_r32      
  nop                                #  93    0xe4946  1      OPC=nop               
  movq 0x18(%rsp), %rax              #  94    0xe4947  5      OPC=movq_r64_m64      
  jmpq .L_e4951                      #  95    0xe494c  2      OPC=jmpq_label        
.L_e494c:                            #        0xe494e  0      OPC=<label>           
  movl $0x0, %eax                    #  96    0xe494e  5      OPC=movl_r32_imm32    
.L_e4951:                            #        0xe4953  0      OPC=<label>           
  addq $0x38, %rsp                   #  97    0xe4953  4      OPC=addq_r64_imm8     
  popq %rbx                          #  98    0xe4957  1      OPC=popq_r64_1        
  popq %rbp                          #  99    0xe4958  1      OPC=popq_r64_1        
  popq %r12                          #  100   0xe4959  2      OPC=popq_r64_1        
  popq %r13                          #  101   0xe495b  2      OPC=popq_r64_1        
  popq %r14                          #  102   0xe495d  2      OPC=popq_r64_1        
  popq %r15                          #  103   0xe495f  2      OPC=popq_r64_1        
  retq                               #  104   0xe4961  1      OPC=retq              
                                                                                    
.size fgetsgent, .-fgetsgent
