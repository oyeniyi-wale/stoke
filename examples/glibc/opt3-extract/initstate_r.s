  .text
  .globl initstate_r
  .type initstate_r, @function

#! file-offset 0x3a350
#! rip-offset  0x3a350
#! capacity    352 bytes

# Text                            #  Line  RIP      Bytes  Opcode                
.initstate_r:                     #        0x3a350  0      OPC=<label>           
  pushq %r13                      #  1     0x3a350  2      OPC=pushq_r64_1       
  pushq %r12                      #  2     0x3a352  2      OPC=pushq_r64_1       
  pushq %rbp                      #  3     0x3a354  1      OPC=pushq_r64_1       
  pushq %rbx                      #  4     0x3a355  1      OPC=pushq_r64_1       
  subq $0x8, %rsp                 #  5     0x3a356  4      OPC=subq_r64_imm8     
  testq %rcx, %rcx                #  6     0x3a35a  3      OPC=testq_r64_r64     
  je .L_3a498                     #  7     0x3a35d  6      OPC=je_label_1        
  movq 0x10(%rcx), %rax           #  8     0x3a363  4      OPC=movq_r64_m64      
  testq %rax, %rax                #  9     0x3a367  3      OPC=testq_r64_r64     
  je .L_3a380                     #  10    0x3a36a  2      OPC=je_label          
  movl 0x18(%rcx), %r8d           #  11    0x3a36c  4      OPC=movl_r32_m32      
  testl %r8d, %r8d                #  12    0x3a370  3      OPC=testl_r32_r32     
  jne .L_3a450                    #  13    0x3a373  6      OPC=jne_label_1       
  movl $0x0, -0x4(%rax)           #  14    0x3a379  7      OPC=movl_m32_imm32    
.L_3a380:                         #        0x3a380  0      OPC=<label>           
  cmpq $0x7f, %rdx                #  15    0x3a380  4      OPC=cmpq_r64_imm8     
  movq %rcx, %rbx                 #  16    0x3a384  3      OPC=movq_r64_r64      
  movq %rsi, %rbp                 #  17    0x3a387  3      OPC=movq_r64_r64      
  ja .L_3a3e0                     #  18    0x3a38a  2      OPC=ja_label          
.L_3a38c:                         #        0x3a38c  0      OPC=<label>           
  cmpq $0x1f, %rdx                #  19    0x3a38c  4      OPC=cmpq_r64_imm8     
  ja .L_3a480                     #  20    0x3a390  6      OPC=ja_label_1        
  cmpq $0x7, %rdx                 #  21    0x3a396  4      OPC=cmpq_r64_imm8     
  jbe .L_3a498                    #  22    0x3a39a  6      OPC=jbe_label_1       
  leaq 0x4(%rsi), %rax            #  23    0x3a3a0  4      OPC=leaq_r64_m16      
  movl $0x0, 0x18(%rcx)           #  24    0x3a3a4  7      OPC=movl_m32_imm32    
  movl $0x0, 0x20(%rcx)           #  25    0x3a3ab  7      OPC=movl_m32_imm32    
  movl $0x0, 0x1c(%rcx)           #  26    0x3a3b2  7      OPC=movl_m32_imm32    
  movq %rcx, %rsi                 #  27    0x3a3b9  3      OPC=movq_r64_r64      
  movq %rax, 0x28(%rcx)           #  28    0x3a3bc  4      OPC=movq_m64_r64      
  movq %rax, 0x10(%rcx)           #  29    0x3a3c0  4      OPC=movq_m64_r64      
  callq .srandom_r                #  30    0x3a3c4  5      OPC=callq_label       
  movl $0x0, (%rbp)               #  31    0x3a3c9  7      OPC=movl_m32_imm32    
  xorl %eax, %eax                 #  32    0x3a3d0  2      OPC=xorl_r32_r32      
