  .text
  .globl __argp_fmtstream_update
  .type __argp_fmtstream_update, @function

#! file-offset 0xed580
#! rip-offset  0xed580
#! capacity    1424 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__argp_fmtstream_update:      #        0xed580  0      OPC=<label>         
  pushq %r15                   #  1     0xed580  2      OPC=pushq_r64_1     
  pushq %r14                   #  2     0xed582  2      OPC=pushq_r64_1     
  pushq %r13                   #  3     0xed584  2      OPC=pushq_r64_1     
  pushq %r12                   #  4     0xed586  2      OPC=pushq_r64_1     
  movq %rdi, %r12              #  5     0xed588  3      OPC=movq_r64_r64    
  pushq %rbp                   #  6     0xed58b  1      OPC=pushq_r64_1     
  pushq %rbx                   #  7     0xed58c  1      OPC=pushq_r64_1     
  subq $0x18, %rsp             #  8     0xed58d  4      OPC=subq_r64_imm8   
  movq 0x20(%rdi), %rbp        #  9     0xed591  4      OPC=movq_r64_m64    
  addq 0x30(%rdi), %rbp        #  10    0xed595  4      OPC=addq_r64_m64    
  movq 0x38(%rdi), %r15        #  11    0xed599  4      OPC=movq_r64_m64    
  nop                          #  12    0xed59d  1      OPC=nop             
  nop                          #  13    0xed59e  1      OPC=nop             
  nop                          #  14    0xed59f  1      OPC=nop             
.L_ed5a0:                      #        0xed5a0  0      OPC=<label>         
  cmpq %r15, %rbp              #  15    0xed5a0  3      OPC=cmpq_r64_r64    
  jae .L_ed68b                 #  16    0xed5a3  6      OPC=jae_label_1     
.L_ed5a9:                      #        0xed5a9  0      OPC=<label>         
  movq 0x28(%r12), %rbx        #  17    0xed5a9  5      OPC=movq_r64_m64    
  testq %rbx, %rbx             #  18    0xed5ae  3      OPC=testq_r64_r64   
  jne .L_ed62b                 #  19    0xed5b1  2      OPC=jne_label       
  movq 0x8(%r12), %r13         #  20    0xed5b3  5      OPC=movq_r64_m64    
  testq %r13, %r13             #  21    0xed5b8  3      OPC=testq_r64_r64   
  je .L_ed8f0                  #  22    0xed5bb  6      OPC=je_label_1      
  leaq (%r15,%r13,1), %rax     #  23    0xed5c1  4      OPC=leaq_r64_m16    
  cmpq %rax, 0x40(%r12)        #  24    0xed5c5  5      OPC=cmpq_m64_r64    
  jbe .L_ed5ee                 #  25    0xed5ca  2      OPC=jbe_label       
  jmpq .L_eda40                #  26    0xed5cc  5      OPC=jmpq_label_1    
  nop                          #  27    0xed5d1  1      OPC=nop             
  nop                          #  28    0xed5d2  1      OPC=nop             
  nop                          #  29    0xed5d3  1      OPC=nop             
  nop                          #  30    0xed5d4  1      OPC=nop             
  nop                          #  31    0xed5d5  1      OPC=nop             
  nop                          #  32    0xed5d6  1      OPC=nop             
  nop                          #  33    0xed5d7  1      OPC=nop             
.L_ed5d8:                      #        0xed5d8  0      OPC=<label>         
  movq %rdi, %rsi              #  34    0xed5d8  3      OPC=movq_r64_r64    
  movl $0x20, %edi             #  35    0xed5db  5      OPC=movl_r32_imm32  
  callq .putwc_unlocked        #  36    0xed5e0  5      OPC=callq_label     
.L_ed5e5:                      #        0xed5e5  0      OPC=<label>         
  addq $0x1, %rbx              #  37    0xed5e5  4      OPC=addq_r64_imm8   
  cmpq %r13, %rbx              #  38    0xed5e9  3      OPC=cmpq_r64_r64    
  je .L_ed61e                  #  39    0xed5ec  2      OPC=je_label        
.L_ed5ee:                      #        0xed5ee  0      OPC=<label>         
  movq (%r12), %rdi            #  40    0xed5ee  4      OPC=movq_r64_m64    
  movl 0xc0(%rdi), %edx        #  41    0xed5f2  6      OPC=movl_r32_m32    
  testl %edx, %edx             #  42    0xed5f8  2      OPC=testl_r32_r32   
  jg .L_ed5d8                  #  43    0xed5fa  2      OPC=jg_label        
  movq 0x28(%rdi), %rax        #  44    0xed5fc  4      OPC=movq_r64_m64    
  cmpq 0x30(%rdi), %rax        #  45    0xed600  4      OPC=cmpq_r64_m64    
  jae .L_ed970                 #  46    0xed604  6      OPC=jae_label_1     
  leaq 0x1(%rax), %rdx         #  47    0xed60a  4      OPC=leaq_r64_m16    
  addq $0x1, %rbx              #  48    0xed60e  4      OPC=addq_r64_imm8   
  cmpq %r13, %rbx              #  49    0xed612  3      OPC=cmpq_r64_r64    
  movq %rdx, 0x28(%rdi)        #  50    0xed615  4      OPC=movq_m64_r64    
  movb $0x20, (%rax)           #  51    0xed619  3      OPC=movb_m8_imm8    
  jne .L_ed5ee                 #  52    0xed61c  2      OPC=jne_label       
