  .text
  .globl sift_states_backward
  .type sift_states_backward, @function

#! file-offset 0xc7500
#! rip-offset  0xc7500
#! capacity    816 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
.sift_states_backward:                    #        0xc7500  0      OPC=<label>         
  pushq %r15                              #  1     0xc7500  2      OPC=pushq_r64_1     
  pushq %r14                              #  2     0xc7502  2      OPC=pushq_r64_1     
  movq %rsi, %r14                         #  3     0xc7504  3      OPC=movq_r64_r64    
  pushq %r13                              #  4     0xc7507  2      OPC=pushq_r64_1     
  pushq %r12                              #  5     0xc7509  2      OPC=pushq_r64_1     
  pushq %rbp                              #  6     0xc750b  1      OPC=pushq_r64_1     
  pushq %rbx                              #  7     0xc750c  1      OPC=pushq_r64_1     
  movq %rdi, %rbp                         #  8     0xc750d  3      OPC=movq_r64_r64    
  subq $0x68, %rsp                        #  9     0xc7510  4      OPC=subq_r64_imm8   
  movl 0x14(%rsi), %eax                   #  10    0xc7514  3      OPC=movl_r32_m32    
  movl 0x10(%rsi), %ebx                   #  11    0xc7517  3      OPC=movl_r32_m32    
  movq %rdi, 0x10(%rsp)                   #  12    0xc751a  5      OPC=movq_m64_r64    
  movl $0x4, %edi                         #  13    0xc751f  5      OPC=movl_r32_imm32  
  movl $0x1, 0x50(%rsp)                   #  14    0xc7524  8      OPC=movl_m32_imm32  
  movl $0x1, 0x54(%rsp)                   #  15    0xc752c  8      OPC=movl_m32_imm32  
  movl %eax, %r15d                        #  16    0xc7534  3      OPC=movl_r32_r32    
  movl %eax, 0xc(%rsp)                    #  17    0xc7537  4      OPC=movl_m32_r32    
  callq .memalign_plt                     #  18    0xc753b  5      OPC=callq_label     
  testq %rax, %rax                        #  19    0xc7540  3      OPC=testq_r64_r64   
  movq %rax, 0x58(%rsp)                   #  20    0xc7543  5      OPC=movq_m64_r64    
  je .L_c77f5                             #  21    0xc7548  6      OPC=je_label_1      
  leaq 0x50(%rsp), %rcx                   #  22    0xc754e  5      OPC=leaq_r64_m16    
  movl %ebx, (%rax)                       #  23    0xc7553  2      OPC=movl_m32_r32    
  movl %r15d, %edx                        #  24    0xc7555  3      OPC=movl_r32_r32    
  movq %r14, %rsi                         #  25    0xc7558  3      OPC=movq_r64_r64    
  movq %rbp, %rdi                         #  26    0xc755b  3      OPC=movq_r64_r64    
  movq %rcx, 0x28(%rsp)                   #  27    0xc755e  5      OPC=movq_m64_r64    
  callq .update_cur_sifted_state          #  28    0xc7563  5      OPC=callq_label     
  testl %eax, %eax                        #  29    0xc7568  2      OPC=testl_r32_r32   
  movl %eax, 0x4c(%rsp)                   #  30    0xc756a  4      OPC=movl_m32_r32    
  jne .L_c77d8                            #  31    0xc756e  6      OPC=jne_label_1     
  movl 0xc(%rsp), %ebx                    #  32    0xc7574  4      OPC=movl_r32_m32    
  movl $0x0, 0x48(%rsp)                   #  33    0xc7578  8      OPC=movl_m32_imm32  
  movslq %ebx, %rax                       #  34    0xc7580  3      OPC=movslq_r64_r32  
  shlq $0x3, %rax                         #  35    0xc7583  4      OPC=shlq_r64_imm8   
  testl %ebx, %ebx                        #  36    0xc7587  2      OPC=testl_r32_r32   
  movq %rax, 0x30(%rsp)                   #  37    0xc7589  5      OPC=movq_m64_r64    
  leaq 0x18(%r14), %rax                   #  38    0xc758e  4      OPC=leaq_r64_m16    
  movq %rax, 0x40(%rsp)                   #  39    0xc7592  5      OPC=movq_m64_r64    
  jle .L_c77d8                            #  40    0xc7597  6      OPC=jle_label_1     
  nop                                     #  41    0xc759d  1      OPC=nop             
  nop                                     #  42    0xc759e  1      OPC=nop             
  nop                                     #  43    0xc759f  1      OPC=nop             
