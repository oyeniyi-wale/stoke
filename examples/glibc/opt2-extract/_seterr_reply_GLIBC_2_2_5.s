  .text
  .globl _seterr_reply_GLIBC_2_2_5
  .type _seterr_reply_GLIBC_2_2_5, @function

#! file-offset 0x108ab0
#! rip-offset  0x108ab0
#! capacity    288 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._seterr_reply_GLIBC_2_2_5:   #        0x108ab0  0      OPC=<label>         
  movl 0x10(%rdi), %eax       #  1     0x108ab0  3      OPC=movl_r32_m32    
  testl %eax, %eax            #  2     0x108ab3  2      OPC=testl_r32_r32   
  je .L_108ae8                #  3     0x108ab5  2      OPC=je_label        
  cmpl $0x1, %eax             #  4     0x108ab7  3      OPC=cmpl_r32_imm8   
  jne .L_108ad8               #  5     0x108aba  2      OPC=jne_label       
  movl 0x18(%rdi), %eax       #  6     0x108abc  3      OPC=movl_r32_m32    
  testl %eax, %eax            #  7     0x108abf  2      OPC=testl_r32_r32   
  je .L_108b38                #  8     0x108ac1  2      OPC=je_label        
  cmpl $0x1, %eax             #  9     0x108ac3  3      OPC=cmpl_r32_imm8   
  jne .L_108b00               #  10    0x108ac6  2      OPC=jne_label       
  movl $0x7, (%rsi)           #  11    0x108ac8  6      OPC=movl_m32_imm32  
  movl 0x20(%rdi), %eax       #  12    0x108ace  3      OPC=movl_r32_m32    
  movl %eax, 0x8(%rsi)        #  13    0x108ad1  3      OPC=movl_m32_r32    
  retq                        #  14    0x108ad4  1      OPC=retq            
  nop                         #  15    0x108ad5  1      OPC=nop             
  nop                         #  16    0x108ad6  1      OPC=nop             
  nop                         #  17    0x108ad7  1      OPC=nop             
.L_108ad8:                    #        0x108ad8  0      OPC=<label>         
  movl $0x10, (%rsi)          #  18    0x108ad8  6      OPC=movl_m32_imm32  
  movq %rax, 0x8(%rsi)        #  19    0x108ade  4      OPC=movq_m64_r64    
  retq                        #  20    0x108ae2  1      OPC=retq            
  nop                         #  21    0x108ae3  1      OPC=nop             
  nop                         #  22    0x108ae4  1      OPC=nop             
  nop                         #  23    0x108ae5  1      OPC=nop             
  nop                         #  24    0x108ae6  1      OPC=nop             
  nop                         #  25    0x108ae7  1      OPC=nop             
.L_108ae8:                    #        0x108ae8  0      OPC=<label>         
  movl 0x30(%rdi), %eax       #  26    0x108ae8  3      OPC=movl_r32_m32    
  testl %eax, %eax            #  27    0x108aeb  2      OPC=testl_r32_r32   
  jne .L_108b18               #  28    0x108aed  2      OPC=jne_label       
  movl $0x0, (%rsi)           #  29    0x108aef  6      OPC=movl_m32_imm32  
  retq                        #  30    0x108af5  1      OPC=retq            
  nop                         #  31    0x108af6  1      OPC=nop             
  nop                         #  32    0x108af7  1      OPC=nop             
  nop                         #  33    0x108af8  1      OPC=nop             
  nop                         #  34    0x108af9  1      OPC=nop             
  nop                         #  35    0x108afa  1      OPC=nop             
  nop                         #  36    0x108afb  1      OPC=nop             
  nop                         #  37    0x108afc  1      OPC=nop             
  nop                         #  38    0x108afd  1      OPC=nop             
  nop                         #  39    0x108afe  1      OPC=nop             
  nop                         #  40    0x108aff  1      OPC=nop             
