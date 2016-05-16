  .text
  .globl memchr
  .type memchr, @function

#! file-offset 0x7cfe0
#! rip-offset  0x7cfe0
#! capacity    848 bytes

# Text                           #  Line  RIP      Bytes  Opcode                   
.memchr:                         #        0x7cfe0  0      OPC=<label>              
  movq %rsi, %xmm1               #  1     0x7cfe0  5      OPC=movq_xmm_r64         
  movq %rdi, %rcx                #  2     0x7cfe5  3      OPC=movq_r64_r64         
  punpcklbw %xmm1, %xmm1         #  3     0x7cfe8  4      OPC=punpcklbw_xmm_xmm    
  testq %rdx, %rdx               #  4     0x7cfec  3      OPC=testq_r64_r64        
  je .L_7d320                    #  5     0x7cfef  6      OPC=je_label_1           
  punpcklbw %xmm1, %xmm1         #  6     0x7cff5  4      OPC=punpcklbw_xmm_xmm    
  andq $0x3f, %rcx               #  7     0x7cff9  4      OPC=andq_r64_imm8        
  pshufd $0x0, %xmm1, %xmm1      #  8     0x7cffd  5      OPC=pshufd_xmm_xmm_imm8  
  cmpq $0x30, %rcx               #  9     0x7d002  4      OPC=cmpq_r64_imm8        
  ja .L_7d050                    #  10    0x7d006  2      OPC=ja_label             
  movdqu (%rdi), %xmm0           #  11    0x7d008  4      OPC=movdqu_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  12    0x7d00c  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm0, %eax           #  13    0x7d010  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  14    0x7d014  2      OPC=testl_r32_r32        
  jne .L_7d2e0                   #  15    0x7d016  6      OPC=jne_label_1          
  subq $0x10, %rdx               #  16    0x7d01c  4      OPC=subq_r64_imm8        
  jbe .L_7d320                   #  17    0x7d020  6      OPC=jbe_label_1          
  addq $0x10, %rdi               #  18    0x7d026  4      OPC=addq_r64_imm8        
  andq $0xf, %rcx                #  19    0x7d02a  4      OPC=andq_r64_imm8        
  andq $0xf0, %rdi               #  20    0x7d02e  4      OPC=andq_r64_imm8        
  addq %rcx, %rdx                #  21    0x7d032  3      OPC=addq_r64_r64         
  subq $0x40, %rdx               #  22    0x7d035  4      OPC=subq_r64_imm8        
  jbe .L_7d200                   #  23    0x7d039  6      OPC=jbe_label_1          
  jmpq .L_7d0a0                  #  24    0x7d03f  2      OPC=jmpq_label           
  nop                            #  25    0x7d041  1      OPC=nop                  
  nop                            #  26    0x7d042  1      OPC=nop                  
  nop                            #  27    0x7d043  1      OPC=nop                  
  nop                            #  28    0x7d044  1      OPC=nop                  
  nop                            #  29    0x7d045  1      OPC=nop                  
  nop                            #  30    0x7d046  1      OPC=nop                  
  nop                            #  31    0x7d047  1      OPC=nop                  
  nop                            #  32    0x7d048  1      OPC=nop                  
  nop                            #  33    0x7d049  1      OPC=nop                  
  nop                            #  34    0x7d04a  1      OPC=nop                  
  nop                            #  35    0x7d04b  1      OPC=nop                  
  nop                            #  36    0x7d04c  1      OPC=nop                  
  nop                            #  37    0x7d04d  1      OPC=nop                  
  nop                            #  38    0x7d04e  1      OPC=nop                  
  nop                            #  39    0x7d04f  1      OPC=nop                  