.L_3a3d2:                         #        0x3a3d2  0      OPC=<label>           
  addq $0x8, %rsp                 #  33    0x3a3d2  4      OPC=addq_r64_imm8     
  popq %rbx                       #  34    0x3a3d6  1      OPC=popq_r64_1        
  popq %rbp                       #  35    0x3a3d7  1      OPC=popq_r64_1        
  popq %r12                       #  36    0x3a3d8  2      OPC=popq_r64_1        
  popq %r13                       #  37    0x3a3da  2      OPC=popq_r64_1        
  retq                            #  38    0x3a3dc  1      OPC=retq              
  nop                             #  39    0x3a3dd  1      OPC=nop               
  nop                             #  40    0x3a3de  1      OPC=nop               
  nop                             #  41    0x3a3df  1      OPC=nop               
.L_3a3e0:                         #        0x3a3e0  0      OPC=<label>           
  cmpq $0x100, %rdx               #  42    0x3a3e0  7      OPC=cmpq_r64_imm32    
  sbbl %r12d, %r12d               #  43    0x3a3e7  3      OPC=sbbl_r32_r32      
  addl $0x4, %r12d                #  44    0x3a3ea  4      OPC=addl_r32_imm8     
  movl %r12d, %edx                #  45    0x3a3ee  3      OPC=movl_r32_r32      
.L_3a3f1:                         #        0x3a3f1  0      OPC=<label>           
  leaq 0x145588(%rip), %rcx       #  46    0x3a3f1  7      OPC=leaq_r64_m16      
  movslq %edx, %rsi               #  47    0x3a3f8  3      OPC=movslq_r64_r32    
  leaq 0x4(%rbp), %r13            #  48    0x3a3fb  4      OPC=leaq_r64_m16      
  movl %edx, 0x18(%rbx)           #  49    0x3a3ff  3      OPC=movl_m32_r32      
  movslq 0x14(%rcx,%rsi,4), %rax  #  50    0x3a402  5      OPC=movslq_r64_m32    
  movl (%rcx,%rsi,4), %ecx        #  51    0x3a407  3      OPC=movl_r32_m32      
  movq %rbx, %rsi                 #  52    0x3a40a  3      OPC=movq_r64_r64      
  movq %r13, 0x10(%rbx)           #  53    0x3a40d  4      OPC=movq_m64_r64      
  movl %ecx, 0x20(%rbx)           #  54    0x3a411  3      OPC=movl_m32_r32      
  movl %eax, 0x1c(%rbx)           #  55    0x3a414  3      OPC=movl_m32_r32      
  leaq (%r13,%rax,4), %rax        #  56    0x3a417  5      OPC=leaq_r64_m16      
  movq %rax, 0x28(%rbx)           #  57    0x3a41c  4      OPC=movq_m64_r64      
  callq .srandom_r                #  58    0x3a420  5      OPC=callq_label       
  movq 0x8(%rbx), %rax            #  59    0x3a425  4      OPC=movq_r64_m64      
  subq %r13, %rax                 #  60    0x3a429  3      OPC=subq_r64_r64      
  sarq $0x2, %rax                 #  61    0x3a42c  4      OPC=sarq_r64_imm8     
  leal (%rax,%rax,4), %eax        #  62    0x3a430  3      OPC=leal_r32_m16      
  addl %r12d, %eax                #  63    0x3a433  3      OPC=addl_r32_r32      
  movl %eax, (%rbp)               #  64    0x3a436  3      OPC=movl_m32_r32      
  addq $0x8, %rsp                 #  65    0x3a439  4      OPC=addq_r64_imm8     
  xorl %eax, %eax                 #  66    0x3a43d  2      OPC=xorl_r32_r32      
  popq %rbx                       #  67    0x3a43f  1      OPC=popq_r64_1        
  popq %rbp                       #  68    0x3a440  1      OPC=popq_r64_1        
  popq %r12                       #  69    0x3a441  2      OPC=popq_r64_1        
  popq %r13                       #  70    0x3a443  2      OPC=popq_r64_1        
  retq                            #  71    0x3a445  1      OPC=retq              
  nop                             #  72    0x3a446  1      OPC=nop               
  nop                             #  73    0x3a447  1      OPC=nop               
  nop                             #  74    0x3a448  1      OPC=nop               
  nop                             #  75    0x3a449  1      OPC=nop               
  nop                             #  76    0x3a44a  1      OPC=nop               
  nop                             #  77    0x3a44b  1      OPC=nop               
  nop                             #  78    0x3a44c  1      OPC=nop               
  nop                             #  79    0x3a44d  1      OPC=nop               
  nop                             #  80    0x3a44e  1      OPC=nop               
  nop                             #  81    0x3a44f  1      OPC=nop               