.L_108b00:                    #        0x108b00  0      OPC=<label>         
  movl $0x10, (%rsi)          #  41    0x108b00  6      OPC=movl_m32_imm32  
  movq $0x1, 0x8(%rsi)        #  42    0x108b06  8      OPC=movq_m64_imm32  
  movq %rax, 0x10(%rsi)       #  43    0x108b0e  4      OPC=movq_m64_r64    
  retq                        #  44    0x108b12  1      OPC=retq            
  nop                         #  45    0x108b13  1      OPC=nop             
  nop                         #  46    0x108b14  1      OPC=nop             
  nop                         #  47    0x108b15  1      OPC=nop             
  nop                         #  48    0x108b16  1      OPC=nop             
  nop                         #  49    0x108b17  1      OPC=nop             
.L_108b18:                    #        0x108b18  0      OPC=<label>         
  cmpl $0x5, %eax             #  50    0x108b18  3      OPC=cmpl_r32_imm8   
  ja .L_108bb0                #  51    0x108b1b  6      OPC=ja_label_1      
  leaq 0x590c8(%rip), %rdx    #  52    0x108b21  7      OPC=leaq_r64_m16    
  movl %eax, %ecx             #  53    0x108b28  2      OPC=movl_r32_r32    
  movslq (%rdx,%rcx,4), %rcx  #  54    0x108b2a  4      OPC=movslq_r64_m32  
  addq %rcx, %rdx             #  55    0x108b2e  3      OPC=addq_r64_r64    
  jmpq %rdx                   #  56    0x108b31  2      OPC=jmpq_r64        
  nop                         #  57    0x108b33  1      OPC=nop             
  nop                         #  58    0x108b34  1      OPC=nop             
  nop                         #  59    0x108b35  1      OPC=nop             
  nop                         #  60    0x108b36  1      OPC=nop             
  nop                         #  61    0x108b37  1      OPC=nop             