.L_ed61e:                      #        0xed61e  0      OPC=<label>         
  movq 0x38(%r12), %r15        #  53    0xed61e  5      OPC=movq_r64_m64    
  movq %r13, %rbx              #  54    0xed623  3      OPC=movq_r64_r64    
  movq %r13, 0x28(%r12)        #  55    0xed626  5      OPC=movq_m64_r64    
.L_ed62b:                      #        0xed62b  0      OPC=<label>         
  movq %r15, %r13              #  56    0xed62b  3      OPC=movq_r64_r64    
  movl $0xa, %esi              #  57    0xed62e  5      OPC=movl_r32_imm32  
  movq %rbp, %rdi              #  58    0xed633  3      OPC=movq_r64_r64    
  subq %rbp, %r13              #  59    0xed636  3      OPC=subq_r64_r64    
  movq %r13, %rdx              #  60    0xed639  3      OPC=movq_r64_r64    
  callq .memchr                #  61    0xed63c  5      OPC=callq_label     
  testq %rbx, %rbx             #  62    0xed641  3      OPC=testq_r64_r64   
  movq %rax, %r9               #  63    0xed644  3      OPC=movq_r64_r64    
  jns .L_ed654                 #  64    0xed647  2      OPC=jns_label       
  movq $0x0, 0x28(%r12)        #  65    0xed649  9      OPC=movq_m64_imm32  
  xorl %ebx, %ebx              #  66    0xed652  2      OPC=xorl_r32_r32    
.L_ed654:                      #        0xed654  0      OPC=<label>         
  testq %r9, %r9               #  67    0xed654  3      OPC=testq_r64_r64   
  je .L_ed912                  #  68    0xed657  6      OPC=je_label_1      
.L_ed65d:                      #        0xed65d  0      OPC=<label>         
  movq 0x10(%r12), %r14        #  69    0xed65d  5      OPC=movq_r64_m64    
  movq %r9, %rax               #  70    0xed662  3      OPC=movq_r64_r64    
  subq %rbp, %rax              #  71    0xed665  3      OPC=subq_r64_r64    
  addq %rbx, %rax              #  72    0xed668  3      OPC=addq_r64_r64    
  cmpq %r14, %rax              #  73    0xed66b  3      OPC=cmpq_r64_r64    
  jge .L_ed6a8                 #  74    0xed66e  2      OPC=jge_label       
.L_ed670:                      #        0xed670  0      OPC=<label>         
  movq 0x38(%r12), %r15        #  75    0xed670  5      OPC=movq_r64_m64    
  leaq 0x1(%r9), %rbp          #  76    0xed675  4      OPC=leaq_r64_m16    
  movq $0x0, 0x28(%r12)        #  77    0xed679  9      OPC=movq_m64_imm32  
  cmpq %r15, %rbp              #  78    0xed682  3      OPC=cmpq_r64_r64    
  jb .L_ed5a9                  #  79    0xed685  6      OPC=jb_label_1      
.L_ed68b:                      #        0xed68b  0      OPC=<label>         
  subq 0x30(%r12), %r15        #  80    0xed68b  5      OPC=subq_r64_m64    
  movq %r15, 0x20(%r12)        #  81    0xed690  5      OPC=movq_m64_r64    
  addq $0x18, %rsp             #  82    0xed695  4      OPC=addq_r64_imm8   
  popq %rbx                    #  83    0xed699  1      OPC=popq_r64_1      
  popq %rbp                    #  84    0xed69a  1      OPC=popq_r64_1      
  popq %r12                    #  85    0xed69b  2      OPC=popq_r64_1      
  popq %r13                    #  86    0xed69d  2      OPC=popq_r64_1      
  popq %r14                    #  87    0xed69f  2      OPC=popq_r64_1      
  popq %r15                    #  88    0xed6a1  2      OPC=popq_r64_1      
  retq                         #  89    0xed6a3  1      OPC=retq            
  nop                          #  90    0xed6a4  1      OPC=nop             
  nop                          #  91    0xed6a5  1      OPC=nop             
  nop                          #  92    0xed6a6  1      OPC=nop             
  nop                          #  93    0xed6a7  1      OPC=nop             
.L_ed6a8:                      #        0xed6a8  0      OPC=<label>         
  movq 0x18(%r12), %rsi        #  94    0xed6a8  5      OPC=movq_r64_m64    
  leaq -0x1(%r14), %r8         #  95    0xed6ad  4      OPC=leaq_r64_m16    
  testq %rsi, %rsi             #  96    0xed6b1  3      OPC=testq_r64_r64   
  js .L_ed9c0                  #  97    0xed6b4  6      OPC=js_label_1      
  movq %rbp, %rax              #  98    0xed6ba  3      OPC=movq_r64_r64    
  subq %rbx, %rax              #  99    0xed6bd  3      OPC=subq_r64_r64    
  leaq 0x1(%rax,%r8,1), %rdi   #  100   0xed6c0  5      OPC=leaq_r64_m16    
  cmpq %rbp, %rdi              #  101   0xed6c5  3      OPC=cmpq_r64_r64    
  jb .L_ed94d                  #  102   0xed6c8  6      OPC=jb_label_1      
