  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj, @function

#! file-offset 0x1187a0
#! rip-offset  0xd87a0
#! capacity    576 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj:       #        0xd87a0  0      OPC=<label>         
  movq %rbx, -0x18(%rsp)                            #  1     0xd87a0  5      OPC=movq_m64_r64    
  movq %r13, -0x8(%rsp)                             #  2     0xd87a5  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                   #  3     0xd87aa  2      OPC=movl_r32_r32    
  movq %r12, -0x10(%rsp)                            #  4     0xd87ac  5      OPC=movq_m64_r64    
  subl $0x28, %esp                                  #  5     0xd87b1  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  6     0xd87b4  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  7     0xd87b7  2      OPC=testl_r32_r32   
  movl %esi, %r13d                                  #  8     0xd87b9  3      OPC=movl_r32_r32    
  nop                                               #  9     0xd87bc  1      OPC=nop             
  nop                                               #  10    0xd87bd  1      OPC=nop             
  nop                                               #  11    0xd87be  1      OPC=nop             
  nop                                               #  12    0xd87bf  1      OPC=nop             
  jne .L_d8820                                      #  13    0xd87c0  2      OPC=jne_label       
  nop                                               #  14    0xd87c2  1      OPC=nop             
  nop                                               #  15    0xd87c3  1      OPC=nop             
  nop                                               #  16    0xd87c4  1      OPC=nop             
  nop                                               #  17    0xd87c5  1      OPC=nop             
  nop                                               #  18    0xd87c6  1      OPC=nop             
  nop                                               #  19    0xd87c7  1      OPC=nop             
  nop                                               #  20    0xd87c8  1      OPC=nop             
  nop                                               #  21    0xd87c9  1      OPC=nop             
  nop                                               #  22    0xd87ca  1      OPC=nop             
  nop                                               #  23    0xd87cb  1      OPC=nop             
  nop                                               #  24    0xd87cc  1      OPC=nop             
  nop                                               #  25    0xd87cd  1      OPC=nop             
  nop                                               #  26    0xd87ce  1      OPC=nop             
  nop                                               #  27    0xd87cf  1      OPC=nop             
  nop                                               #  28    0xd87d0  1      OPC=nop             
  nop                                               #  29    0xd87d1  1      OPC=nop             
  nop                                               #  30    0xd87d2  1      OPC=nop             
  nop                                               #  31    0xd87d3  1      OPC=nop             
  nop                                               #  32    0xd87d4  1      OPC=nop             
  nop                                               #  33    0xd87d5  1      OPC=nop             
  nop                                               #  34    0xd87d6  1      OPC=nop             
  nop                                               #  35    0xd87d7  1      OPC=nop             
  nop                                               #  36    0xd87d8  1      OPC=nop             
  nop                                               #  37    0xd87d9  1      OPC=nop             
  nop                                               #  38    0xd87da  1      OPC=nop             
  nop                                               #  39    0xd87db  1      OPC=nop             
  nop                                               #  40    0xd87dc  1      OPC=nop             
  nop                                               #  41    0xd87dd  1      OPC=nop             
  nop                                               #  42    0xd87de  1      OPC=nop             
  nop                                               #  43    0xd87df  1      OPC=nop             