.L_7d050:                        #        0x7d050  0      OPC=<label>              
  andq $0xf, %rcx                #  40    0x7d050  4      OPC=andq_r64_imm8        
  andq $0xf0, %rdi               #  41    0x7d054  4      OPC=andq_r64_imm8        
  movdqa (%rdi), %xmm0           #  42    0x7d058  4      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  43    0x7d05c  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm0, %eax           #  44    0x7d060  4      OPC=pmovmskb_r32_xmm     
  sarl %cl, %eax                 #  45    0x7d064  2      OPC=sarl_r32_cl          
  testl %eax, %eax               #  46    0x7d066  2      OPC=testl_r32_r32        
  je .L_7d080                    #  47    0x7d068  2      OPC=je_label             
  bsfl %eax, %eax                #  48    0x7d06a  3      OPC=bsfl_r32_r32         
  subq %rax, %rdx                #  49    0x7d06d  3      OPC=subq_r64_r64         
  jbe .L_7d320                   #  50    0x7d070  6      OPC=jbe_label_1          
  addq %rdi, %rax                #  51    0x7d076  3      OPC=addq_r64_r64         
  addq %rcx, %rax                #  52    0x7d079  3      OPC=addq_r64_r64         
  retq                           #  53    0x7d07c  1      OPC=retq                 
  nop                            #  54    0x7d07d  1      OPC=nop                  
  nop                            #  55    0x7d07e  1      OPC=nop                  
  nop                            #  56    0x7d07f  1      OPC=nop                  
.L_7d080:                        #        0x7d080  0      OPC=<label>              
  addq %rcx, %rdx                #  57    0x7d080  3      OPC=addq_r64_r64         
  subq $0x10, %rdx               #  58    0x7d083  4      OPC=subq_r64_imm8        
  jbe .L_7d320                   #  59    0x7d087  6      OPC=jbe_label_1          
  addq $0x10, %rdi               #  60    0x7d08d  4      OPC=addq_r64_imm8        
  subq $0x40, %rdx               #  61    0x7d091  4      OPC=subq_r64_imm8        
  jbe .L_7d200                   #  62    0x7d095  6      OPC=jbe_label_1          
  nop                            #  63    0x7d09b  1      OPC=nop                  
  nop                            #  64    0x7d09c  1      OPC=nop                  
  nop                            #  65    0x7d09d  1      OPC=nop                  
  nop                            #  66    0x7d09e  1      OPC=nop                  
  nop                            #  67    0x7d09f  1      OPC=nop                  
.L_7d0a0:                        #        0x7d0a0  0      OPC=<label>              
  movdqa (%rdi), %xmm0           #  68    0x7d0a0  4      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  69    0x7d0a4  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm0, %eax           #  70    0x7d0a8  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  71    0x7d0ac  2      OPC=testl_r32_r32        
  jne .L_7d2b0                   #  72    0x7d0ae  6      OPC=jne_label_1          
  movdqa 0x10(%rdi), %xmm2       #  73    0x7d0b4  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm2           #  74    0x7d0b9  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm2, %eax           #  75    0x7d0bd  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  76    0x7d0c1  2      OPC=testl_r32_r32        
  jne .L_7d2c0                   #  77    0x7d0c3  6      OPC=jne_label_1          
  movdqa 0x20(%rdi), %xmm3       #  78    0x7d0c9  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm3           #  79    0x7d0ce  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm3, %eax           #  80    0x7d0d2  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  81    0x7d0d6  2      OPC=testl_r32_r32        
  jne .L_7d2d0                   #  82    0x7d0d8  6      OPC=jne_label_1          
  movdqa 0x30(%rdi), %xmm4       #  83    0x7d0de  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm4           #  84    0x7d0e3  4      OPC=pcmpeqb_xmm_xmm      
  addq $0x40, %rdi               #  85    0x7d0e7  4      OPC=addq_r64_imm8        
  pmovmskb %xmm4, %eax           #  86    0x7d0eb  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  87    0x7d0ef  2      OPC=testl_r32_r32        
  jne .L_7d2a0                   #  88    0x7d0f1  6      OPC=jne_label_1          
  testq $0x3f, %rdi              #  89    0x7d0f7  7      OPC=testq_r64_imm32      
  je .L_7d170                    #  90    0x7d0fe  2      OPC=je_label             
  subq $0x40, %rdx               #  91    0x7d100  4      OPC=subq_r64_imm8        
  jbe .L_7d200                   #  92    0x7d104  6      OPC=jbe_label_1          
  movdqa (%rdi), %xmm0           #  93    0x7d10a  4      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  94    0x7d10e  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm0, %eax           #  95    0x7d112  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  96    0x7d116  2      OPC=testl_r32_r32        
  jne .L_7d2b0                   #  97    0x7d118  6      OPC=jne_label_1          
  movdqa 0x10(%rdi), %xmm2       #  98    0x7d11e  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm2           #  99    0x7d123  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm2, %eax           #  100   0x7d127  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  101   0x7d12b  2      OPC=testl_r32_r32        
  jne .L_7d2c0                   #  102   0x7d12d  6      OPC=jne_label_1          
  movdqa 0x20(%rdi), %xmm3       #  103   0x7d133  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm3           #  104   0x7d138  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm3, %eax           #  105   0x7d13c  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  106   0x7d140  2      OPC=testl_r32_r32        
  jne .L_7d2d0                   #  107   0x7d142  6      OPC=jne_label_1          
  movdqa 0x30(%rdi), %xmm3       #  108   0x7d148  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm3           #  109   0x7d14d  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm3, %eax           #  110   0x7d151  4      OPC=pmovmskb_r32_xmm     
  addq $0x40, %rdi               #  111   0x7d155  4      OPC=addq_r64_imm8        
  testl %eax, %eax               #  112   0x7d159  2      OPC=testl_r32_r32        
  jne .L_7d2a0                   #  113   0x7d15b  6      OPC=jne_label_1          
  movq %rdi, %rcx                #  114   0x7d161  3      OPC=movq_r64_r64         
  andq $0xc0, %rdi               #  115   0x7d164  4      OPC=andq_r64_imm8        
  andq $0x3f, %rcx               #  116   0x7d168  4      OPC=andq_r64_imm8        
  addq %rcx, %rdx                #  117   0x7d16c  3      OPC=addq_r64_r64         
  nop                            #  118   0x7d16f  1      OPC=nop                  