.L_ed6ce:                      #        0xed6ce  0      OPC=<label>         
  movq 0x2ad74b(%rip), %r10    #  103   0xed6ce  7      OPC=movq_r64_m64    
  movsbq (%rdi), %rdx          #  104   0xed6d5  4      OPC=movsbq_r64_m8   
  movq %rdi, %rcx              #  105   0xed6d9  3      OPC=movq_r64_r64    
  movq (%r10), %rax            #  106   0xed6dc  3      OPC=movq_r64_m64    
  nop                          #  107   0xed6df  1      OPC=nop             
  testb $0x1, (%rax,%rdx,2)    #  108   0xed6e0  4      OPC=testb_m8_imm8   
  je .L_ed6fe                  #  109   0xed6e4  2      OPC=je_label        
  jmpq .L_ed980                #  110   0xed6e6  5      OPC=jmpq_label_1    
  nop                          #  111   0xed6eb  1      OPC=nop             
  nop                          #  112   0xed6ec  1      OPC=nop             
  nop                          #  113   0xed6ed  1      OPC=nop             
  nop                          #  114   0xed6ee  1      OPC=nop             
  nop                          #  115   0xed6ef  1      OPC=nop             
.L_ed6f0:                      #        0xed6f0  0      OPC=<label>         
  movsbq (%rcx), %rdx          #  116   0xed6f0  4      OPC=movsbq_r64_m8   
  testb $0x1, (%rax,%rdx,2)    #  117   0xed6f4  4      OPC=testb_m8_imm8   
  jne .L_ed980                 #  118   0xed6f8  6      OPC=jne_label_1     
.L_ed6fe:                      #        0xed6fe  0      OPC=<label>         
  subq $0x1, %rcx              #  119   0xed6fe  4      OPC=subq_r64_imm8   
  cmpq %rbp, %rcx              #  120   0xed702  3      OPC=cmpq_r64_r64    
  jae .L_ed6f0                 #  121   0xed705  2      OPC=jae_label       
  leaq 0x1(%rcx), %r14         #  122   0xed707  4      OPC=leaq_r64_m16    
  cmpq %r14, %rbp              #  123   0xed70b  3      OPC=cmpq_r64_r64    
  jb .L_ed960                  #  124   0xed70e  6      OPC=jb_label_1      
.L_ed714:                      #        0xed714  0      OPC=<label>         
  movq 0x2ad705(%rip), %r10    #  125   0xed714  7      OPC=movq_r64_m64    
.L_ed71b:                      #        0xed71b  0      OPC=<label>         
  movq (%r10), %rdx            #  126   0xed71b  3      OPC=movq_r64_m64    
  nop                          #  127   0xed71e  1      OPC=nop             
  jmpq .L_ed732                #  128   0xed71f  2      OPC=jmpq_label      
  nop                          #  129   0xed721  1      OPC=nop             
  nop                          #  130   0xed722  1      OPC=nop             
  nop                          #  131   0xed723  1      OPC=nop             
  nop                          #  132   0xed724  1      OPC=nop             
  nop                          #  133   0xed725  1      OPC=nop             
  nop                          #  134   0xed726  1      OPC=nop             
  nop                          #  135   0xed727  1      OPC=nop             
.L_ed728:                      #        0xed728  0      OPC=<label>         
  movsbq (%rdi), %rax          #  136   0xed728  4      OPC=movsbq_r64_m8   
  testb $0x1, (%rdx,%rax,2)    #  137   0xed72c  4      OPC=testb_m8_imm8   
  jne .L_ed73b                 #  138   0xed730  2      OPC=jne_label       
.L_ed732:                      #        0xed732  0      OPC=<label>         
  addq $0x1, %rdi              #  139   0xed732  4      OPC=addq_r64_imm8   
  cmpq %r9, %rdi               #  140   0xed736  3      OPC=cmpq_r64_r64    
  jb .L_ed728                  #  141   0xed739  2      OPC=jb_label        
.L_ed73b:                      #        0xed73b  0      OPC=<label>         
  cmpq %rdi, %r9               #  142   0xed73b  3      OPC=cmpq_r64_r64    
  movq %rdi, %rbx              #  143   0xed73e  3      OPC=movq_r64_r64    
  je .L_ed670                  #  144   0xed741  6      OPC=je_label_1      
  movq %rdi, %r14              #  145   0xed747  3      OPC=movq_r64_r64    
  nop                          #  146   0xed74a  1      OPC=nop             
  nop                          #  147   0xed74b  1      OPC=nop             
  nop                          #  148   0xed74c  1      OPC=nop             
  nop                          #  149   0xed74d  1      OPC=nop             
  nop                          #  150   0xed74e  1      OPC=nop             
  nop                          #  151   0xed74f  1      OPC=nop             
.L_ed750:                      #        0xed750  0      OPC=<label>         
  addq $0x1, %r14              #  152   0xed750  4      OPC=addq_r64_imm8   
  movsbq (%r14), %rax          #  153   0xed754  4      OPC=movsbq_r64_m8   
  testb $0x1, (%rdx,%rax,2)    #  154   0xed758  4      OPC=testb_m8_imm8   
  jne .L_ed750                 #  155   0xed75c  2      OPC=jne_label       
.L_ed75e:                      #        0xed75e  0      OPC=<label>         
  leaq 0x1(%rbp,%r13,1), %rax  #  156   0xed75e  5      OPC=leaq_r64_m16    
  cmpq %r14, %rax              #  157   0xed763  3      OPC=cmpq_r64_r64    
  je .L_ed840                  #  158   0xed766  6      OPC=je_label_1      
  leaq 0x1(%rbx), %rax         #  159   0xed76c  4      OPC=leaq_r64_m16    
  movq %r14, %rdx              #  160   0xed770  3      OPC=movq_r64_r64    
  subq %rax, %rdx              #  161   0xed773  3      OPC=subq_r64_r64    
  cmpq %rsi, %rdx              #  162   0xed776  3      OPC=cmpq_r64_r64    
  jge .L_ed85b                 #  163   0xed779  6      OPC=jge_label_1     