.L_d87e0:                                           #        0xd87e0  0      OPC=<label>         
  movl %ebx, %eax                                   #  44    0xd87e0  2      OPC=movl_r32_r32    
  movq 0x18(%rsp), %r12                             #  45    0xd87e2  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %rbx                             #  46    0xd87e7  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r13                             #  47    0xd87ec  5      OPC=movq_r64_m64    
  addl $0x28, %esp                                  #  48    0xd87f1  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xd87f4  3      OPC=addq_r64_r64    
  popq %r11                                         #  50    0xd87f7  2      OPC=popq_r64_1      
  nop                                               #  51    0xd87f9  1      OPC=nop             
  nop                                               #  52    0xd87fa  1      OPC=nop             
  nop                                               #  53    0xd87fb  1      OPC=nop             
  nop                                               #  54    0xd87fc  1      OPC=nop             
  nop                                               #  55    0xd87fd  1      OPC=nop             
  nop                                               #  56    0xd87fe  1      OPC=nop             
  nop                                               #  57    0xd87ff  1      OPC=nop             
  andl $0xffffffe0, %r11d                           #  58    0xd8800  7      OPC=andl_r32_imm32  
  nop                                               #  59    0xd8807  1      OPC=nop             
  nop                                               #  60    0xd8808  1      OPC=nop             
  nop                                               #  61    0xd8809  1      OPC=nop             
  nop                                               #  62    0xd880a  1      OPC=nop             
  addq %r15, %r11                                   #  63    0xd880b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  64    0xd880e  3      OPC=jmpq_r64        
  nop                                               #  65    0xd8811  1      OPC=nop             
  nop                                               #  66    0xd8812  1      OPC=nop             
  nop                                               #  67    0xd8813  1      OPC=nop             
  nop                                               #  68    0xd8814  1      OPC=nop             
  nop                                               #  69    0xd8815  1      OPC=nop             
  nop                                               #  70    0xd8816  1      OPC=nop             
  nop                                               #  71    0xd8817  1      OPC=nop             
  nop                                               #  72    0xd8818  1      OPC=nop             
  nop                                               #  73    0xd8819  1      OPC=nop             
  nop                                               #  74    0xd881a  1      OPC=nop             
  nop                                               #  75    0xd881b  1      OPC=nop             
  nop                                               #  76    0xd881c  1      OPC=nop             
  nop                                               #  77    0xd881d  1      OPC=nop             
  nop                                               #  78    0xd881e  1      OPC=nop             
  nop                                               #  79    0xd881f  1      OPC=nop             
  nop                                               #  80    0xd8820  1      OPC=nop             
  nop                                               #  81    0xd8821  1      OPC=nop             
  nop                                               #  82    0xd8822  1      OPC=nop             
  nop                                               #  83    0xd8823  1      OPC=nop             
  nop                                               #  84    0xd8824  1      OPC=nop             
  nop                                               #  85    0xd8825  1      OPC=nop             
  nop                                               #  86    0xd8826  1      OPC=nop             
.L_d8820:                                           #        0xd8827  0      OPC=<label>         
  movl %ebx, %ebx                                   #  87    0xd8827  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %ecx                          #  88    0xd8829  4      OPC=movl_r32_m32    
  leal -0xc(%rcx), %eax                             #  89    0xd882d  3      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  90    0xd8830  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  91    0xd8832  4      OPC=movl_r32_m32    
  movl %edi, %esi                                   #  92    0xd8836  2      OPC=movl_r32_r32    
  negl %esi                                         #  93    0xd8838  2      OPC=negl_r32        
  addl $0xffffffe, %esi                             #  94    0xd883a  6      OPC=addl_r32_imm32  
  cmpl %esi, %edx                                   #  95    0xd8840  2      OPC=cmpl_r32_r32    
  nop                                               #  96    0xd8842  1      OPC=nop             
  nop                                               #  97    0xd8843  1      OPC=nop             
  nop                                               #  98    0xd8844  1      OPC=nop             
  nop                                               #  99    0xd8845  1      OPC=nop             
  nop                                               #  100   0xd8846  1      OPC=nop             
  ja .L_d89c0                                       #  101   0xd8847  6      OPC=ja_label_1      
  leal (%rdx,%rdi,1), %r12d                         #  102   0xd884d  4      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  103   0xd8851  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rax,1), %r12d                      #  104   0xd8853  5      OPC=cmpl_r32_m32    
  ja .L_d8880                                       #  105   0xd8858  2      OPC=ja_label        
  movl %eax, %eax                                   #  106   0xd885a  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %r9d                       #  107   0xd885c  5      OPC=movl_r32_m32    
  testl %r9d, %r9d                                  #  108   0xd8861  3      OPC=testl_r32_r32   
  nop                                               #  109   0xd8864  1      OPC=nop             
  nop                                               #  110   0xd8865  1      OPC=nop             
  nop                                               #  111   0xd8866  1      OPC=nop             
  jle .L_d88e0                                      #  112   0xd8867  2      OPC=jle_label       
  nop                                               #  113   0xd8869  1      OPC=nop             
  nop                                               #  114   0xd886a  1      OPC=nop             
  nop                                               #  115   0xd886b  1      OPC=nop             
  nop                                               #  116   0xd886c  1      OPC=nop             
  nop                                               #  117   0xd886d  1      OPC=nop             
  nop                                               #  118   0xd886e  1      OPC=nop             
  nop                                               #  119   0xd886f  1      OPC=nop             
  nop                                               #  120   0xd8870  1      OPC=nop             
  nop                                               #  121   0xd8871  1      OPC=nop             
  nop                                               #  122   0xd8872  1      OPC=nop             
  nop                                               #  123   0xd8873  1      OPC=nop             
  nop                                               #  124   0xd8874  1      OPC=nop             
  nop                                               #  125   0xd8875  1      OPC=nop             
  nop                                               #  126   0xd8876  1      OPC=nop             
  nop                                               #  127   0xd8877  1      OPC=nop             
  nop                                               #  128   0xd8878  1      OPC=nop             
  nop                                               #  129   0xd8879  1      OPC=nop             
  nop                                               #  130   0xd887a  1      OPC=nop             
  nop                                               #  131   0xd887b  1      OPC=nop             
  nop                                               #  132   0xd887c  1      OPC=nop             
  nop                                               #  133   0xd887d  1      OPC=nop             
  nop                                               #  134   0xd887e  1      OPC=nop             
  nop                                               #  135   0xd887f  1      OPC=nop             
  nop                                               #  136   0xd8880  1      OPC=nop             
  nop                                               #  137   0xd8881  1      OPC=nop             
  nop                                               #  138   0xd8882  1      OPC=nop             
  nop                                               #  139   0xd8883  1      OPC=nop             
  nop                                               #  140   0xd8884  1      OPC=nop             
  nop                                               #  141   0xd8885  1      OPC=nop             
  nop                                               #  142   0xd8886  1      OPC=nop             