.L_3a450:                         #        0x3a450  0      OPC=<label>           
  movq 0x8(%rcx), %r9             #  82    0x3a450  4      OPC=movq_r64_m64      
  movq %rcx, %rbx                 #  83    0x3a454  3      OPC=movq_r64_r64      
  movq %rsi, %rbp                 #  84    0x3a457  3      OPC=movq_r64_r64      
  subq %rax, %r9                  #  85    0x3a45a  3      OPC=subq_r64_r64      
  sarq $0x2, %r9                  #  86    0x3a45d  4      OPC=sarq_r64_imm8     
  leal (%r9,%r9,4), %r9d          #  87    0x3a461  4      OPC=leal_r32_m16      
  addl %r9d, %r8d                 #  88    0x3a465  3      OPC=addl_r32_r32      
  cmpq $0x7f, %rdx                #  89    0x3a468  4      OPC=cmpq_r64_imm8     
  movl %r8d, -0x4(%rax)           #  90    0x3a46c  4      OPC=movl_m32_r32      
  jbe .L_3a38c                    #  91    0x3a470  6      OPC=jbe_label_1       
  jmpq .L_3a3e0                   #  92    0x3a476  5      OPC=jmpq_label_1      
  nop                             #  93    0x3a47b  1      OPC=nop               
  nop                             #  94    0x3a47c  1      OPC=nop               
  nop                             #  95    0x3a47d  1      OPC=nop               
  nop                             #  96    0x3a47e  1      OPC=nop               
  nop                             #  97    0x3a47f  1      OPC=nop               
.L_3a480:                         #        0x3a480  0      OPC=<label>           
  cmpq $0x40, %rdx                #  98    0x3a480  4      OPC=cmpq_r64_imm8     
  sbbl %r12d, %r12d               #  99    0x3a484  3      OPC=sbbl_r32_r32      
  addl $0x2, %r12d                #  100   0x3a487  4      OPC=addl_r32_imm8     
  movl %r12d, %edx                #  101   0x3a48b  3      OPC=movl_r32_r32      
  jmpq .L_3a3f1                   #  102   0x3a48e  5      OPC=jmpq_label_1      
  nop                             #  103   0x3a493  1      OPC=nop               
  nop                             #  104   0x3a494  1      OPC=nop               
  nop                             #  105   0x3a495  1      OPC=nop               
  nop                             #  106   0x3a496  1      OPC=nop               
  nop                             #  107   0x3a497  1      OPC=nop               
.L_3a498:                         #        0x3a498  0      OPC=<label>           
  movq 0x3869e1(%rip), %rax       #  108   0x3a498  7      OPC=movq_r64_m64      
  movl $0x16, (%rax)              #  109   0x3a49f  6      OPC=movl_m32_imm32    
  nop                             #  110   0x3a4a5  1      OPC=nop               
  movl $0xffffffff, %eax          #  111   0x3a4a6  6      OPC=movl_r32_imm32_1  
  jmpq .L_3a3d2                   #  112   0x3a4ac  5      OPC=jmpq_label_1      
                                                                                 
.size initstate_r, .-initstate_r