.L_ed77f:                      #        0xed77f  0      OPC=<label>         
  cmpq %r14, %r15              #  164   0xed77f  3      OPC=cmpq_r64_r64    
  jbe .L_ed851                 #  165   0xed782  6      OPC=jbe_label_1     
  movq 0x40(%r12), %rax        #  166   0xed788  5      OPC=movq_r64_m64    
  addq $0x1, %rsi              #  167   0xed78d  4      OPC=addq_r64_imm8   
  subq %r15, %rax              #  168   0xed791  3      OPC=subq_r64_r64    
  cmpq %rsi, %rax              #  169   0xed794  3      OPC=cmpq_r64_r64    
  jle .L_eda80                 #  170   0xed797  6      OPC=jle_label_1     
  subq %r14, %r15              #  171   0xed79d  3      OPC=subq_r64_r64    
  leaq (%rbx,%rsi,1), %rdi     #  172   0xed7a0  4      OPC=leaq_r64_m16    
  movq %r14, %rsi              #  173   0xed7a4  3      OPC=movq_r64_r64    
  movq %r15, %rdx              #  174   0xed7a7  3      OPC=movq_r64_r64    
  callq .__GI_memmove          #  175   0xed7aa  5      OPC=callq_label     
  movq 0x18(%r12), %rax        #  176   0xed7af  5      OPC=movq_r64_m64    
  movq %rbp, (%rsp)            #  177   0xed7b4  4      OPC=movq_m64_r64    
  movb $0xa, (%rbx)            #  178   0xed7b8  3      OPC=movb_m8_imm8    
  leaq 0x1(%rbx,%rax,1), %r14  #  179   0xed7bb  5      OPC=leaq_r64_m16    
  leaq 0x1(%rbx), %rax         #  180   0xed7c0  4      OPC=leaq_r64_m16    
  movq %rbp, %rbx              #  181   0xed7c4  3      OPC=movq_r64_r64    
  leaq (%r14,%r15,1), %r13     #  182   0xed7c7  4      OPC=leaq_r64_m16    
  movq %r14, %rdx              #  183   0xed7cb  3      OPC=movq_r64_r64    
  subq %rax, %rdx              #  184   0xed7ce  3      OPC=subq_r64_r64    
  subq %rbp, %r13              #  185   0xed7d1  3      OPC=subq_r64_r64    
  movq %rax, %rbp              #  186   0xed7d4  3      OPC=movq_r64_r64    
.L_ed7d7:                      #        0xed7d7  0      OPC=<label>         
  movq 0x18(%r12), %rcx        #  187   0xed7d7  5      OPC=movq_r64_m64    
  cmpq %rdx, %rcx              #  188   0xed7dc  3      OPC=cmpq_r64_r64    
  jg .L_ed876                  #  189   0xed7df  6      OPC=jg_label_1      
.L_ed7e5:                      #        0xed7e5  0      OPC=<label>         
  testq %rcx, %rcx             #  190   0xed7e5  3      OPC=testq_r64_r64   
  movq %rbp, %rax              #  191   0xed7e8  3      OPC=movq_r64_r64    
  jle .L_ed808                 #  192   0xed7eb  2      OPC=jle_label       
  nop                          #  193   0xed7ed  1      OPC=nop             
  nop                          #  194   0xed7ee  1      OPC=nop             
  nop                          #  195   0xed7ef  1      OPC=nop             
.L_ed7f0:                      #        0xed7f0  0      OPC=<label>         
  addq $0x1, %rax              #  196   0xed7f0  4      OPC=addq_r64_imm8   
  movb $0x20, -0x1(%rax)       #  197   0xed7f4  4      OPC=movb_m8_imm8    
  movq %rax, %rdx              #  198   0xed7f8  3      OPC=movq_r64_r64    
  subq %rbp, %rdx              #  199   0xed7fb  3      OPC=subq_r64_r64    
  cmpq %rdx, 0x18(%r12)        #  200   0xed7fe  5      OPC=cmpq_m64_r64    
  jg .L_ed7f0                  #  201   0xed803  2      OPC=jg_label        
  movq %rax, %rbp              #  202   0xed805  3      OPC=movq_r64_r64    
.L_ed808:                      #        0xed808  0      OPC=<label>         
  cmpq %r14, %rbp              #  203   0xed808  3      OPC=cmpq_r64_r64    
  jb .L_eda20                  #  204   0xed80b  6      OPC=jb_label_1      
.L_ed811:                      #        0xed811  0      OPC=<label>         
  subq %r14, %rbx              #  205   0xed811  3      OPC=subq_r64_r64    
  movq 0x18(%r12), %rax        #  206   0xed814  5      OPC=movq_r64_m64    
  movq $0xffffffff, %rsi       #  207   0xed819  7      OPC=movq_r64_imm32  
  leaq (%rbx,%r13,1), %r15     #  208   0xed820  4      OPC=leaq_r64_m16    
  addq %rbp, %r15              #  209   0xed824  3      OPC=addq_r64_r64    
  testq %rax, %rax             #  210   0xed827  3      OPC=testq_r64_r64   
  cmoveq %rsi, %rax            #  211   0xed82a  4      OPC=cmoveq_r64_r64  
  movq %r15, 0x38(%r12)        #  212   0xed82e  5      OPC=movq_m64_r64    
  movq %rax, 0x28(%r12)        #  213   0xed833  5      OPC=movq_m64_r64    
  jmpq .L_ed5a0                #  214   0xed838  5      OPC=jmpq_label_1    
  nop                          #  215   0xed83d  1      OPC=nop             
  nop                          #  216   0xed83e  1      OPC=nop             
  nop                          #  217   0xed83f  1      OPC=nop             