.L_108b38:                    #        0x108b38  0      OPC=<label>         
  movl $0x6, (%rsi)           #  62    0x108b38  6      OPC=movl_m32_imm32  
  movq 0x20(%rdi), %rax       #  63    0x108b3e  4      OPC=movq_r64_m64    
  movq %rax, 0x8(%rsi)        #  64    0x108b42  4      OPC=movq_m64_r64    
  movq 0x28(%rdi), %rax       #  65    0x108b46  4      OPC=movq_r64_m64    
  movq %rax, 0x10(%rsi)       #  66    0x108b4a  4      OPC=movq_m64_r64    
  retq                        #  67    0x108b4e  1      OPC=retq            
  nop                         #  68    0x108b4f  1      OPC=nop             
  movl $0xb, (%rsi)           #  69    0x108b50  6      OPC=movl_m32_imm32  
  retq                        #  70    0x108b56  1      OPC=retq            
  nop                         #  71    0x108b57  1      OPC=nop             
  nop                         #  72    0x108b58  1      OPC=nop             
  nop                         #  73    0x108b59  1      OPC=nop             
  nop                         #  74    0x108b5a  1      OPC=nop             
  nop                         #  75    0x108b5b  1      OPC=nop             
  nop                         #  76    0x108b5c  1      OPC=nop             
  nop                         #  77    0x108b5d  1      OPC=nop             
  nop                         #  78    0x108b5e  1      OPC=nop             
  nop                         #  79    0x108b5f  1      OPC=nop             
  movl $0xa, (%rsi)           #  80    0x108b60  6      OPC=movl_m32_imm32  
  retq                        #  81    0x108b66  1      OPC=retq            
  nop                         #  82    0x108b67  1      OPC=nop             
  nop                         #  83    0x108b68  1      OPC=nop             
  nop                         #  84    0x108b69  1      OPC=nop             
  nop                         #  85    0x108b6a  1      OPC=nop             
  nop                         #  86    0x108b6b  1      OPC=nop             
  nop                         #  87    0x108b6c  1      OPC=nop             
  nop                         #  88    0x108b6d  1      OPC=nop             
  nop                         #  89    0x108b6e  1      OPC=nop             
  nop                         #  90    0x108b6f  1      OPC=nop             
  movl $0x9, (%rsi)           #  91    0x108b70  6      OPC=movl_m32_imm32  
  movq 0x38(%rdi), %rax       #  92    0x108b76  4      OPC=movq_r64_m64    
  movq %rax, 0x8(%rsi)        #  93    0x108b7a  4      OPC=movq_m64_r64    
  movq 0x40(%rdi), %rax       #  94    0x108b7e  4      OPC=movq_r64_m64    
  movq %rax, 0x10(%rsi)       #  95    0x108b82  4      OPC=movq_m64_r64    
  retq                        #  96    0x108b86  1      OPC=retq            
  nop                         #  97    0x108b87  1      OPC=nop             
  nop                         #  98    0x108b88  1      OPC=nop             
  nop                         #  99    0x108b89  1      OPC=nop             
  nop                         #  100   0x108b8a  1      OPC=nop             
  nop                         #  101   0x108b8b  1      OPC=nop             
  nop                         #  102   0x108b8c  1      OPC=nop             
  nop                         #  103   0x108b8d  1      OPC=nop             
  nop                         #  104   0x108b8e  1      OPC=nop             
  nop                         #  105   0x108b8f  1      OPC=nop             
  movl $0x8, (%rsi)           #  106   0x108b90  6      OPC=movl_m32_imm32  
  retq                        #  107   0x108b96  1      OPC=retq            
  nop                         #  108   0x108b97  1      OPC=nop             
  nop                         #  109   0x108b98  1      OPC=nop             
  nop                         #  110   0x108b99  1      OPC=nop             
  nop                         #  111   0x108b9a  1      OPC=nop             
  nop                         #  112   0x108b9b  1      OPC=nop             
  nop                         #  113   0x108b9c  1      OPC=nop             
  nop                         #  114   0x108b9d  1      OPC=nop             
  nop                         #  115   0x108b9e  1      OPC=nop             
  nop                         #  116   0x108b9f  1      OPC=nop             
  movl $0xc, (%rsi)           #  117   0x108ba0  6      OPC=movl_m32_imm32  
  retq                        #  118   0x108ba6  1      OPC=retq            
  nop                         #  119   0x108ba7  1      OPC=nop             
  nop                         #  120   0x108ba8  1      OPC=nop             
  nop                         #  121   0x108ba9  1      OPC=nop             
  nop                         #  122   0x108baa  1      OPC=nop             
  nop                         #  123   0x108bab  1      OPC=nop             
  nop                         #  124   0x108bac  1      OPC=nop             
  nop                         #  125   0x108bad  1      OPC=nop             
  nop                         #  126   0x108bae  1      OPC=nop             
  nop                         #  127   0x108baf  1      OPC=nop             
.L_108bb0:                    #        0x108bb0  0      OPC=<label>         
  movl $0x10, (%rsi)          #  128   0x108bb0  6      OPC=movl_m32_imm32  
  movq $0x0, 0x8(%rsi)        #  129   0x108bb6  8      OPC=movq_m64_imm32  
  movq %rax, 0x10(%rsi)       #  130   0x108bbe  4      OPC=movq_m64_r64    
  retq                        #  131   0x108bc2  1      OPC=retq            
  nop                         #  132   0x108bc3  1      OPC=nop             
  nop                         #  133   0x108bc4  1      OPC=nop             
  nop                         #  134   0x108bc5  1      OPC=nop             
  nop                         #  135   0x108bc6  1      OPC=nop             
  nop                         #  136   0x108bc7  1      OPC=nop             
  nop                         #  137   0x108bc8  1      OPC=nop             
  nop                         #  138   0x108bc9  1      OPC=nop             
  nop                         #  139   0x108bca  1      OPC=nop             
  nop                         #  140   0x108bcb  1      OPC=nop             
  nop                         #  141   0x108bcc  1      OPC=nop             
  nop                         #  142   0x108bcd  1      OPC=nop             
  nop                         #  143   0x108bce  1      OPC=nop             
  nop                         #  144   0x108bcf  1      OPC=nop             
                                                                            
.size _seterr_reply_GLIBC_2_2_5, .-_seterr_reply_GLIBC_2_2_5