.L_d8880:                                           #        0xd8887  0      OPC=<label>         
  cmpl %ecx, %r13d                                  #  143   0xd8887  3      OPC=cmpl_r32_r32    
  jb .L_d88a0                                       #  144   0xd888a  2      OPC=jb_label        
  leal (%rcx,%rdi,4), %edi                          #  145   0xd888c  3      OPC=leal_r32_m16    
  cmpl %r13d, %edi                                  #  146   0xd888f  3      OPC=cmpl_r32_r32    
  jae .L_d8980                                      #  147   0xd8892  6      OPC=jae_label_1     
  nop                                               #  148   0xd8898  1      OPC=nop             
  nop                                               #  149   0xd8899  1      OPC=nop             
  nop                                               #  150   0xd889a  1      OPC=nop             
  nop                                               #  151   0xd889b  1      OPC=nop             
  nop                                               #  152   0xd889c  1      OPC=nop             
  nop                                               #  153   0xd889d  1      OPC=nop             
  nop                                               #  154   0xd889e  1      OPC=nop             
  nop                                               #  155   0xd889f  1      OPC=nop             
  nop                                               #  156   0xd88a0  1      OPC=nop             
  nop                                               #  157   0xd88a1  1      OPC=nop             
  nop                                               #  158   0xd88a2  1      OPC=nop             
  nop                                               #  159   0xd88a3  1      OPC=nop             
  nop                                               #  160   0xd88a4  1      OPC=nop             
  nop                                               #  161   0xd88a5  1      OPC=nop             
  nop                                               #  162   0xd88a6  1      OPC=nop             