.L_ed840:                      #        0xed840  0      OPC=<label>         
  movq 0x40(%r12), %rax        #  218   0xed840  5      OPC=movq_r64_m64    
  subq %rbx, %rax              #  219   0xed845  3      OPC=subq_r64_r64    
  cmpq %rsi, %rax              #  220   0xed848  3      OPC=cmpq_r64_r64    
  jle .L_ed77f                 #  221   0xed84b  6      OPC=jle_label_1     
.L_ed851:                      #        0xed851  0      OPC=<label>         
  leaq 0x1(%rbx), %rax         #  222   0xed851  4      OPC=leaq_r64_m16    
  movq %r14, %rdx              #  223   0xed855  3      OPC=movq_r64_r64    
  subq %rax, %rdx              #  224   0xed858  3      OPC=subq_r64_r64    
.L_ed85b:                      #        0xed85b  0      OPC=<label>         
  movb $0xa, (%rbx)            #  225   0xed85b  3      OPC=movb_m8_imm8    
  movq 0x18(%r12), %rcx        #  226   0xed85e  5      OPC=movq_r64_m64    
  movq %rbp, %rbx              #  227   0xed863  3      OPC=movq_r64_r64    
  movq %rbp, (%rsp)            #  228   0xed866  4      OPC=movq_m64_r64    
  movq %rax, %rbp              #  229   0xed86a  3      OPC=movq_r64_r64    
  cmpq %rdx, %rcx              #  230   0xed86d  3      OPC=cmpq_r64_r64    
  jle .L_ed7e5                 #  231   0xed870  6      OPC=jle_label_1     
.L_ed876:                      #        0xed876  0      OPC=<label>         
  movq (%rsp), %rax            #  232   0xed876  4      OPC=movq_r64_m64    
  leaq 0x1(%rax,%r13,1), %rax  #  233   0xed87a  5      OPC=leaq_r64_m16    
  cmpq %rax, %r14              #  234   0xed87f  3      OPC=cmpq_r64_r64    
  je .L_edabd                  #  235   0xed882  6      OPC=je_label_1      
.L_ed888:                      #        0xed888  0      OPC=<label>         
  testq %rcx, %rcx             #  236   0xed888  3      OPC=testq_r64_r64   
  movl $0x1, %r15d             #  237   0xed88b  6      OPC=movl_r32_imm32  
  jg .L_ed8bf                  #  238   0xed891  2      OPC=jg_label        
  jmpq .L_ed808                #  239   0xed893  5      OPC=jmpq_label_1    
  nop                          #  240   0xed898  1      OPC=nop             
  nop                          #  241   0xed899  1      OPC=nop             
  nop                          #  242   0xed89a  1      OPC=nop             
  nop                          #  243   0xed89b  1      OPC=nop             
  nop                          #  244   0xed89c  1      OPC=nop             
  nop                          #  245   0xed89d  1      OPC=nop             
  nop                          #  246   0xed89e  1      OPC=nop             
  nop                          #  247   0xed89f  1      OPC=nop             
.L_ed8a0:                      #        0xed8a0  0      OPC=<label>         
  movq %rdi, %rsi              #  248   0xed8a0  3      OPC=movq_r64_r64    
  movl $0x20, %edi             #  249   0xed8a3  5      OPC=movl_r32_imm32  
  callq .putwc_unlocked        #  250   0xed8a8  5      OPC=callq_label     
.L_ed8ad:                      #        0xed8ad  0      OPC=<label>         
  movq %r15, %rax              #  251   0xed8ad  3      OPC=movq_r64_r64    
  addq $0x1, %r15              #  252   0xed8b0  4      OPC=addq_r64_imm8   
  cmpq 0x18(%r12), %rax        #  253   0xed8b4  5      OPC=cmpq_r64_m64    
  jge .L_ed808                 #  254   0xed8b9  6      OPC=jge_label_1     
.L_ed8bf:                      #        0xed8bf  0      OPC=<label>         
  movq (%r12), %rdi            #  255   0xed8bf  4      OPC=movq_r64_m64    
  movl 0xc0(%rdi), %eax        #  256   0xed8c3  6      OPC=movl_r32_m32    
  testl %eax, %eax             #  257   0xed8c9  2      OPC=testl_r32_r32   
  jg .L_ed8a0                  #  258   0xed8cb  2      OPC=jg_label        
  movq 0x28(%rdi), %rax        #  259   0xed8cd  4      OPC=movq_r64_m64    
  cmpq 0x30(%rdi), %rax        #  260   0xed8d1  4      OPC=cmpq_r64_m64    
  jae .L_ed9b0                 #  261   0xed8d5  6      OPC=jae_label_1     
  leaq 0x1(%rax), %rcx         #  262   0xed8db  4      OPC=leaq_r64_m16    
  movq %rcx, 0x28(%rdi)        #  263   0xed8df  4      OPC=movq_m64_r64    
  movb $0x20, (%rax)           #  264   0xed8e3  3      OPC=movb_m8_imm8    
  jmpq .L_ed8ad                #  265   0xed8e6  2      OPC=jmpq_label      
  nop                          #  266   0xed8e8  1      OPC=nop             
  nop                          #  267   0xed8e9  1      OPC=nop             
  nop                          #  268   0xed8ea  1      OPC=nop             
  nop                          #  269   0xed8eb  1      OPC=nop             
  nop                          #  270   0xed8ec  1      OPC=nop             
  nop                          #  271   0xed8ed  1      OPC=nop             
  nop                          #  272   0xed8ee  1      OPC=nop             
  nop                          #  273   0xed8ef  1      OPC=nop             