.L_7d170:                        #        0x7d170  0      OPC=<label>              
  subq $0x40, %rdx               #  119   0x7d170  4      OPC=subq_r64_imm8        
  jbe .L_7d200                   #  120   0x7d174  6      OPC=jbe_label_1          
  movdqa (%rdi), %xmm0           #  121   0x7d17a  4      OPC=movdqa_xmm_m128      
  movdqa 0x10(%rdi), %xmm2       #  122   0x7d17e  5      OPC=movdqa_xmm_m128      
  movdqa 0x20(%rdi), %xmm3       #  123   0x7d183  5      OPC=movdqa_xmm_m128      
  movdqa 0x30(%rdi), %xmm4       #  124   0x7d188  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  125   0x7d18d  4      OPC=pcmpeqb_xmm_xmm      
  pcmpeqb %xmm1, %xmm2           #  126   0x7d191  4      OPC=pcmpeqb_xmm_xmm      
  pcmpeqb %xmm1, %xmm3           #  127   0x7d195  4      OPC=pcmpeqb_xmm_xmm      
  pcmpeqb %xmm1, %xmm4           #  128   0x7d199  4      OPC=pcmpeqb_xmm_xmm      
  pmaxub %xmm0, %xmm3            #  129   0x7d19d  4      OPC=pmaxub_xmm_xmm       
  pmaxub %xmm2, %xmm4            #  130   0x7d1a1  4      OPC=pmaxub_xmm_xmm       
  pmaxub %xmm3, %xmm4            #  131   0x7d1a5  4      OPC=pmaxub_xmm_xmm       
  pmovmskb %xmm4, %eax           #  132   0x7d1a9  4      OPC=pmovmskb_r32_xmm     
  addq $0x40, %rdi               #  133   0x7d1ad  4      OPC=addq_r64_imm8        
  testl %eax, %eax               #  134   0x7d1b1  2      OPC=testl_r32_r32        
  je .L_7d170                    #  135   0x7d1b3  2      OPC=je_label             
  subq $0x40, %rdi               #  136   0x7d1b5  4      OPC=subq_r64_imm8        
  pmovmskb %xmm0, %eax           #  137   0x7d1b9  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  138   0x7d1bd  2      OPC=testl_r32_r32        
  jne .L_7d2b0                   #  139   0x7d1bf  6      OPC=jne_label_1          
  pmovmskb %xmm2, %eax           #  140   0x7d1c5  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  141   0x7d1c9  2      OPC=testl_r32_r32        
  jne .L_7d2c0                   #  142   0x7d1cb  6      OPC=jne_label_1          
  movdqa 0x20(%rdi), %xmm3       #  143   0x7d1d1  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm3           #  144   0x7d1d6  4      OPC=pcmpeqb_xmm_xmm      
  pcmpeqb 0x30(%rdi), %xmm1      #  145   0x7d1da  5      OPC=pcmpeqb_xmm_m128     
  pmovmskb %xmm3, %eax           #  146   0x7d1df  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  147   0x7d1e3  2      OPC=testl_r32_r32        
  jne .L_7d2d0                   #  148   0x7d1e5  6      OPC=jne_label_1          
  pmovmskb %xmm1, %eax           #  149   0x7d1eb  4      OPC=pmovmskb_r32_xmm     
  bsfl %eax, %eax                #  150   0x7d1ef  3      OPC=bsfl_r32_r32         
  leaq 0x30(%rdi,%rax,1), %rax   #  151   0x7d1f2  5      OPC=leaq_r64_m16         
  retq                           #  152   0x7d1f7  1      OPC=retq                 
  nop                            #  153   0x7d1f8  1      OPC=nop                  
  nop                            #  154   0x7d1f9  1      OPC=nop                  
  nop                            #  155   0x7d1fa  1      OPC=nop                  
  nop                            #  156   0x7d1fb  1      OPC=nop                  
  nop                            #  157   0x7d1fc  1      OPC=nop                  
  nop                            #  158   0x7d1fd  1      OPC=nop                  
  nop                            #  159   0x7d1fe  1      OPC=nop                  
  nop                            #  160   0x7d1ff  1      OPC=nop                  