.L_c75a0:                                 #        0xc75a0  0      OPC=<label>         
  movl 0x48(%rsp), %edx                   #  44    0xc75a0  4      OPC=movl_r32_m32    
  movq 0x30(%rsp), %rax                   #  45    0xc75a4  5      OPC=movq_r64_m64    
  movq (%r14), %rdi                       #  46    0xc75a9  3      OPC=movq_r64_m64    
  movq 0x10(%rsp), %rbx                   #  47    0xc75ac  5      OPC=movq_r64_m64    
  addl $0x1, %edx                         #  48    0xc75b1  3      OPC=addl_r32_imm8   
  cmpq $0x0, (%rdi,%rax,1)                #  49    0xc75b4  5      OPC=cmpq_m64_imm8   
  movl $0x0, %eax                         #  50    0xc75b9  5      OPC=movl_r32_imm32  
  cmovel %edx, %eax                       #  51    0xc75be  3      OPC=cmovel_r32_r32  
  cmpl 0xa8(%rbx), %eax                   #  52    0xc75c1  6      OPC=cmpl_r32_m32    
  movl %eax, 0x48(%rsp)                   #  53    0xc75c7  4      OPC=movl_m32_r32    
  jg .L_c7809                             #  54    0xc75cb  6      OPC=jg_label_1      
  movq 0x10(%rsp), %rax                   #  55    0xc75d1  5      OPC=movq_r64_m64    
  movq 0x30(%rsp), %rcx                   #  56    0xc75d6  5      OPC=movq_r64_m64    
  subl $0x1, 0xc(%rsp)                    #  57    0xc75db  5      OPC=subl_m32_imm8   
  movl $0x0, 0x54(%rsp)                   #  58    0xc75e0  8      OPC=movl_m32_imm32  
  movq 0x88(%rax), %rax                   #  59    0xc75e8  7      OPC=movq_r64_m64    
  movq -0x8(%rax,%rcx,1), %r12            #  60    0xc75ef  5      OPC=movq_r64_m64    
  testq %r12, %r12                        #  61    0xc75f4  3      OPC=testq_r64_r64   
  je .L_c7780                             #  62    0xc75f7  6      OPC=je_label_1      
  movl 0x1c(%r12), %ecx                   #  63    0xc75fd  5      OPC=movl_r32_m32    
  movq 0x10(%rsp), %rax                   #  64    0xc7602  5      OPC=movq_r64_m64    
  testl %ecx, %ecx                        #  65    0xc7607  2      OPC=testl_r32_r32   
  movq 0x70(%rax), %r13                   #  66    0xc7609  4      OPC=movq_r64_m64    
  jle .L_c7780                            #  67    0xc760d  6      OPC=jle_label_1     
  xorl %ebx, %ebx                         #  68    0xc7613  2      OPC=xorl_r32_r32    
  jmpq .L_c76b5                           #  69    0xc7615  5      OPC=jmpq_label_1    
  nop                                     #  70    0xc761a  1      OPC=nop             
  nop                                     #  71    0xc761b  1      OPC=nop             
  nop                                     #  72    0xc761c  1      OPC=nop             
  nop                                     #  73    0xc761d  1      OPC=nop             
  nop                                     #  74    0xc761e  1      OPC=nop             
  nop                                     #  75    0xc761f  1      OPC=nop             