.L_d88a0:                                           #        0xd88a7  0      OPC=<label>         
  movl %ebx, %edi                                   #  163   0xd88a7  2      OPC=movl_r32_r32    
  movl %r12d, %esi                                  #  164   0xd88a9  3      OPC=movl_r32_r32    
  movl %edx, 0x8(%rsp)                              #  165   0xd88ac  4      OPC=movl_m32_r32    
  nop                                               #  166   0xd88b0  1      OPC=nop             
  nop                                               #  167   0xd88b1  1      OPC=nop             
  nop                                               #  168   0xd88b2  1      OPC=nop             
  nop                                               #  169   0xd88b3  1      OPC=nop             
  nop                                               #  170   0xd88b4  1      OPC=nop             
  nop                                               #  171   0xd88b5  1      OPC=nop             
  nop                                               #  172   0xd88b6  1      OPC=nop             
  nop                                               #  173   0xd88b7  1      OPC=nop             
  nop                                               #  174   0xd88b8  1      OPC=nop             
  nop                                               #  175   0xd88b9  1      OPC=nop             
  nop                                               #  176   0xd88ba  1      OPC=nop             
  nop                                               #  177   0xd88bb  1      OPC=nop             
  nop                                               #  178   0xd88bc  1      OPC=nop             
  nop                                               #  179   0xd88bd  1      OPC=nop             
  nop                                               #  180   0xd88be  1      OPC=nop             
  nop                                               #  181   0xd88bf  1      OPC=nop             
  nop                                               #  182   0xd88c0  1      OPC=nop             
  nop                                               #  183   0xd88c1  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7reserveEj  #  184   0xd88c2  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  185   0xd88c7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %ecx                          #  186   0xd88c9  4      OPC=movl_r32_m32    
  movl 0x8(%rsp), %edx                              #  187   0xd88cd  4      OPC=movl_r32_m32    
  leal -0xc(%rcx), %eax                             #  188   0xd88d1  3      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  189   0xd88d4  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  190   0xd88d6  4      OPC=movl_r32_m32    
  nop                                               #  191   0xd88da  1      OPC=nop             
  nop                                               #  192   0xd88db  1      OPC=nop             
  nop                                               #  193   0xd88dc  1      OPC=nop             
  nop                                               #  194   0xd88dd  1      OPC=nop             
  nop                                               #  195   0xd88de  1      OPC=nop             
  nop                                               #  196   0xd88df  1      OPC=nop             
  nop                                               #  197   0xd88e0  1      OPC=nop             
  nop                                               #  198   0xd88e1  1      OPC=nop             
  nop                                               #  199   0xd88e2  1      OPC=nop             
  nop                                               #  200   0xd88e3  1      OPC=nop             
  nop                                               #  201   0xd88e4  1      OPC=nop             
  nop                                               #  202   0xd88e5  1      OPC=nop             
  nop                                               #  203   0xd88e6  1      OPC=nop             
.L_d88e0:                                           #        0xd88e7  0      OPC=<label>         
  cmpl $0x1, %edx                                   #  204   0xd88e7  3      OPC=cmpl_r32_imm8   
  leal (%rcx,%rdi,4), %edi                          #  205   0xd88ea  3      OPC=leal_r32_m16    
  je .L_d8960                                       #  206   0xd88ed  2      OPC=je_label        
  movl %r13d, %esi                                  #  207   0xd88ef  3      OPC=movl_r32_r32    
  nop                                               #  208   0xd88f2  1      OPC=nop             
  nop                                               #  209   0xd88f3  1      OPC=nop             
  nop                                               #  210   0xd88f4  1      OPC=nop             
  nop                                               #  211   0xd88f5  1      OPC=nop             
  nop                                               #  212   0xd88f6  1      OPC=nop             
  nop                                               #  213   0xd88f7  1      OPC=nop             
  nop                                               #  214   0xd88f8  1      OPC=nop             
  nop                                               #  215   0xd88f9  1      OPC=nop             
  nop                                               #  216   0xd88fa  1      OPC=nop             
  nop                                               #  217   0xd88fb  1      OPC=nop             
  nop                                               #  218   0xd88fc  1      OPC=nop             
  nop                                               #  219   0xd88fd  1      OPC=nop             
  nop                                               #  220   0xd88fe  1      OPC=nop             
  nop                                               #  221   0xd88ff  1      OPC=nop             
  nop                                               #  222   0xd8900  1      OPC=nop             
  nop                                               #  223   0xd8901  1      OPC=nop             
  callq .wmemcpy                                    #  224   0xd8902  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  225   0xd8907  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                          #  226   0xd8909  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                   #  227   0xd890d  3      OPC=subl_r32_imm8   
  nop                                               #  228   0xd8910  1      OPC=nop             
  nop                                               #  229   0xd8911  1      OPC=nop             
  nop                                               #  230   0xd8912  1      OPC=nop             
  nop                                               #  231   0xd8913  1      OPC=nop             
  nop                                               #  232   0xd8914  1      OPC=nop             
  nop                                               #  233   0xd8915  1      OPC=nop             
  nop                                               #  234   0xd8916  1      OPC=nop             
  nop                                               #  235   0xd8917  1      OPC=nop             
  nop                                               #  236   0xd8918  1      OPC=nop             
  nop                                               #  237   0xd8919  1      OPC=nop             
  nop                                               #  238   0xd891a  1      OPC=nop             
  nop                                               #  239   0xd891b  1      OPC=nop             
  nop                                               #  240   0xd891c  1      OPC=nop             
  nop                                               #  241   0xd891d  1      OPC=nop             
  nop                                               #  242   0xd891e  1      OPC=nop             
  nop                                               #  243   0xd891f  1      OPC=nop             
  nop                                               #  244   0xd8920  1      OPC=nop             
  nop                                               #  245   0xd8921  1      OPC=nop             
  nop                                               #  246   0xd8922  1      OPC=nop             
  nop                                               #  247   0xd8923  1      OPC=nop             
  nop                                               #  248   0xd8924  1      OPC=nop             
  nop                                               #  249   0xd8925  1      OPC=nop             
  nop                                               #  250   0xd8926  1      OPC=nop             