.L_7d200:                        #        0x7d200  0      OPC=<label>              
  addq $0x20, %rdx               #  161   0x7d200  4      OPC=addq_r64_imm8        
  jle .L_7d270                   #  162   0x7d204  2      OPC=jle_label            
  movdqa (%rdi), %xmm0           #  163   0x7d206  4      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  164   0x7d20a  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm0, %eax           #  165   0x7d20e  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  166   0x7d212  2      OPC=testl_r32_r32        
  jne .L_7d2b0                   #  167   0x7d214  6      OPC=jne_label_1          
  movdqa 0x10(%rdi), %xmm2       #  168   0x7d21a  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm2           #  169   0x7d21f  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm2, %eax           #  170   0x7d223  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  171   0x7d227  2      OPC=testl_r32_r32        
  jne .L_7d2c0                   #  172   0x7d229  6      OPC=jne_label_1          
  movdqa 0x20(%rdi), %xmm3       #  173   0x7d22f  5      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm3           #  174   0x7d234  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm3, %eax           #  175   0x7d238  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  176   0x7d23c  2      OPC=testl_r32_r32        
  jne .L_7d300                   #  177   0x7d23e  6      OPC=jne_label_1          
  subq $0x10, %rdx               #  178   0x7d244  4      OPC=subq_r64_imm8        
  jle .L_7d320                   #  179   0x7d248  6      OPC=jle_label_1          
  pcmpeqb 0x30(%rdi), %xmm1      #  180   0x7d24e  5      OPC=pcmpeqb_xmm_m128     
  pmovmskb %xmm1, %eax           #  181   0x7d253  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  182   0x7d257  2      OPC=testl_r32_r32        
  jne .L_7d310                   #  183   0x7d259  6      OPC=jne_label_1          
  xorq %rax, %rax                #  184   0x7d25f  3      OPC=xorq_r64_r64         
  retq                           #  185   0x7d262  1      OPC=retq                 
  nop                            #  186   0x7d263  1      OPC=nop                  
  nop                            #  187   0x7d264  1      OPC=nop                  
  nop                            #  188   0x7d265  1      OPC=nop                  
  nop                            #  189   0x7d266  1      OPC=nop                  
  nop                            #  190   0x7d267  1      OPC=nop                  
  nop                            #  191   0x7d268  1      OPC=nop                  
  nop                            #  192   0x7d269  1      OPC=nop                  
  nop                            #  193   0x7d26a  1      OPC=nop                  
  nop                            #  194   0x7d26b  1      OPC=nop                  
  nop                            #  195   0x7d26c  1      OPC=nop                  
  nop                            #  196   0x7d26d  1      OPC=nop                  
  nop                            #  197   0x7d26e  1      OPC=nop                  
  nop                            #  198   0x7d26f  1      OPC=nop                  