.L_c7620:                                 #        0xc7620  0      OPC=<label>         
  movl 0xc(%rsp), %edx                    #  76    0xc7620  4      OPC=movl_r32_m32    
  movq 0x10(%rsp), %rdi                   #  77    0xc7624  5      OPC=movq_r64_m64    
  callq .check_node_accept                #  78    0xc7629  5      OPC=callq_label     
  testl %eax, %eax                        #  79    0xc762e  2      OPC=testl_r32_r32   
  je .L_c76a3                             #  80    0xc7630  2      OPC=je_label        
  movq (%r14), %rax                       #  81    0xc7632  3      OPC=movq_r64_m64    
  movq 0x30(%rsp), %rcx                   #  82    0xc7635  5      OPC=movq_r64_m64    
  movq (%rax,%rcx,1), %rax                #  83    0xc763a  4      OPC=movq_r64_m64    
  testq %rax, %rax                        #  84    0xc763e  3      OPC=testq_r64_r64   
  je .L_c76a3                             #  85    0xc7641  2      OPC=je_label        
  movq 0x18(%r13), %rdx                   #  86    0xc7643  4      OPC=movq_r64_m64    
  movl 0xc(%rax), %edi                    #  87    0xc7647  3      OPC=movl_r32_m32    
  leaq 0x10(%rax), %rsi                   #  88    0xc764a  4      OPC=leaq_r64_m16    
  movl (%rdx,%r15,4), %edx                #  89    0xc764e  4      OPC=movl_r32_m32    
  callq .re_node_set_contains_isra_3      #  90    0xc7652  5      OPC=callq_label     
  testl %eax, %eax                        #  91    0xc7657  2      OPC=testl_r32_r32   
  je .L_c76a3                             #  92    0xc7659  2      OPC=je_label        
  movl $0x1, %ecx                         #  93    0xc765b  5      OPC=movl_r32_imm32  
.L_c7660:                                 #        0xc7660  0      OPC=<label>         
  movl 0x1c(%r14), %eax                   #  94    0xc7660  4      OPC=movl_r32_m32    
  testl %eax, %eax                        #  95    0xc7664  2      OPC=testl_r32_r32   
  je .L_c768e                             #  96    0xc7666  2      OPC=je_label        
  movq 0x18(%r13), %rax                   #  97    0xc7668  4      OPC=movq_r64_m64    
  movl 0xc(%rsp), %r9d                    #  98    0xc766c  5      OPC=movl_r32_m32    
  movl %ebp, %r8d                         #  99    0xc7671  3      OPC=movl_r32_r32    
  movq 0x40(%rsp), %rsi                   #  100   0xc7674  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %rdi                   #  101   0xc7679  5      OPC=movq_r64_m64    
  movl (%rax,%r15,4), %edx                #  102   0xc767e  4      OPC=movl_r32_m32    
  addl %r9d, %ecx                         #  103   0xc7682  3      OPC=addl_r32_r32    
  callq .check_dst_limits                 #  104   0xc7685  5      OPC=callq_label     
  testl %eax, %eax                        #  105   0xc768a  2      OPC=testl_r32_r32   
  jne .L_c76a3                            #  106   0xc768c  2      OPC=jne_label       
.L_c768e:                                 #        0xc768e  0      OPC=<label>         
  movq 0x28(%rsp), %rdi                   #  107   0xc768e  5      OPC=movq_r64_m64    
  movl %ebp, %esi                         #  108   0xc7693  2      OPC=movl_r32_r32    
  callq .re_node_set_insert               #  109   0xc7695  5      OPC=callq_label     
  cmpl $0xffffffff, %eax                  #  110   0xc769a  6      OPC=cmpl_r32_imm32  
  nop                                     #  111   0xc76a0  1      OPC=nop             
  nop                                     #  112   0xc76a1  1      OPC=nop             
  nop                                     #  113   0xc76a2  1      OPC=nop             
  je .L_c77d0                             #  114   0xc76a3  6      OPC=je_label_1      
.L_c76a3:                                 #        0xc76a9  0      OPC=<label>         
  leal 0x1(%rbx), %eax                    #  115   0xc76a9  3      OPC=leal_r32_m16    
  addq $0x1, %rbx                         #  116   0xc76ac  4      OPC=addq_r64_imm8   
  cmpl 0x1c(%r12), %eax                   #  117   0xc76b0  5      OPC=cmpl_r32_m32    
  jge .L_c7780                            #  118   0xc76b5  6      OPC=jge_label_1     
