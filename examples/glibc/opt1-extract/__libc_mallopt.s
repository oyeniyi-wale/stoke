  .text
  .globl __libc_mallopt
  .type __libc_mallopt, @function

#! file-offset 0x755ed
#! rip-offset  0x755ed
#! capacity    449 bytes

# Text                              #  Line  RIP      Bytes  Opcode                
.__libc_mallopt:                    #        0x755ed  0      OPC=<label>           
  pushq %rbp                        #  1     0x755ed  1      OPC=pushq_r64_1       
  pushq %rbx                        #  2     0x755ee  1      OPC=pushq_r64_1       
  subq $0x8, %rsp                   #  3     0x755ef  4      OPC=subq_r64_imm8     
  movl %edi, %ebx                   #  4     0x755f3  2      OPC=movl_r32_r32      
  movl %esi, %ebp                   #  5     0x755f5  2      OPC=movl_r32_r32      
  cmpl $0x0, 0x315bc6(%rip)         #  6     0x755f7  7      OPC=cmpl_m32_imm8     
  jns .L_75605                      #  7     0x755fe  2      OPC=jns_label         
  callq .ptmalloc_init              #  8     0x75600  5      OPC=callq_label       
.L_75605:                           #        0x75605  0      OPC=<label>           
  movl $0x1, %esi                   #  9     0x75605  5      OPC=movl_r32_imm32    
  movl $0x0, %eax                   #  10    0x7560a  5      OPC=movl_r32_imm32    
  cmpl $0x0, 0x31b5ea(%rip)         #  11    0x7560f  7      OPC=cmpl_m32_imm8     
  je .L_75624                       #  12    0x75616  2      OPC=je_label          
  lock                              #  13    0x75618  1      OPC=lock              
  cmpxchgl %esi, 0x316620(%rip)     #  14    0x75619  7      OPC=cmpxchgl_m32_r32  
  nop                               #  15    0x75620  1      OPC=nop               
  jne .L_7562d                      #  16    0x75621  2      OPC=jne_label         
  jmpq .L_75647                     #  17    0x75623  2      OPC=jmpq_label        
.L_75624:                           #        0x75625  0      OPC=<label>           
  cmpxchgl %esi, 0x316615(%rip)     #  18    0x75625  7      OPC=cmpxchgl_m32_r32  
  je .L_75647                       #  19    0x7562c  2      OPC=je_label          
.L_7562d:                           #        0x7562e  0      OPC=<label>           
  leaq 0x31660c(%rip), %rdi         #  20    0x7562e  7      OPC=leaq_r64_m16      
  subq $0x80, %rsp                  #  21    0x75635  7      OPC=subq_r64_imm32    
  callq .__lll_lock_wait_private    #  22    0x7563c  5      OPC=callq_label       
  addq $0x80, %rsp                  #  23    0x75641  7      OPC=addq_r64_imm32    
.L_75647:                           #        0x75648  0      OPC=<label>           
  leaq 0x3165f2(%rip), %rdi         #  24    0x75648  7      OPC=leaq_r64_m16      
  callq .malloc_consolidate         #  25    0x7564f  5      OPC=callq_label       
  leal 0x8(%rbx), %edi              #  26    0x75654  3      OPC=leal_r32_m16      
  cmpl $0x9, %edi                   #  27    0x75657  3      OPC=cmpl_r32_imm8     
  ja .L_75763                       #  28    0x7565a  6      OPC=ja_label_1        
  movl %edi, %edi                   #  29    0x75660  2      OPC=movl_r32_r32      
  leaq 0xdd6d8(%rip), %rax          #  30    0x75662  7      OPC=leaq_r64_m16      
  movslq (%rax,%rdi,4), %rdx        #  31    0x75669  4      OPC=movslq_r64_m32    
  addq %rdx, %rax                   #  32    0x7566d  3      OPC=addq_r64_r64      
  jmpq %rax                         #  33    0x75670  2      OPC=jmpq_r64          
  movl $0x0, %edx                   #  34    0x75672  5      OPC=movl_r32_imm32    
  cmpl $0xa0, %ebp                  #  35    0x75677  6      OPC=cmpl_r32_imm32    
  ja .L_7576f                       #  36    0x7567d  6      OPC=ja_label_1        
  movl $0x10, %eax                  #  37    0x75683  5      OPC=movl_r32_imm32    
  testl %ebp, %ebp                  #  38    0x75688  2      OPC=testl_r32_r32     
  je .L_75696                       #  39    0x7568a  2      OPC=je_label          
  movslq %ebp, %rax                 #  40    0x7568c  3      OPC=movslq_r64_r32    
  addq $0x8, %rax                   #  41    0x7568f  4      OPC=addq_r64_imm8     
  andq $0xf0, %rax                  #  42    0x75693  4      OPC=andq_r64_imm8     
