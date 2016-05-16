  .text
  .globl clntudp_control
  .type clntudp_control, @function

#! file-offset 0x133270
#! rip-offset  0x133270
#! capacity    384 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.clntudp_control:             #        0x133270  0      OPC=<label>         
  cmpl $0xf, %esi             #  1     0x133270  3      OPC=cmpl_r32_imm8   
  movq 0x10(%rdi), %rdi       #  2     0x133273  4      OPC=movq_r64_m64    
  ja .L_1333e0                #  3     0x133277  6      OPC=ja_label_1      
  leaq 0x56d00(%rip), %rax    #  4     0x13327d  7      OPC=leaq_r64_m16    
  movl %esi, %esi             #  5     0x133284  2      OPC=movl_r32_r32    
  movslq (%rax,%rsi,4), %rcx  #  6     0x133286  4      OPC=movslq_r64_m32  
  addq %rcx, %rax             #  7     0x13328a  3      OPC=addq_r64_r64    
  jmpq %rax                   #  8     0x13328d  2      OPC=jmpq_r64        
  nop                         #  9     0x13328f  1      OPC=nop             
  movq (%rdx), %rax           #  10    0x133290  3      OPC=movq_r64_m64    
  movq 0x90(%rdi), %rdx       #  11    0x133293  7      OPC=movq_r64_m64    
  bswap %eax                  #  12    0x13329a  2      OPC=bswap_r32       
  movl %eax, 0xc(%rdx)        #  13    0x13329c  3      OPC=movl_m32_r32    
  movl $0x1, %eax             #  14    0x13329f  5      OPC=movl_r32_imm32  
  retq                        #  15    0x1332a4  1      OPC=retq            
  nop                         #  16    0x1332a5  1      OPC=nop             
  nop                         #  17    0x1332a6  1      OPC=nop             
  nop                         #  18    0x1332a7  1      OPC=nop             
  movq (%rdx), %rax           #  19    0x1332a8  3      OPC=movq_r64_m64    
  movq 0x8(%rdx), %rdx        #  20    0x1332ab  4      OPC=movq_r64_m64    
  movq %rax, 0x30(%rdi)       #  21    0x1332af  4      OPC=movq_m64_r64    
  movq %rdx, 0x38(%rdi)       #  22    0x1332b3  4      OPC=movq_m64_r64    
  movl $0x1, %eax             #  23    0x1332b7  5      OPC=movl_r32_imm32  
  retq                        #  24    0x1332bc  1      OPC=retq            
  nop                         #  25    0x1332bd  1      OPC=nop             
  nop                         #  26    0x1332be  1      OPC=nop             
  nop                         #  27    0x1332bf  1      OPC=nop             
  movq 0x30(%rdi), %rsi       #  28    0x1332c0  4      OPC=movq_r64_m64    
  movq 0x38(%rdi), %rdi       #  29    0x1332c4  4      OPC=movq_r64_m64    
  movl $0x1, %eax             #  30    0x1332c8  5      OPC=movl_r32_imm32  
  movq %rsi, (%rdx)           #  31    0x1332cd  3      OPC=movq_m64_r64    
  movq %rdi, 0x8(%rdx)        #  32    0x1332d0  4      OPC=movq_m64_r64    
  retq                        #  33    0x1332d4  1      OPC=retq            
  nop                         #  34    0x1332d5  1      OPC=nop             
  nop                         #  35    0x1332d6  1      OPC=nop             
  nop                         #  36    0x1332d7  1      OPC=nop             
  movq 0x8(%rdi), %rsi        #  37    0x1332d8  4      OPC=movq_r64_m64    
  movq 0x10(%rdi), %rdi       #  38    0x1332dc  4      OPC=movq_r64_m64    
  movl $0x1, %eax             #  39    0x1332e0  5      OPC=movl_r32_imm32  
  movq %rsi, (%rdx)           #  40    0x1332e5  3      OPC=movq_m64_r64    
  movq %rdi, 0x8(%rdx)        #  41    0x1332e8  4      OPC=movq_m64_r64    
  retq                        #  42    0x1332ec  1      OPC=retq            
  nop                         #  43    0x1332ed  1      OPC=nop             
  nop                         #  44    0x1332ee  1      OPC=nop             
  nop                         #  45    0x1332ef  1      OPC=nop             
  movq (%rdx), %rax           #  46    0x1332f0  3      OPC=movq_r64_m64    
  movq 0x8(%rdx), %rdx        #  47    0x1332f3  4      OPC=movq_r64_m64    
  movq %rax, 0x20(%rdi)       #  48    0x1332f7  4      OPC=movq_m64_r64    
  movq %rdx, 0x28(%rdi)       #  49    0x1332fb  4      OPC=movq_m64_r64    
  movl $0x1, %eax             #  50    0x1332ff  5      OPC=movl_r32_imm32  
  retq                        #  51    0x133304  1      OPC=retq            
  nop                         #  52    0x133305  1      OPC=nop             
  nop                         #  53    0x133306  1      OPC=nop             
  nop                         #  54    0x133307  1      OPC=nop             
  movq 0x20(%rdi), %rsi       #  55    0x133308  4      OPC=movq_r64_m64    
  movq 0x28(%rdi), %rdi       #  56    0x13330c  4      OPC=movq_r64_m64    
  movl $0x1, %eax             #  57    0x133310  5      OPC=movl_r32_imm32  
  movq %rsi, (%rdx)           #  58    0x133315  3      OPC=movq_m64_r64    
  movq %rdi, 0x8(%rdx)        #  59    0x133318  4      OPC=movq_m64_r64    
  retq                        #  60    0x13331c  1      OPC=retq            
  nop                         #  61    0x13331d  1      OPC=nop             
  nop                         #  62    0x13331e  1      OPC=nop             
  nop                         #  63    0x13331f  1      OPC=nop             
  movl (%rdi), %eax           #  64    0x133320  2      OPC=movl_r32_m32    
  movl %eax, (%rdx)           #  65    0x133322  2      OPC=movl_m32_r32    
  movl $0x1, %eax             #  66    0x133324  5      OPC=movl_r32_imm32  
  retq                        #  67    0x133329  1      OPC=retq            
  nop                         #  68    0x13332a  1      OPC=nop             
  nop                         #  69    0x13332b  1      OPC=nop             
  nop                         #  70    0x13332c  1      OPC=nop             
  nop                         #  71    0x13332d  1      OPC=nop             
  nop                         #  72    0x13332e  1      OPC=nop             
  nop                         #  73    0x13332f  1      OPC=nop             
  movl $0x1, 0x4(%rdi)        #  74    0x133330  7      OPC=movl_m32_imm32  
  movl $0x1, %eax             #  75    0x133337  5      OPC=movl_r32_imm32  
  retq                        #  76    0x13333c  1      OPC=retq            
  nop                         #  77    0x13333d  1      OPC=nop             
  nop                         #  78    0x13333e  1      OPC=nop             
  nop                         #  79    0x13333f  1      OPC=nop             
  movl $0x0, 0x4(%rdi)        #  80    0x133340  7      OPC=movl_m32_imm32  
  movl $0x1, %eax             #  81    0x133347  5      OPC=movl_r32_imm32  
  retq                        #  82    0x13334c  1      OPC=retq            
  nop                         #  83    0x13334d  1      OPC=nop             
  nop                         #  84    0x13334e  1      OPC=nop             
  nop                         #  85    0x13334f  1      OPC=nop             
  movq 0x90(%rdi), %rax       #  86    0x133350  7      OPC=movq_r64_m64    
  movl (%rax), %eax           #  87    0x133357  2      OPC=movl_r32_m32    
  bswap %eax                  #  88    0x133359  2      OPC=bswap_r32       
  movl %eax, %eax             #  89    0x13335b  2      OPC=movl_r32_r32    
  movq %rax, (%rdx)           #  90    0x13335d  3      OPC=movq_m64_r64    
  movl $0x1, %eax             #  91    0x133360  5      OPC=movl_r32_imm32  
  retq                        #  92    0x133365  1      OPC=retq            
  nop                         #  93    0x133366  1      OPC=nop             
  nop                         #  94    0x133367  1      OPC=nop             
  nop                         #  95    0x133368  1      OPC=nop             
  nop                         #  96    0x133369  1      OPC=nop             
  nop                         #  97    0x13336a  1      OPC=nop             
  nop                         #  98    0x13336b  1      OPC=nop             
  nop                         #  99    0x13336c  1      OPC=nop             
  nop                         #  100   0x13336d  1      OPC=nop             
  nop                         #  101   0x13336e  1      OPC=nop             
  nop                         #  102   0x13336f  1      OPC=nop             
  movq (%rdx), %rax           #  103   0x133370  3      OPC=movq_r64_m64    
  movq 0x90(%rdi), %rdx       #  104   0x133373  7      OPC=movq_r64_m64    
  subl $0x1, %eax             #  105   0x13337a  3      OPC=subl_r32_imm8   
  bswap %eax                  #  106   0x13337d  2      OPC=bswap_r32       
  movl %eax, (%rdx)           #  107   0x13337f  2      OPC=movl_m32_r32    
  movl $0x1, %eax             #  108   0x133381  5      OPC=movl_r32_imm32  
  retq                        #  109   0x133386  1      OPC=retq            
  nop                         #  110   0x133387  1      OPC=nop             
  nop                         #  111   0x133388  1      OPC=nop             
  nop                         #  112   0x133389  1      OPC=nop             
  nop                         #  113   0x13338a  1      OPC=nop             
  nop                         #  114   0x13338b  1      OPC=nop             
  nop                         #  115   0x13338c  1      OPC=nop             
  nop                         #  116   0x13338d  1      OPC=nop             
  nop                         #  117   0x13338e  1      OPC=nop             
  nop                         #  118   0x13338f  1      OPC=nop             
  movq 0x90(%rdi), %rax       #  119   0x133390  7      OPC=movq_r64_m64    
  movl 0x10(%rax), %eax       #  120   0x133397  3      OPC=movl_r32_m32    
  bswap %eax                  #  121   0x13339a  2      OPC=bswap_r32       
  movl %eax, %eax             #  122   0x13339c  2      OPC=movl_r32_r32    
  movq %rax, (%rdx)           #  123   0x13339e  3      OPC=movq_m64_r64    
  movl $0x1, %eax             #  124   0x1333a1  5      OPC=movl_r32_imm32  
  retq                        #  125   0x1333a6  1      OPC=retq            
  nop                         #  126   0x1333a7  1      OPC=nop             
  nop                         #  127   0x1333a8  1      OPC=nop             
  nop                         #  128   0x1333a9  1      OPC=nop             
  nop                         #  129   0x1333aa  1      OPC=nop             
  nop                         #  130   0x1333ab  1      OPC=nop             
  nop                         #  131   0x1333ac  1      OPC=nop             
  nop                         #  132   0x1333ad  1      OPC=nop             
  nop                         #  133   0x1333ae  1      OPC=nop             
  nop                         #  134   0x1333af  1      OPC=nop             
  movq (%rdx), %rax           #  135   0x1333b0  3      OPC=movq_r64_m64    
  movq 0x90(%rdi), %rdx       #  136   0x1333b3  7      OPC=movq_r64_m64    
  bswap %eax                  #  137   0x1333ba  2      OPC=bswap_r32       
  movl %eax, 0x10(%rdx)       #  138   0x1333bc  3      OPC=movl_m32_r32    
  movl $0x1, %eax             #  139   0x1333bf  5      OPC=movl_r32_imm32  
  retq                        #  140   0x1333c4  1      OPC=retq            
  nop                         #  141   0x1333c5  1      OPC=nop             
  nop                         #  142   0x1333c6  1      OPC=nop             
  nop                         #  143   0x1333c7  1      OPC=nop             
  movq 0x90(%rdi), %rax       #  144   0x1333c8  7      OPC=movq_r64_m64    
  movl 0xc(%rax), %eax        #  145   0x1333cf  3      OPC=movl_r32_m32    
  bswap %eax                  #  146   0x1333d2  2      OPC=bswap_r32       
  movl %eax, %eax             #  147   0x1333d4  2      OPC=movl_r32_r32    
  movq %rax, (%rdx)           #  148   0x1333d6  3      OPC=movq_m64_r64    
  movl $0x1, %eax             #  149   0x1333d9  5      OPC=movl_r32_imm32  
  retq                        #  150   0x1333de  1      OPC=retq            
  nop                         #  151   0x1333df  1      OPC=nop             
.L_1333e0:                    #        0x1333e0  0      OPC=<label>         
  xorl %eax, %eax             #  152   0x1333e0  2      OPC=xorl_r32_r32    
  retq                        #  153   0x1333e2  1      OPC=retq            
  nop                         #  154   0x1333e3  1      OPC=nop             
  nop                         #  155   0x1333e4  1      OPC=nop             
  nop                         #  156   0x1333e5  1      OPC=nop             
  nop                         #  157   0x1333e6  1      OPC=nop             
  nop                         #  158   0x1333e7  1      OPC=nop             
  nop                         #  159   0x1333e8  1      OPC=nop             
  nop                         #  160   0x1333e9  1      OPC=nop             
  nop                         #  161   0x1333ea  1      OPC=nop             
  nop                         #  162   0x1333eb  1      OPC=nop             
  nop                         #  163   0x1333ec  1      OPC=nop             
  nop                         #  164   0x1333ed  1      OPC=nop             
  nop                         #  165   0x1333ee  1      OPC=nop             
  nop                         #  166   0x1333ef  1      OPC=nop             
                                                                            
.size clntudp_control, .-clntudp_control