.L_7d270:                        #        0x7d270  0      OPC=<label>              
  addq $0x20, %rdx               #  199   0x7d270  4      OPC=addq_r64_imm8        
  movdqa (%rdi), %xmm0           #  200   0x7d274  4      OPC=movdqa_xmm_m128      
  pcmpeqb %xmm1, %xmm0           #  201   0x7d278  4      OPC=pcmpeqb_xmm_xmm      
  pmovmskb %xmm0, %eax           #  202   0x7d27c  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  203   0x7d280  2      OPC=testl_r32_r32        
  jne .L_7d2e0                   #  204   0x7d282  2      OPC=jne_label            
  subq $0x10, %rdx               #  205   0x7d284  4      OPC=subq_r64_imm8        
  jbe .L_7d320                   #  206   0x7d288  6      OPC=jbe_label_1          
  pcmpeqb 0x10(%rdi), %xmm1      #  207   0x7d28e  5      OPC=pcmpeqb_xmm_m128     
  pmovmskb %xmm1, %eax           #  208   0x7d293  4      OPC=pmovmskb_r32_xmm     
  testl %eax, %eax               #  209   0x7d297  2      OPC=testl_r32_r32        
  jne .L_7d2f0                   #  210   0x7d299  2      OPC=jne_label            
  xorq %rax, %rax                #  211   0x7d29b  3      OPC=xorq_r64_r64         
  retq                           #  212   0x7d29e  1      OPC=retq                 
  nop                            #  213   0x7d29f  1      OPC=nop                  
.L_7d2a0:                        #        0x7d2a0  0      OPC=<label>              
  bsfl %eax, %eax                #  214   0x7d2a0  3      OPC=bsfl_r32_r32         
  leaq -0x10(%rax,%rdi,1), %rax  #  215   0x7d2a3  5      OPC=leaq_r64_m16         
  retq                           #  216   0x7d2a8  1      OPC=retq                 
  nop                            #  217   0x7d2a9  1      OPC=nop                  
  nop                            #  218   0x7d2aa  1      OPC=nop                  
  nop                            #  219   0x7d2ab  1      OPC=nop                  
  nop                            #  220   0x7d2ac  1      OPC=nop                  
  nop                            #  221   0x7d2ad  1      OPC=nop                  
  nop                            #  222   0x7d2ae  1      OPC=nop                  
  nop                            #  223   0x7d2af  1      OPC=nop                  
.L_7d2b0:                        #        0x7d2b0  0      OPC=<label>              
  bsfl %eax, %eax                #  224   0x7d2b0  3      OPC=bsfl_r32_r32         
  addq %rdi, %rax                #  225   0x7d2b3  3      OPC=addq_r64_r64         
  retq                           #  226   0x7d2b6  1      OPC=retq                 
  nop                            #  227   0x7d2b7  1      OPC=nop                  
  nop                            #  228   0x7d2b8  1      OPC=nop                  
  nop                            #  229   0x7d2b9  1      OPC=nop                  
  nop                            #  230   0x7d2ba  1      OPC=nop                  
  nop                            #  231   0x7d2bb  1      OPC=nop                  
  nop                            #  232   0x7d2bc  1      OPC=nop                  
  nop                            #  233   0x7d2bd  1      OPC=nop                  
  nop                            #  234   0x7d2be  1      OPC=nop                  
  nop                            #  235   0x7d2bf  1      OPC=nop                  
.L_7d2c0:                        #        0x7d2c0  0      OPC=<label>              
  bsfl %eax, %eax                #  236   0x7d2c0  3      OPC=bsfl_r32_r32         
  leaq 0x10(%rax,%rdi,1), %rax   #  237   0x7d2c3  5      OPC=leaq_r64_m16         
  retq                           #  238   0x7d2c8  1      OPC=retq                 
  nop                            #  239   0x7d2c9  1      OPC=nop                  
  nop                            #  240   0x7d2ca  1      OPC=nop                  
  nop                            #  241   0x7d2cb  1      OPC=nop                  
  nop                            #  242   0x7d2cc  1      OPC=nop                  
  nop                            #  243   0x7d2cd  1      OPC=nop                  
  nop                            #  244   0x7d2ce  1      OPC=nop                  
  nop                            #  245   0x7d2cf  1      OPC=nop                  