.L_75696:                           #        0x75697  0      OPC=<label>           
  movq %rax, 0x3183eb(%rip)         #  43    0x75697  7      OPC=movq_m64_r64      
  movl $0x1, %edx                   #  44    0x7569e  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  45    0x756a3  5      OPC=jmpq_label_1      
  movslq %ebp, %rbp                 #  46    0x756a8  3      OPC=movslq_r64_r32    
  movq %rbp, 0x315b4f(%rip)         #  47    0x756ab  7      OPC=movq_m64_r64      
  movl $0x1, 0x315b79(%rip)         #  48    0x756b2  10     OPC=movl_m32_imm32    
  movl $0x1, %edx                   #  49    0x756bc  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  50    0x756c1  5      OPC=jmpq_label_1      
  movslq %ebp, %rbp                 #  51    0x756c6  3      OPC=movslq_r64_r32    
  movq %rbp, 0x315b39(%rip)         #  52    0x756c9  7      OPC=movq_m64_r64      
  movl $0x1, 0x315b5b(%rip)         #  53    0x756d0  10     OPC=movl_m32_imm32    
  movl $0x1, %edx                   #  54    0x756da  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  55    0x756df  5      OPC=jmpq_label_1      
  movl $0x0, %edx                   #  56    0x756e4  5      OPC=movl_r32_imm32    
  cmpl $0x2000000, %ebp             #  57    0x756e9  6      OPC=cmpl_r32_imm32    
  ja .L_7576f                       #  58    0x756ef  2      OPC=ja_label          
  movslq %ebp, %rbp                 #  59    0x756f1  3      OPC=movslq_r64_r32    
  movq %rbp, 0x315b16(%rip)         #  60    0x756f4  7      OPC=movq_m64_r64      
  movl $0x1, 0x315b30(%rip)         #  61    0x756fb  10     OPC=movl_m32_imm32    
  movb $0x1, %dl                    #  62    0x75705  2      OPC=movb_r8_imm8      
  jmpq .L_7576f                     #  63    0x75707  2      OPC=jmpq_label        
  movl %ebp, 0x315b1e(%rip)         #  64    0x75709  6      OPC=movl_m32_r32      
  movl $0x1, 0x315b1c(%rip)         #  65    0x7570f  10     OPC=movl_m32_imm32    
  movl $0x1, %edx                   #  66    0x75719  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  67    0x7571e  2      OPC=jmpq_label        
  movl %ebp, 0x315aab(%rip)         #  68    0x75720  6      OPC=movl_m32_r32      
  movl $0x1, %edx                   #  69    0x75726  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  70    0x7572b  2      OPC=jmpq_label        
  movl %ebp, 0x318352(%rip)         #  71    0x7572d  6      OPC=movl_m32_r32      
  movl $0x1, %edx                   #  72    0x75733  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  73    0x75738  2      OPC=jmpq_label        
  movl $0x1, %edx                   #  74    0x7573a  5      OPC=movl_r32_imm32    
  testl %ebp, %ebp                  #  75    0x7573f  2      OPC=testl_r32_r32     
  jle .L_7576f                      #  76    0x75741  2      OPC=jle_label         
  movslq %ebp, %rbp                 #  77    0x75743  3      OPC=movslq_r64_r32    
  movq %rbp, 0x315acc(%rip)         #  78    0x75746  7      OPC=movq_m64_r64      
  jmpq .L_7576f                     #  79    0x7574d  2      OPC=jmpq_label        
  testl %ebp, %ebp                  #  80    0x7574f  2      OPC=testl_r32_r32     
  jle .L_7576a                      #  81    0x75751  2      OPC=jle_label         
  movslq %ebp, %rbp                 #  82    0x75753  3      OPC=movslq_r64_r32    
  movq %rbp, 0x315ac4(%rip)         #  83    0x75756  7      OPC=movq_m64_r64      
  movl $0x1, %edx                   #  84    0x7575d  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  85    0x75762  2      OPC=jmpq_label        
.L_75763:                           #        0x75764  0      OPC=<label>           
  movl $0x1, %edx                   #  86    0x75764  5      OPC=movl_r32_imm32    
  jmpq .L_7576f                     #  87    0x75769  2      OPC=jmpq_label        
.L_7576a:                           #        0x7576b  0      OPC=<label>           
  movl $0x1, %edx                   #  88    0x7576b  5      OPC=movl_r32_imm32    
.L_7576f:                           #        0x75770  0      OPC=<label>           
  cmpl $0x0, 0x31b48a(%rip)         #  89    0x75770  7      OPC=cmpl_m32_imm8     
  je .L_75783                       #  90    0x75777  2      OPC=je_label          
  lock                              #  91    0x75779  1      OPC=lock              
  decl 0x3164c1(%rip)               #  92    0x7577a  6      OPC=decl_m32          
  nop                               #  93    0x75780  1      OPC=nop               
  jne .L_7578b                      #  94    0x75781  2      OPC=jne_label         
  jmpq .L_757a5                     #  95    0x75783  2      OPC=jmpq_label        
.L_75783:                           #        0x75785  0      OPC=<label>           
  decl 0x3164b7(%rip)               #  96    0x75785  6      OPC=decl_m32          
  je .L_757a5                       #  97    0x7578b  2      OPC=je_label          
.L_7578b:                           #        0x7578d  0      OPC=<label>           
  leaq 0x3164ae(%rip), %rdi         #  98    0x7578d  7      OPC=leaq_r64_m16      
  subq $0x80, %rsp                  #  99    0x75794  7      OPC=subq_r64_imm32    
  callq .__lll_unlock_wake_private  #  100   0x7579b  5      OPC=callq_label       
  addq $0x80, %rsp                  #  101   0x757a0  7      OPC=addq_r64_imm32    
.L_757a5:                           #        0x757a7  0      OPC=<label>           
  movl %edx, %eax                   #  102   0x757a7  2      OPC=movl_r32_r32      
  addq $0x8, %rsp                   #  103   0x757a9  4      OPC=addq_r64_imm8     
  popq %rbx                         #  104   0x757ad  1      OPC=popq_r64_1        
  popq %rbp                         #  105   0x757ae  1      OPC=popq_r64_1        
  retq                              #  106   0x757af  1      OPC=retq              
                                                                                   
.size __libc_mallopt, .-__libc_mallopt