.L_d8920:                                           #        0xd8927  0      OPC=<label>         
  movl %eax, %eax                                   #  251   0xd8927  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)                         #  252   0xd8929  4      OPC=movl_m32_r32    
  leal (%rax,%r12,4), %r12d                         #  253   0xd892d  4      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  254   0xd8931  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rax,1)                       #  255   0xd8933  9      OPC=movl_m32_imm32  
  nop                                               #  256   0xd893c  1      OPC=nop             
  nop                                               #  257   0xd893d  1      OPC=nop             
  nop                                               #  258   0xd893e  1      OPC=nop             
  nop                                               #  259   0xd893f  1      OPC=nop             
  nop                                               #  260   0xd8940  1      OPC=nop             
  nop                                               #  261   0xd8941  1      OPC=nop             
  nop                                               #  262   0xd8942  1      OPC=nop             
  nop                                               #  263   0xd8943  1      OPC=nop             
  nop                                               #  264   0xd8944  1      OPC=nop             
  nop                                               #  265   0xd8945  1      OPC=nop             
  nop                                               #  266   0xd8946  1      OPC=nop             
  movl %r12d, %r12d                                 #  267   0xd8947  3      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%r12,1)                       #  268   0xd894a  9      OPC=movl_m32_imm32  
  jmpq .L_d87e0                                     #  269   0xd8953  5      OPC=jmpq_label_1    
  nop                                               #  270   0xd8958  1      OPC=nop             
  nop                                               #  271   0xd8959  1      OPC=nop             
  nop                                               #  272   0xd895a  1      OPC=nop             
  nop                                               #  273   0xd895b  1      OPC=nop             
  nop                                               #  274   0xd895c  1      OPC=nop             
  nop                                               #  275   0xd895d  1      OPC=nop             
  nop                                               #  276   0xd895e  1      OPC=nop             
  nop                                               #  277   0xd895f  1      OPC=nop             
  nop                                               #  278   0xd8960  1      OPC=nop             
  nop                                               #  279   0xd8961  1      OPC=nop             
  nop                                               #  280   0xd8962  1      OPC=nop             
  nop                                               #  281   0xd8963  1      OPC=nop             
  nop                                               #  282   0xd8964  1      OPC=nop             
  nop                                               #  283   0xd8965  1      OPC=nop             
  nop                                               #  284   0xd8966  1      OPC=nop             
.L_d8960:                                           #        0xd8967  0      OPC=<label>         
  movl %r13d, %r13d                                 #  285   0xd8967  3      OPC=movl_r32_r32    
  movl (%r15,%r13,1), %edx                          #  286   0xd896a  4      OPC=movl_r32_m32    
  movl %edi, %edi                                   #  287   0xd896e  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                          #  288   0xd8970  4      OPC=movl_m32_r32    
  jmpq .L_d8920                                     #  289   0xd8974  2      OPC=jmpq_label      
  xchgw %ax, %ax                                    #  290   0xd8976  2      OPC=xchgw_ax_r16    
  nop                                               #  291   0xd8978  1      OPC=nop             
  nop                                               #  292   0xd8979  1      OPC=nop             
  nop                                               #  293   0xd897a  1      OPC=nop             
  nop                                               #  294   0xd897b  1      OPC=nop             
  nop                                               #  295   0xd897c  1      OPC=nop             
  nop                                               #  296   0xd897d  1      OPC=nop             
  nop                                               #  297   0xd897e  1      OPC=nop             
  nop                                               #  298   0xd897f  1      OPC=nop             
  nop                                               #  299   0xd8980  1      OPC=nop             
  nop                                               #  300   0xd8981  1      OPC=nop             
  nop                                               #  301   0xd8982  1      OPC=nop             
  nop                                               #  302   0xd8983  1      OPC=nop             
  nop                                               #  303   0xd8984  1      OPC=nop             
  nop                                               #  304   0xd8985  1      OPC=nop             
  nop                                               #  305   0xd8986  1      OPC=nop             