.L_7d2d0:                        #        0x7d2d0  0      OPC=<label>              
  bsfl %eax, %eax                #  246   0x7d2d0  3      OPC=bsfl_r32_r32         
  leaq 0x20(%rax,%rdi,1), %rax   #  247   0x7d2d3  5      OPC=leaq_r64_m16         
  retq                           #  248   0x7d2d8  1      OPC=retq                 
  nop                            #  249   0x7d2d9  1      OPC=nop                  
  nop                            #  250   0x7d2da  1      OPC=nop                  
  nop                            #  251   0x7d2db  1      OPC=nop                  
  nop                            #  252   0x7d2dc  1      OPC=nop                  
  nop                            #  253   0x7d2dd  1      OPC=nop                  
  nop                            #  254   0x7d2de  1      OPC=nop                  
  nop                            #  255   0x7d2df  1      OPC=nop                  
.L_7d2e0:                        #        0x7d2e0  0      OPC=<label>              
  bsfl %eax, %eax                #  256   0x7d2e0  3      OPC=bsfl_r32_r32         
  subq %rax, %rdx                #  257   0x7d2e3  3      OPC=subq_r64_r64         
  jbe .L_7d320                   #  258   0x7d2e6  2      OPC=jbe_label            
  addq %rdi, %rax                #  259   0x7d2e8  3      OPC=addq_r64_r64         
  retq                           #  260   0x7d2eb  1      OPC=retq                 
  nop                            #  261   0x7d2ec  1      OPC=nop                  
  nop                            #  262   0x7d2ed  1      OPC=nop                  
  nop                            #  263   0x7d2ee  1      OPC=nop                  
  nop                            #  264   0x7d2ef  1      OPC=nop                  
.L_7d2f0:                        #        0x7d2f0  0      OPC=<label>              
  bsfl %eax, %eax                #  265   0x7d2f0  3      OPC=bsfl_r32_r32         
  subq %rax, %rdx                #  266   0x7d2f3  3      OPC=subq_r64_r64         
  jbe .L_7d320                   #  267   0x7d2f6  2      OPC=jbe_label            
  leaq 0x10(%rdi,%rax,1), %rax   #  268   0x7d2f8  5      OPC=leaq_r64_m16         
  retq                           #  269   0x7d2fd  1      OPC=retq                 
  xchgw %ax, %ax                 #  270   0x7d2fe  2      OPC=xchgw_ax_r16         
.L_7d300:                        #        0x7d300  0      OPC=<label>              
  bsfl %eax, %eax                #  271   0x7d300  3      OPC=bsfl_r32_r32         
  subq %rax, %rdx                #  272   0x7d303  3      OPC=subq_r64_r64         
  jbe .L_7d320                   #  273   0x7d306  2      OPC=jbe_label            
  leaq 0x20(%rdi,%rax,1), %rax   #  274   0x7d308  5      OPC=leaq_r64_m16         
  retq                           #  275   0x7d30d  1      OPC=retq                 
  xchgw %ax, %ax                 #  276   0x7d30e  2      OPC=xchgw_ax_r16         
.L_7d310:                        #        0x7d310  0      OPC=<label>              
  bsfl %eax, %eax                #  277   0x7d310  3      OPC=bsfl_r32_r32         
  subq %rax, %rdx                #  278   0x7d313  3      OPC=subq_r64_r64         
  jbe .L_7d320                   #  279   0x7d316  2      OPC=jbe_label            
  leaq 0x30(%rdi,%rax,1), %rax   #  280   0x7d318  5      OPC=leaq_r64_m16         
  retq                           #  281   0x7d31d  1      OPC=retq                 
  xchgw %ax, %ax                 #  282   0x7d31e  2      OPC=xchgw_ax_r16         
.L_7d320:                        #        0x7d320  0      OPC=<label>              
  xorq %rax, %rax                #  283   0x7d320  3      OPC=xorq_r64_r64         
  retq                           #  284   0x7d323  1      OPC=retq                 
  nop                            #  285   0x7d324  1      OPC=nop                  
  nop                            #  286   0x7d325  1      OPC=nop                  
  nop                            #  287   0x7d326  1      OPC=nop                  
  nop                            #  288   0x7d327  1      OPC=nop                  
  nop                            #  289   0x7d328  1      OPC=nop                  
  nop                            #  290   0x7d329  1      OPC=nop                  
  nop                            #  291   0x7d32a  1      OPC=nop                  
  nop                            #  292   0x7d32b  1      OPC=nop                  
  nop                            #  293   0x7d32c  1      OPC=nop                  
  nop                            #  294   0x7d32d  1      OPC=nop                  
  xchgw %ax, %ax                 #  295   0x7d32e  2      OPC=xchgw_ax_r16         
                                                                                   
.size memchr, .-memchr