.L_ed8f0:                      #        0xed8f0  0      OPC=<label>         
  movq %r15, %r13              #  274   0xed8f0  3      OPC=movq_r64_r64    
  movl $0xa, %esi              #  275   0xed8f3  5      OPC=movl_r32_imm32  
  movq %rbp, %rdi              #  276   0xed8f8  3      OPC=movq_r64_r64    
  subq %rbp, %r13              #  277   0xed8fb  3      OPC=subq_r64_r64    
  movq %r13, %rdx              #  278   0xed8fe  3      OPC=movq_r64_r64    
  callq .memchr                #  279   0xed901  5      OPC=callq_label     
  movq %rax, %r9               #  280   0xed906  3      OPC=movq_r64_r64    
  testq %r9, %r9               #  281   0xed909  3      OPC=testq_r64_r64   
  jne .L_ed65d                 #  282   0xed90c  6      OPC=jne_label_1     
.L_ed912:                      #        0xed912  0      OPC=<label>         
  movq 0x10(%r12), %r8         #  283   0xed912  5      OPC=movq_r64_m64    
  leaq (%rbx,%r13,1), %rax     #  284   0xed917  4      OPC=leaq_r64_m16    
  cmpq %r8, %rax               #  285   0xed91b  3      OPC=cmpq_r64_r64    
  jb .L_edaf5                  #  286   0xed91e  6      OPC=jb_label_1      
  movq 0x18(%r12), %rsi        #  287   0xed924  5      OPC=movq_r64_m64    
  subq $0x1, %r8               #  288   0xed929  4      OPC=subq_r64_imm8   
  testq %rsi, %rsi             #  289   0xed92d  3      OPC=testq_r64_r64   
  js .L_edae0                  #  290   0xed930  6      OPC=js_label_1      
  movq %rbp, %rax              #  291   0xed936  3      OPC=movq_r64_r64    
  movq %r15, %r9               #  292   0xed939  3      OPC=movq_r64_r64    
  subq %rbx, %rax              #  293   0xed93c  3      OPC=subq_r64_r64    
  leaq 0x1(%rax,%r8,1), %rdi   #  294   0xed93f  5      OPC=leaq_r64_m16    
  cmpq %rbp, %rdi              #  295   0xed944  3      OPC=cmpq_r64_r64    
  jae .L_ed6ce                 #  296   0xed947  6      OPC=jae_label_1     
.L_ed94d:                      #        0xed94d  0      OPC=<label>         
  movq %rdi, %rcx              #  297   0xed94d  3      OPC=movq_r64_r64    
  leaq 0x1(%rcx), %r14         #  298   0xed950  4      OPC=leaq_r64_m16    
  cmpq %r14, %rbp              #  299   0xed954  3      OPC=cmpq_r64_r64    
  jae .L_ed714                 #  300   0xed957  6      OPC=jae_label_1     
  nop                          #  301   0xed95d  1      OPC=nop             
  nop                          #  302   0xed95e  1      OPC=nop             
  nop                          #  303   0xed95f  1      OPC=nop             
.L_ed960:                      #        0xed960  0      OPC=<label>         
  movq %r14, %rbx              #  304   0xed960  3      OPC=movq_r64_r64    
  jmpq .L_ed75e                #  305   0xed963  5      OPC=jmpq_label_1    
  nop                          #  306   0xed968  1      OPC=nop             
  nop                          #  307   0xed969  1      OPC=nop             
  nop                          #  308   0xed96a  1      OPC=nop             
  nop                          #  309   0xed96b  1      OPC=nop             
  nop                          #  310   0xed96c  1      OPC=nop             
  nop                          #  311   0xed96d  1      OPC=nop             
  nop                          #  312   0xed96e  1      OPC=nop             
  nop                          #  313   0xed96f  1      OPC=nop             
.L_ed970:                      #        0xed970  0      OPC=<label>         
  movl $0x20, %esi             #  314   0xed970  5      OPC=movl_r32_imm32  
  callq .__overflow            #  315   0xed975  5      OPC=callq_label     
  jmpq .L_ed5e5                #  316   0xed97a  5      OPC=jmpq_label_1    
  nop                          #  317   0xed97f  1      OPC=nop             
.L_ed980:                      #        0xed980  0      OPC=<label>         
  leaq 0x1(%rcx), %r14         #  318   0xed980  4      OPC=leaq_r64_m16    
  cmpq %r14, %rbp              #  319   0xed984  3      OPC=cmpq_r64_r64    
  jb .L_ed99a                  #  320   0xed987  2      OPC=jb_label        
  jmpq .L_ed71b                #  321   0xed989  5      OPC=jmpq_label_1    
  xchgw %ax, %ax               #  322   0xed98e  2      OPC=xchgw_ax_r16    
.L_ed990:                      #        0xed990  0      OPC=<label>         
  movsbq (%rcx), %rdx          #  323   0xed990  4      OPC=movsbq_r64_m8   
  testb $0x1, (%rax,%rdx,2)    #  324   0xed994  4      OPC=testb_m8_imm8   
  je .L_ed9a3                  #  325   0xed998  2      OPC=je_label        
.L_ed99a:                      #        0xed99a  0      OPC=<label>         
  subq $0x1, %rcx              #  326   0xed99a  4      OPC=subq_r64_imm8   
  cmpq %rbp, %rcx              #  327   0xed99e  3      OPC=cmpq_r64_r64    
  jae .L_ed990                 #  328   0xed9a1  2      OPC=jae_label       