.L_c76b5:                                 #        0xc76bb  0      OPC=<label>         
  movq 0x20(%r12), %rax                   #  119   0xc76bb  5      OPC=movq_r64_m64    
  movslq (%rax,%rbx,4), %r15              #  120   0xc76c0  4      OPC=movslq_r64_m32  
  movq %r15, %r10                         #  121   0xc76c4  3      OPC=movq_r64_r64    
  movq %r15, %rbp                         #  122   0xc76c7  3      OPC=movq_r64_r64    
  shlq $0x4, %r10                         #  123   0xc76ca  4      OPC=shlq_r64_imm8   
  movq %r10, %rsi                         #  124   0xc76ce  3      OPC=movq_r64_r64    
  addq (%r13), %rsi                       #  125   0xc76d1  4      OPC=addq_r64_m64    
  testb $0x10, 0xa(%rsi)                  #  126   0xc76d5  4      OPC=testb_m8_imm8   
  je .L_c7620                             #  127   0xc76d9  6      OPC=je_label_1      
  movl 0x14(%r14), %eax                   #  128   0xc76df  4      OPC=movl_r32_m32    
  movl 0xc(%rsp), %r8d                    #  129   0xc76e3  5      OPC=movl_r32_m32    
  movl %r15d, %edx                        #  130   0xc76e8  3      OPC=movl_r32_r32    
  movq %r10, 0x18(%rsp)                   #  131   0xc76eb  5      OPC=movq_m64_r64    
  movl %eax, 0x20(%rsp)                   #  132   0xc76f0  4      OPC=movl_m32_r32    
  movq 0x10(%rsp), %rax                   #  133   0xc76f4  5      OPC=movq_r64_m64    
  movq 0x70(%rax), %r11                   #  134   0xc76f9  4      OPC=movq_r64_m64    
  movq %rax, %rcx                         #  135   0xc76fd  3      OPC=movq_r64_r64    
  movq (%r11), %rdi                       #  136   0xc7700  3      OPC=movq_r64_m64    
  leaq 0xc8(%r11), %rsi                   #  137   0xc7703  7      OPC=leaq_r64_m16    
  movq %r11, 0x38(%rsp)                   #  138   0xc770a  5      OPC=movq_m64_r64    
  callq .check_node_accept_bytes_isra_28  #  139   0xc770f  5      OPC=callq_label     
  cmpl $0x0, %eax                         #  140   0xc7714  3      OPC=cmpl_r32_imm8   
  movl %eax, %ecx                         #  141   0xc7717  2      OPC=movl_r32_r32    
  movq 0x18(%rsp), %r10                   #  142   0xc7719  5      OPC=movq_r64_m64    
  jle .L_c77b8                            #  143   0xc771e  6      OPC=jle_label_1     
  movl 0xc(%rsp), %eax                    #  144   0xc7724  4      OPC=movl_r32_m32    
  addl %ecx, %eax                         #  145   0xc7728  2      OPC=addl_r32_r32    
  cmpl %eax, 0x20(%rsp)                   #  146   0xc772a  4      OPC=cmpl_m32_r32    
  jl .L_c7660                             #  147   0xc772e  6      OPC=jl_label_1      
  movq (%r14), %rdx                       #  148   0xc7734  3      OPC=movq_r64_m64    
  cltq                                    #  149   0xc7737  2      OPC=cltq            
  movq 0x38(%rsp), %r11                   #  150   0xc7739  5      OPC=movq_r64_m64    
  movq (%rdx,%rax,8), %rax                #  151   0xc773e  4      OPC=movq_r64_m64    
  testq %rax, %rax                        #  152   0xc7742  3      OPC=testq_r64_r64   
  je .L_c77c0                             #  153   0xc7745  2      OPC=je_label        
  movq 0x18(%r11), %rdx                   #  154   0xc7747  4      OPC=movq_r64_m64    
  movl 0xc(%rax), %edi                    #  155   0xc774b  3      OPC=movl_r32_m32    
  leaq 0x10(%rax), %rsi                   #  156   0xc774e  4      OPC=leaq_r64_m16    
  movl %ecx, 0x18(%rsp)                   #  157   0xc7752  4      OPC=movl_m32_r32    
  movq %r10, 0x20(%rsp)                   #  158   0xc7756  5      OPC=movq_m64_r64    
  movl (%rdx,%r15,4), %edx                #  159   0xc775b  4      OPC=movl_r32_m32    
  callq .re_node_set_contains_isra_3      #  160   0xc775f  5      OPC=callq_label     
  testl %eax, %eax                        #  161   0xc7764  2      OPC=testl_r32_r32   
  movl 0x18(%rsp), %ecx                   #  162   0xc7766  4      OPC=movl_r32_m32    
  jne .L_c7660                            #  163   0xc776a  6      OPC=jne_label_1     
  movq 0x20(%rsp), %r10                   #  164   0xc7770  5      OPC=movq_r64_m64    
  movq %r10, %rsi                         #  165   0xc7775  3      OPC=movq_r64_r64    
  addq (%r13), %rsi                       #  166   0xc7778  4      OPC=addq_r64_m64    
  jmpq .L_c7620                           #  167   0xc777c  5      OPC=jmpq_label_1    
  nop                                     #  168   0xc7781  1      OPC=nop             
  nop                                     #  169   0xc7782  1      OPC=nop             
  nop                                     #  170   0xc7783  1      OPC=nop             
  nop                                     #  171   0xc7784  1      OPC=nop             
  nop                                     #  172   0xc7785  1      OPC=nop             