.L_d8980:                                           #        0xd8987  0      OPC=<label>         
  movl %ebx, %edi                                   #  306   0xd8987  2      OPC=movl_r32_r32    
  movl %r12d, %esi                                  #  307   0xd8989  3      OPC=movl_r32_r32    
  subl %ecx, %r13d                                  #  308   0xd898c  3      OPC=subl_r32_r32    
  movl %edx, 0x8(%rsp)                              #  309   0xd898f  4      OPC=movl_m32_r32    
  sarl $0x2, %r13d                                  #  310   0xd8993  4      OPC=sarl_r32_imm8   
  nop                                               #  311   0xd8997  1      OPC=nop             
  nop                                               #  312   0xd8998  1      OPC=nop             
  nop                                               #  313   0xd8999  1      OPC=nop             
  nop                                               #  314   0xd899a  1      OPC=nop             
  nop                                               #  315   0xd899b  1      OPC=nop             
  nop                                               #  316   0xd899c  1      OPC=nop             
  nop                                               #  317   0xd899d  1      OPC=nop             
  nop                                               #  318   0xd899e  1      OPC=nop             
  nop                                               #  319   0xd899f  1      OPC=nop             
  nop                                               #  320   0xd89a0  1      OPC=nop             
  nop                                               #  321   0xd89a1  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE7reserveEj  #  322   0xd89a2  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  323   0xd89a7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %ecx                          #  324   0xd89a9  4      OPC=movl_r32_m32    
  movl 0x8(%rsp), %edx                              #  325   0xd89ad  4      OPC=movl_r32_m32    
  leal -0xc(%rcx), %eax                             #  326   0xd89b1  3      OPC=leal_r32_m16    
  leal (%rcx,%r13,4), %r13d                         #  327   0xd89b4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                   #  328   0xd89b8  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                          #  329   0xd89ba  4      OPC=movl_r32_m32    
  jmpq .L_d88e0                                     #  330   0xd89be  5      OPC=jmpq_label_1    
  nop                                               #  331   0xd89c3  1      OPC=nop             
  nop                                               #  332   0xd89c4  1      OPC=nop             
  nop                                               #  333   0xd89c5  1      OPC=nop             
  nop                                               #  334   0xd89c6  1      OPC=nop             
.L_d89c0:                                           #        0xd89c7  0      OPC=<label>         
  movl $0x1003bae6, %edi                            #  335   0xd89c7  5      OPC=movl_r32_imm32  
  nop                                               #  336   0xd89cc  1      OPC=nop             
  nop                                               #  337   0xd89cd  1      OPC=nop             
  nop                                               #  338   0xd89ce  1      OPC=nop             
  nop                                               #  339   0xd89cf  1      OPC=nop             
  nop                                               #  340   0xd89d0  1      OPC=nop             
  nop                                               #  341   0xd89d1  1      OPC=nop             
  nop                                               #  342   0xd89d2  1      OPC=nop             
  nop                                               #  343   0xd89d3  1      OPC=nop             
  nop                                               #  344   0xd89d4  1      OPC=nop             
  nop                                               #  345   0xd89d5  1      OPC=nop             
  nop                                               #  346   0xd89d6  1      OPC=nop             
  nop                                               #  347   0xd89d7  1      OPC=nop             
  nop                                               #  348   0xd89d8  1      OPC=nop             
  nop                                               #  349   0xd89d9  1      OPC=nop             
  nop                                               #  350   0xd89da  1      OPC=nop             
  nop                                               #  351   0xd89db  1      OPC=nop             
  nop                                               #  352   0xd89dc  1      OPC=nop             
  nop                                               #  353   0xd89dd  1      OPC=nop             
  nop                                               #  354   0xd89de  1      OPC=nop             
  nop                                               #  355   0xd89df  1      OPC=nop             
  nop                                               #  356   0xd89e0  1      OPC=nop             
  nop                                               #  357   0xd89e1  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc              #  358   0xd89e2  5      OPC=callq_label     
                                                                                                 
.size _ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE6appendEPKwj