.L_ed9a3:                      #        0xed9a3  0      OPC=<label>         
  leaq 0x1(%rcx), %rbx         #  329   0xed9a3  4      OPC=leaq_r64_m16    
  jmpq .L_ed75e                #  330   0xed9a7  5      OPC=jmpq_label_1    
  nop                          #  331   0xed9ac  1      OPC=nop             
  nop                          #  332   0xed9ad  1      OPC=nop             
  nop                          #  333   0xed9ae  1      OPC=nop             
  nop                          #  334   0xed9af  1      OPC=nop             
.L_ed9b0:                      #        0xed9b0  0      OPC=<label>         
  movl $0x20, %esi             #  335   0xed9b0  5      OPC=movl_r32_imm32  
  callq .__overflow            #  336   0xed9b5  5      OPC=callq_label     
  jmpq .L_ed8ad                #  337   0xed9ba  5      OPC=jmpq_label_1    
  nop                          #  338   0xed9bf  1      OPC=nop             
.L_ed9c0:                      #        0xed9c0  0      OPC=<label>         
  cmpq %r9, %r15               #  339   0xed9c0  3      OPC=cmpq_r64_r64    
  jbe .L_edad3                 #  340   0xed9c3  6      OPC=jbe_label_1     
  movq %r8, %rdi               #  341   0xed9c9  3      OPC=movq_r64_r64    
  movq %r15, %rdx              #  342   0xed9cc  3      OPC=movq_r64_r64    
  movq %r9, %rsi               #  343   0xed9cf  3      OPC=movq_r64_r64    
  subq %rbx, %rdi              #  344   0xed9d2  3      OPC=subq_r64_r64    
  subq %r9, %rdx               #  345   0xed9d5  3      OPC=subq_r64_r64    
  movq %r8, 0x8(%rsp)          #  346   0xed9d8  5      OPC=movq_m64_r64    
  addq %rbp, %rdi              #  347   0xed9dd  3      OPC=addq_r64_r64    
  movq %r9, (%rsp)             #  348   0xed9e0  4      OPC=movq_m64_r64    
  callq .__GI_memmove          #  349   0xed9e4  5      OPC=callq_label     
  movq 0x8(%rsp), %r8          #  350   0xed9e9  5      OPC=movq_r64_m64    
  movq (%rsp), %r9             #  351   0xed9ee  4      OPC=movq_r64_m64    
  subq 0x28(%r12), %r8         #  352   0xed9f2  5      OPC=subq_r64_m64    
  addq 0x38(%r12), %r9         #  353   0xed9f7  5      OPC=addq_r64_m64    
  movq $0x0, 0x28(%r12)        #  354   0xed9fc  9      OPC=movq_m64_imm32  
  addq %rbp, %r8               #  355   0xeda05  3      OPC=addq_r64_r64    
  movq %r9, %r15               #  356   0xeda08  3      OPC=movq_r64_r64    
  addq %r14, %rbp              #  357   0xeda0b  3      OPC=addq_r64_r64    
  subq %r8, %r15               #  358   0xeda0e  3      OPC=subq_r64_r64    
  movq %r15, 0x38(%r12)        #  359   0xeda11  5      OPC=movq_m64_r64    
  jmpq .L_ed5a0                #  360   0xeda16  5      OPC=jmpq_label_1    
  nop                          #  361   0xeda1b  1      OPC=nop             
  nop                          #  362   0xeda1c  1      OPC=nop             
  nop                          #  363   0xeda1d  1      OPC=nop             
  nop                          #  364   0xeda1e  1      OPC=nop             
  nop                          #  365   0xeda1f  1      OPC=nop             
.L_eda20:                      #        0xeda20  0      OPC=<label>         
  movq (%rsp), %rdx            #  366   0xeda20  4      OPC=movq_r64_m64    
  movq %r14, %rsi              #  367   0xeda24  3      OPC=movq_r64_r64    
  movq %rbp, %rdi              #  368   0xeda27  3      OPC=movq_r64_r64    
  addq %r13, %rdx              #  369   0xeda2a  3      OPC=addq_r64_r64    
  subq %r14, %rdx              #  370   0xeda2d  3      OPC=subq_r64_r64    
  callq .__GI_memmove          #  371   0xeda30  5      OPC=callq_label     
  jmpq .L_ed811                #  372   0xeda35  5      OPC=jmpq_label_1    
  nop                          #  373   0xeda3a  1      OPC=nop             
  nop                          #  374   0xeda3b  1      OPC=nop             
  nop                          #  375   0xeda3c  1      OPC=nop             
  nop                          #  376   0xeda3d  1      OPC=nop             
  nop                          #  377   0xeda3e  1      OPC=nop             
  nop                          #  378   0xeda3f  1      OPC=nop             
.L_eda40:                      #        0xeda40  0      OPC=<label>         
  leaq (%rbp,%r13,1), %rbx     #  379   0xeda40  5      OPC=leaq_r64_m16    
  movq %r15, %rdx              #  380   0xeda45  3      OPC=movq_r64_r64    
  movq %rbp, %rsi              #  381   0xeda48  3      OPC=movq_r64_r64    
  subq %rbp, %rdx              #  382   0xeda4b  3      OPC=subq_r64_r64    
  movq %rbx, %rdi              #  383   0xeda4e  3      OPC=movq_r64_r64    
  callq .__GI_memmove          #  384   0xeda51  5      OPC=callq_label     
  addq %r13, 0x38(%r12)        #  385   0xeda56  5      OPC=addq_m64_r64    
  movq %rbp, %rdi              #  386   0xeda5b  3      OPC=movq_r64_r64    
  movq %r13, %rdx              #  387   0xeda5e  3      OPC=movq_r64_r64    
  movl $0x20, %esi             #  388   0xeda61  5      OPC=movl_r32_imm32  
  movq %rbx, %rbp              #  389   0xeda66  3      OPC=movq_r64_r64    
  movq %r13, %rbx              #  390   0xeda69  3      OPC=movq_r64_r64    
  callq .__GI_memset           #  391   0xeda6c  5      OPC=callq_label     
  movq %r13, 0x28(%r12)        #  392   0xeda71  5      OPC=movq_m64_r64    
  movq 0x38(%r12), %r15        #  393   0xeda76  5      OPC=movq_r64_m64    
  jmpq .L_ed62b                #  394   0xeda7b  5      OPC=jmpq_label_1    