.L_c7780:                                 #        0xc7786  0      OPC=<label>         
  movq 0x28(%rsp), %rcx                   #  173   0xc7786  5      OPC=movq_r64_m64    
  movl 0xc(%rsp), %edx                    #  174   0xc778b  4      OPC=movl_r32_m32    
  movq %r14, %rsi                         #  175   0xc778f  3      OPC=movq_r64_r64    
  movq 0x10(%rsp), %rdi                   #  176   0xc7792  5      OPC=movq_r64_m64    
  callq .update_cur_sifted_state          #  177   0xc7797  5      OPC=callq_label     
  testl %eax, %eax                        #  178   0xc779c  2      OPC=testl_r32_r32   
  jne .L_c7823                            #  179   0xc779e  6      OPC=jne_label_1     
  movl 0xc(%rsp), %edx                    #  180   0xc77a4  4      OPC=movl_r32_m32    
  subq $0x8, 0x30(%rsp)                   #  181   0xc77a8  6      OPC=subq_m64_imm8   
  testl %edx, %edx                        #  182   0xc77ae  2      OPC=testl_r32_r32   
  jne .L_c75a0                            #  183   0xc77b0  6      OPC=jne_label_1     
  jmpq .L_c77d8                           #  184   0xc77b6  2      OPC=jmpq_label      
  nop                                     #  185   0xc77b8  1      OPC=nop             
  nop                                     #  186   0xc77b9  1      OPC=nop             
  nop                                     #  187   0xc77ba  1      OPC=nop             
  nop                                     #  188   0xc77bb  1      OPC=nop             
  nop                                     #  189   0xc77bc  1      OPC=nop             
  nop                                     #  190   0xc77bd  1      OPC=nop             
.L_c77b8:                                 #        0xc77be  0      OPC=<label>         
  jne .L_c7660                            #  191   0xc77be  6      OPC=jne_label_1     
  xchgw %ax, %ax                          #  192   0xc77c4  2      OPC=xchgw_ax_r16    
.L_c77c0:                                 #        0xc77c6  0      OPC=<label>         
  movq %r10, %rsi                         #  193   0xc77c6  3      OPC=movq_r64_r64    
  addq (%r13), %rsi                       #  194   0xc77c9  4      OPC=addq_r64_m64    
  jmpq .L_c7620                           #  195   0xc77cd  5      OPC=jmpq_label_1    
  nop                                     #  196   0xc77d2  1      OPC=nop             
  nop                                     #  197   0xc77d3  1      OPC=nop             
  nop                                     #  198   0xc77d4  1      OPC=nop             
  nop                                     #  199   0xc77d5  1      OPC=nop             
.L_c77d0:                                 #        0xc77d6  0      OPC=<label>         
  movl $0xc, 0x4c(%rsp)                   #  200   0xc77d6  8      OPC=movl_m32_imm32  
.L_c77d8:                                 #        0xc77de  0      OPC=<label>         
  movq 0x58(%rsp), %rdi                   #  201   0xc77de  5      OPC=movq_r64_m64    
  callq .L_1f8c0                          #  202   0xc77e3  5      OPC=callq_label     
  movl 0x4c(%rsp), %eax                   #  203   0xc77e8  4      OPC=movl_r32_m32    
.L_c77e6:                                 #        0xc77ec  0      OPC=<label>         
  addq $0x68, %rsp                        #  204   0xc77ec  4      OPC=addq_r64_imm8   
  popq %rbx                               #  205   0xc77f0  1      OPC=popq_r64_1      
  popq %rbp                               #  206   0xc77f1  1      OPC=popq_r64_1      
  popq %r12                               #  207   0xc77f2  2      OPC=popq_r64_1      
  popq %r13                               #  208   0xc77f4  2      OPC=popq_r64_1      
  popq %r14                               #  209   0xc77f6  2      OPC=popq_r64_1      
  popq %r15                               #  210   0xc77f8  2      OPC=popq_r64_1      
  retq                                    #  211   0xc77fa  1      OPC=retq            
.L_c77f5:                                 #        0xc77fb  0      OPC=<label>         
  addq $0x68, %rsp                        #  212   0xc77fb  4      OPC=addq_r64_imm8   
  movl $0xc, %eax                         #  213   0xc77ff  5      OPC=movl_r32_imm32  
  popq %rbx                               #  214   0xc7804  1      OPC=popq_r64_1      
  popq %rbp                               #  215   0xc7805  1      OPC=popq_r64_1      
  popq %r12                               #  216   0xc7806  2      OPC=popq_r64_1      
  popq %r13                               #  217   0xc7808  2      OPC=popq_r64_1      
  popq %r14                               #  218   0xc780a  2      OPC=popq_r64_1      
  popq %r15                               #  219   0xc780c  2      OPC=popq_r64_1      
  retq                                    #  220   0xc780e  1      OPC=retq            
.L_c7809:                                 #        0xc780f  0      OPC=<label>         
  movq 0x30(%rsp), %rdx                   #  221   0xc780f  5      OPC=movq_r64_m64    
  xorl %esi, %esi                         #  222   0xc7814  2      OPC=xorl_r32_r32    
  callq .__GI_memset                      #  223   0xc7816  5      OPC=callq_label     
  movq 0x58(%rsp), %rdi                   #  224   0xc781b  5      OPC=movq_r64_m64    
  callq .L_1f8c0                          #  225   0xc7820  5      OPC=callq_label     
  xorl %eax, %eax                         #  226   0xc7825  2      OPC=xorl_r32_r32    
  jmpq .L_c77e6                           #  227   0xc7827  2      OPC=jmpq_label      
.L_c7823:                                 #        0xc7829  0      OPC=<label>         
  movl %eax, 0x4c(%rsp)                   #  228   0xc7829  4      OPC=movl_m32_r32    
  jmpq .L_c77d8                           #  229   0xc782d  2      OPC=jmpq_label      
  nop                                     #  230   0xc782f  1      OPC=nop             
  nop                                     #  231   0xc7830  1      OPC=nop             
  nop                                     #  232   0xc7831  1      OPC=nop             
  nop                                     #  233   0xc7832  1      OPC=nop             
  nop                                     #  234   0xc7833  1      OPC=nop             
  nop                                     #  235   0xc7834  1      OPC=nop             
  nop                                     #  236   0xc7835  1      OPC=nop             
                                                                                       
.size sift_states_backward, .-sift_states_backward