.L_eda80:                      #        0xeda80  0      OPC=<label>         
  movq 0x30(%r12), %rcx        #  395   0xeda80  5      OPC=movq_r64_m64    
  movq (%r12), %rdi            #  396   0xeda85  4      OPC=movq_r64_m64    
  leaq 0x7859a(%rip), %rsi     #  397   0xeda89  7      OPC=leaq_r64_m16    
  xorl %eax, %eax              #  398   0xeda90  2      OPC=xorl_r32_r32    
  subq %rcx, %rbx              #  399   0xeda92  3      OPC=subq_r64_r64    
  movq %rbx, %rdx              #  400   0xeda95  3      OPC=movq_r64_r64    
  callq .__fxprintf            #  401   0xeda98  5      OPC=callq_label     
  movq 0x30(%r12), %rax        #  402   0xeda9d  5      OPC=movq_r64_m64    
  movq %r14, %rdx              #  403   0xedaa2  3      OPC=movq_r64_r64    
  subq %rax, %rbp              #  404   0xedaa5  3      OPC=subq_r64_r64    
  movq %rax, (%rsp)            #  405   0xedaa8  4      OPC=movq_m64_r64    
  movq %rax, %rbx              #  406   0xedaac  3      OPC=movq_r64_r64    
  addq %rbp, %r13              #  407   0xedaaf  3      OPC=addq_r64_r64    
  subq %rax, %rdx              #  408   0xedab2  3      OPC=subq_r64_r64    
  movq %rax, %rbp              #  409   0xedab5  3      OPC=movq_r64_r64    
  jmpq .L_ed7d7                #  410   0xedab8  5      OPC=jmpq_label_1    
.L_edabd:                      #        0xedabd  0      OPC=<label>         
  movq 0x40(%r12), %rax        #  411   0xedabd  5      OPC=movq_r64_m64    
  subq %r14, %rax              #  412   0xedac2  3      OPC=subq_r64_r64    
  cmpq %rax, %rcx              #  413   0xedac5  3      OPC=cmpq_r64_r64    
  jle .L_ed7e5                 #  414   0xedac8  6      OPC=jle_label_1     
  jmpq .L_ed888                #  415   0xedace  5      OPC=jmpq_label_1    
.L_edad3:                      #        0xedad3  0      OPC=<label>         
  leaq (%rbx,%r13,1), %rax     #  416   0xedad3  4      OPC=leaq_r64_m16    
  nop                          #  417   0xedad7  1      OPC=nop             
  nop                          #  418   0xedad8  1      OPC=nop             
  nop                          #  419   0xedad9  1      OPC=nop             
  nop                          #  420   0xedada  1      OPC=nop             
  nop                          #  421   0xedadb  1      OPC=nop             
  nop                          #  422   0xedadc  1      OPC=nop             
  nop                          #  423   0xedadd  1      OPC=nop             
  nop                          #  424   0xedade  1      OPC=nop             
  nop                          #  425   0xedadf  1      OPC=nop             
.L_edae0:                      #        0xedae0  0      OPC=<label>         
  subq %rax, %r8               #  426   0xedae0  3      OPC=subq_r64_r64    
  movq %rax, 0x28(%r12)        #  427   0xedae3  5      OPC=movq_m64_r64    
  addq %r8, %r15               #  428   0xedae8  3      OPC=addq_r64_r64    
  movq %r15, 0x38(%r12)        #  429   0xedaeb  5      OPC=movq_m64_r64    
  jmpq .L_ed68b                #  430   0xedaf0  5      OPC=jmpq_label_1    
.L_edaf5:                      #        0xedaf5  0      OPC=<label>         
  movq %rax, 0x28(%r12)        #  431   0xedaf5  5      OPC=movq_m64_r64    
  movq 0x38(%r12), %r15        #  432   0xedafa  5      OPC=movq_r64_m64    
  jmpq .L_ed68b                #  433   0xedaff  5      OPC=jmpq_label_1    
  nop                          #  434   0xedb04  1      OPC=nop             
  nop                          #  435   0xedb05  1      OPC=nop             
  nop                          #  436   0xedb06  1      OPC=nop             
  nop                          #  437   0xedb07  1      OPC=nop             
  nop                          #  438   0xedb08  1      OPC=nop             
  nop                          #  439   0xedb09  1      OPC=nop             
  nop                          #  440   0xedb0a  1      OPC=nop             
  nop                          #  441   0xedb0b  1      OPC=nop             
  nop                          #  442   0xedb0c  1      OPC=nop             
  nop                          #  443   0xedb0d  1      OPC=nop             
  nop                          #  444   0xedb0e  1      OPC=nop             
  nop                          #  445   0xedb0f  1      OPC=nop             
                                                                            
.size __argp_fmtstream_update, .-__argp_fmtstream_update
