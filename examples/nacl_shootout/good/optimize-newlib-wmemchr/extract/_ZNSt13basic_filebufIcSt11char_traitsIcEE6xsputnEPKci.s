  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE6xsputnEPKci
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE6xsputnEPKci, @function

#! file-offset 0x12c640
#! rip-offset  0xec640
#! capacity    576 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode               
._ZNSt13basic_filebufIcSt11char_traitsIcEE6xsputnEPKci:              #        0xec640  0      OPC=<label>          
  movq %rbx, -0x20(%rsp)                                             #  1     0xec640  5      OPC=movq_m64_r64     
  movl %edi, %ebx                                                    #  2     0xec645  2      OPC=movl_r32_r32     
  movq %r12, -0x18(%rsp)                                             #  3     0xec647  5      OPC=movq_m64_r64     
  movq %r13, -0x10(%rsp)                                             #  4     0xec64c  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                                              #  5     0xec651  5      OPC=movq_m64_r64     
  subl $0x28, %esp                                                   #  6     0xec656  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                                    #  7     0xec659  3      OPC=addq_r64_r64     
  nop                                                                #  8     0xec65c  1      OPC=nop              
  nop                                                                #  9     0xec65d  1      OPC=nop              
  nop                                                                #  10    0xec65e  1      OPC=nop              
  nop                                                                #  11    0xec65f  1      OPC=nop              
  movl %ebx, %ebx                                                    #  12    0xec660  2      OPC=movl_r32_r32     
  movl 0x70(%r15,%rbx,1), %edi                                       #  13    0xec662  5      OPC=movl_r32_m32     
  movl %edx, %r12d                                                   #  14    0xec667  3      OPC=movl_r32_r32     
  movl %esi, %r13d                                                   #  15    0xec66a  3      OPC=movl_r32_r32     
  movl %ebx, %ebx                                                    #  16    0xec66d  2      OPC=movl_r32_r32     
  movl 0x3c(%r15,%rbx,1), %r14d                                      #  17    0xec66f  5      OPC=movl_r32_m32     
  testq %rdi, %rdi                                                   #  18    0xec674  3      OPC=testq_r64_r64    
  je .L_ec820                                                        #  19    0xec677  6      OPC=je_label_1       
  nop                                                                #  20    0xec67d  1      OPC=nop              
  nop                                                                #  21    0xec67e  1      OPC=nop              
  nop                                                                #  22    0xec67f  1      OPC=nop              
  movl %edi, %edi                                                    #  23    0xec680  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax                                           #  24    0xec682  4      OPC=movl_r32_m32     
  movl %eax, %eax                                                    #  25    0xec686  2      OPC=movl_r32_r32     
  movl 0x18(%r15,%rax,1), %eax                                       #  26    0xec688  5      OPC=movl_r32_m32     
  nop                                                                #  27    0xec68d  1      OPC=nop              
  nop                                                                #  28    0xec68e  1      OPC=nop              
  nop                                                                #  29    0xec68f  1      OPC=nop              
  nop                                                                #  30    0xec690  1      OPC=nop              
  nop                                                                #  31    0xec691  1      OPC=nop              
  nop                                                                #  32    0xec692  1      OPC=nop              
  nop                                                                #  33    0xec693  1      OPC=nop              
  nop                                                                #  34    0xec694  1      OPC=nop              
  nop                                                                #  35    0xec695  1      OPC=nop              
  nop                                                                #  36    0xec696  1      OPC=nop              
  nop                                                                #  37    0xec697  1      OPC=nop              
  andl $0xffffffe0, %eax                                             #  38    0xec698  6      OPC=andl_r32_imm32   
  nop                                                                #  39    0xec69e  1      OPC=nop              
  nop                                                                #  40    0xec69f  1      OPC=nop              
  nop                                                                #  41    0xec6a0  1      OPC=nop              
  addq %r15, %rax                                                    #  42    0xec6a1  3      OPC=addq_r64_r64     
  callq %rax                                                         #  43    0xec6a4  2      OPC=callq_r64        
  testb %al, %al                                                     #  44    0xec6a6  2      OPC=testb_r8_r8      
  je .L_ec7a0                                                        #  45    0xec6a8  6      OPC=je_label_1       
  andl $0x10, %r14d                                                  #  46    0xec6ae  4      OPC=andl_r32_imm8    
  je .L_ec7a0                                                        #  47    0xec6b2  6      OPC=je_label_1       
  movl %ebx, %ebx                                                    #  48    0xec6b8  2      OPC=movl_r32_r32     
  cmpb $0x0, 0x61(%r15,%rbx,1)                                       #  49    0xec6ba  6      OPC=cmpb_m8_imm8     
  jne .L_ec7a0                                                       #  50    0xec6c0  6      OPC=jne_label_1      
  movl %ebx, %ebx                                                    #  51    0xec6c6  2      OPC=movl_r32_r32     
  movl 0x14(%r15,%rbx,1), %r14d                                      #  52    0xec6c8  5      OPC=movl_r32_m32     
  movl %ebx, %ebx                                                    #  53    0xec6cd  2      OPC=movl_r32_r32     
  movl 0x18(%r15,%rbx,1), %eax                                       #  54    0xec6cf  5      OPC=movl_r32_m32     
  subl %r14d, %eax                                                   #  55    0xec6d4  3      OPC=subl_r32_r32     
  movl %ebx, %ebx                                                    #  56    0xec6d7  2      OPC=movl_r32_r32     
  cmpb $0x0, 0x62(%r15,%rbx,1)                                       #  57    0xec6d9  6      OPC=cmpb_m8_imm8     
  jne .L_ec700                                                       #  58    0xec6df  2      OPC=jne_label        
  nop                                                                #  59    0xec6e1  1      OPC=nop              
  nop                                                                #  60    0xec6e2  1      OPC=nop              
  nop                                                                #  61    0xec6e3  1      OPC=nop              
  nop                                                                #  62    0xec6e4  1      OPC=nop              
  nop                                                                #  63    0xec6e5  1      OPC=nop              
  movl %ebx, %ebx                                                    #  64    0xec6e6  2      OPC=movl_r32_r32     
  movl 0x5c(%r15,%rbx,1), %edx                                       #  65    0xec6e8  5      OPC=movl_r32_m32     
  leal -0x1(%rdx), %ecx                                              #  66    0xec6ed  3      OPC=leal_r32_m16     
  cmpl $0x2, %edx                                                    #  67    0xec6f0  3      OPC=cmpl_r32_imm8    
  cmovael %ecx, %eax                                                 #  68    0xec6f3  3      OPC=cmovael_r32_r32  
  nop                                                                #  69    0xec6f6  1      OPC=nop              
  nop                                                                #  70    0xec6f7  1      OPC=nop              
  nop                                                                #  71    0xec6f8  1      OPC=nop              
  nop                                                                #  72    0xec6f9  1      OPC=nop              
  nop                                                                #  73    0xec6fa  1      OPC=nop              
  nop                                                                #  74    0xec6fb  1      OPC=nop              
  nop                                                                #  75    0xec6fc  1      OPC=nop              
  nop                                                                #  76    0xec6fd  1      OPC=nop              
  nop                                                                #  77    0xec6fe  1      OPC=nop              
  nop                                                                #  78    0xec6ff  1      OPC=nop              
  nop                                                                #  79    0xec700  1      OPC=nop              
  nop                                                                #  80    0xec701  1      OPC=nop              
  nop                                                                #  81    0xec702  1      OPC=nop              
  nop                                                                #  82    0xec703  1      OPC=nop              
  nop                                                                #  83    0xec704  1      OPC=nop              
  nop                                                                #  84    0xec705  1      OPC=nop              
.L_ec700:                                                            #        0xec706  0      OPC=<label>          
  cmpl $0x400, %eax                                                  #  85    0xec706  5      OPC=cmpl_eax_imm32   
  movl $0x400, %edx                                                  #  86    0xec70b  5      OPC=movl_r32_imm32   
  cmovgel %edx, %eax                                                 #  87    0xec710  3      OPC=cmovgel_r32_r32  
  cmpl %r12d, %eax                                                   #  88    0xec713  3      OPC=cmpl_r32_r32     
  jg .L_ec7a0                                                        #  89    0xec716  6      OPC=jg_label_1       
  movl %ebx, %ebx                                                    #  90    0xec71c  2      OPC=movl_r32_r32     
  movl 0x10(%r15,%rbx,1), %esi                                       #  91    0xec71e  5      OPC=movl_r32_m32     
  leal 0x34(%rbx), %edi                                              #  92    0xec723  3      OPC=leal_r32_m16     
  movl %r12d, %r8d                                                   #  93    0xec726  3      OPC=movl_r32_r32     
  movl %r13d, %ecx                                                   #  94    0xec729  3      OPC=movl_r32_r32     
  subl %esi, %r14d                                                   #  95    0xec72c  3      OPC=subl_r32_r32     
  movl %r14d, %edx                                                   #  96    0xec72f  3      OPC=movl_r32_r32     
  addl %r14d, %r12d                                                  #  97    0xec732  3      OPC=addl_r32_r32     
  nop                                                                #  98    0xec735  1      OPC=nop              
  nop                                                                #  99    0xec736  1      OPC=nop              
  nop                                                                #  100   0xec737  1      OPC=nop              
  nop                                                                #  101   0xec738  1      OPC=nop              
  nop                                                                #  102   0xec739  1      OPC=nop              
  nop                                                                #  103   0xec73a  1      OPC=nop              
  nop                                                                #  104   0xec73b  1      OPC=nop              
  nop                                                                #  105   0xec73c  1      OPC=nop              
  nop                                                                #  106   0xec73d  1      OPC=nop              
  nop                                                                #  107   0xec73e  1      OPC=nop              
  nop                                                                #  108   0xec73f  1      OPC=nop              
  nop                                                                #  109   0xec740  1      OPC=nop              
  callq ._ZNSt12__basic_fileIcE8xsputn_2EPKciS2_i                    #  110   0xec741  5      OPC=callq_label      
  cmpl %r12d, %eax                                                   #  111   0xec746  3      OPC=cmpl_r32_r32     
  movl %eax, %r13d                                                   #  112   0xec749  3      OPC=movl_r32_r32     
  je .L_ec7e0                                                        #  113   0xec74c  6      OPC=je_label_1       
  nop                                                                #  114   0xec752  1      OPC=nop              
  nop                                                                #  115   0xec753  1      OPC=nop              
  nop                                                                #  116   0xec754  1      OPC=nop              
  nop                                                                #  117   0xec755  1      OPC=nop              
  nop                                                                #  118   0xec756  1      OPC=nop              
  nop                                                                #  119   0xec757  1      OPC=nop              
  nop                                                                #  120   0xec758  1      OPC=nop              
  nop                                                                #  121   0xec759  1      OPC=nop              
  nop                                                                #  122   0xec75a  1      OPC=nop              
  nop                                                                #  123   0xec75b  1      OPC=nop              
  nop                                                                #  124   0xec75c  1      OPC=nop              
  nop                                                                #  125   0xec75d  1      OPC=nop              
  nop                                                                #  126   0xec75e  1      OPC=nop              
  nop                                                                #  127   0xec75f  1      OPC=nop              
  nop                                                                #  128   0xec760  1      OPC=nop              
  nop                                                                #  129   0xec761  1      OPC=nop              
  nop                                                                #  130   0xec762  1      OPC=nop              
  nop                                                                #  131   0xec763  1      OPC=nop              
  nop                                                                #  132   0xec764  1      OPC=nop              
  nop                                                                #  133   0xec765  1      OPC=nop              
.L_ec760:                                                            #        0xec766  0      OPC=<label>          
  movl %r13d, %edx                                                   #  134   0xec766  3      OPC=movl_r32_r32     
  xorl %eax, %eax                                                    #  135   0xec769  2      OPC=xorl_r32_r32     
  movq 0x8(%rsp), %rbx                                               #  136   0xec76b  5      OPC=movq_r64_m64     
  subl %r14d, %edx                                                   #  137   0xec770  3      OPC=subl_r32_r32     
  cmpl %r13d, %r14d                                                  #  138   0xec773  3      OPC=cmpl_r32_r32     
  movq 0x10(%rsp), %r12                                              #  139   0xec776  5      OPC=movq_r64_m64     
  cmovll %edx, %eax                                                  #  140   0xec77b  3      OPC=cmovll_r32_r32   
  movq 0x18(%rsp), %r13                                              #  141   0xec77e  5      OPC=movq_r64_m64     
  nop                                                                #  142   0xec783  1      OPC=nop              
  nop                                                                #  143   0xec784  1      OPC=nop              
  nop                                                                #  144   0xec785  1      OPC=nop              
  movq 0x20(%rsp), %r14                                              #  145   0xec786  5      OPC=movq_r64_m64     
  addl $0x28, %esp                                                   #  146   0xec78b  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                                    #  147   0xec78e  3      OPC=addq_r64_r64     
  popq %r11                                                          #  148   0xec791  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                                            #  149   0xec793  7      OPC=andl_r32_imm32   
  nop                                                                #  150   0xec79a  1      OPC=nop              
  nop                                                                #  151   0xec79b  1      OPC=nop              
  nop                                                                #  152   0xec79c  1      OPC=nop              
  nop                                                                #  153   0xec79d  1      OPC=nop              
  addq %r15, %r11                                                    #  154   0xec79e  3      OPC=addq_r64_r64     
  jmpq %r11                                                          #  155   0xec7a1  3      OPC=jmpq_r64         
  nop                                                                #  156   0xec7a4  1      OPC=nop              
  nop                                                                #  157   0xec7a5  1      OPC=nop              
  nop                                                                #  158   0xec7a6  1      OPC=nop              
  nop                                                                #  159   0xec7a7  1      OPC=nop              
  nop                                                                #  160   0xec7a8  1      OPC=nop              
  nop                                                                #  161   0xec7a9  1      OPC=nop              
  nop                                                                #  162   0xec7aa  1      OPC=nop              
  nop                                                                #  163   0xec7ab  1      OPC=nop              
  nop                                                                #  164   0xec7ac  1      OPC=nop              
.L_ec7a0:                                                            #        0xec7ad  0      OPC=<label>          
  movl %r12d, %edx                                                   #  165   0xec7ad  3      OPC=movl_r32_r32     
  movl %r13d, %esi                                                   #  166   0xec7b0  3      OPC=movl_r32_r32     
  movl %ebx, %edi                                                    #  167   0xec7b3  2      OPC=movl_r32_r32     
  movq 0x10(%rsp), %r12                                              #  168   0xec7b5  5      OPC=movq_r64_m64     
  movq 0x8(%rsp), %rbx                                               #  169   0xec7ba  5      OPC=movq_r64_m64     
  movq 0x18(%rsp), %r13                                              #  170   0xec7bf  5      OPC=movq_r64_m64     
  movq 0x20(%rsp), %r14                                              #  171   0xec7c4  5      OPC=movq_r64_m64     
  nop                                                                #  172   0xec7c9  1      OPC=nop              
  nop                                                                #  173   0xec7ca  1      OPC=nop              
  nop                                                                #  174   0xec7cb  1      OPC=nop              
  nop                                                                #  175   0xec7cc  1      OPC=nop              
  addl $0x28, %esp                                                   #  176   0xec7cd  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                                    #  177   0xec7d0  3      OPC=addq_r64_r64     
  jmpq ._ZNSt15basic_streambufIcSt11char_traitsIcEE6xsputnEPKci      #  178   0xec7d3  5      OPC=jmpq_label_1     
  nop                                                                #  179   0xec7d8  1      OPC=nop              
  nop                                                                #  180   0xec7d9  1      OPC=nop              
  nop                                                                #  181   0xec7da  1      OPC=nop              
  nop                                                                #  182   0xec7db  1      OPC=nop              
  nop                                                                #  183   0xec7dc  1      OPC=nop              
  nop                                                                #  184   0xec7dd  1      OPC=nop              
  nop                                                                #  185   0xec7de  1      OPC=nop              
  nop                                                                #  186   0xec7df  1      OPC=nop              
  nop                                                                #  187   0xec7e0  1      OPC=nop              
  nop                                                                #  188   0xec7e1  1      OPC=nop              
  nop                                                                #  189   0xec7e2  1      OPC=nop              
  nop                                                                #  190   0xec7e3  1      OPC=nop              
  nop                                                                #  191   0xec7e4  1      OPC=nop              
  nop                                                                #  192   0xec7e5  1      OPC=nop              
  nop                                                                #  193   0xec7e6  1      OPC=nop              
  nop                                                                #  194   0xec7e7  1      OPC=nop              
  nop                                                                #  195   0xec7e8  1      OPC=nop              
  nop                                                                #  196   0xec7e9  1      OPC=nop              
  nop                                                                #  197   0xec7ea  1      OPC=nop              
  nop                                                                #  198   0xec7eb  1      OPC=nop              
  nop                                                                #  199   0xec7ec  1      OPC=nop              
.L_ec7e0:                                                            #        0xec7ed  0      OPC=<label>          
  xorl %esi, %esi                                                    #  200   0xec7ed  2      OPC=xorl_r32_r32     
  movl %ebx, %edi                                                    #  201   0xec7ef  2      OPC=movl_r32_r32     
  nop                                                                #  202   0xec7f1  1      OPC=nop              
  nop                                                                #  203   0xec7f2  1      OPC=nop              
  nop                                                                #  204   0xec7f3  1      OPC=nop              
  nop                                                                #  205   0xec7f4  1      OPC=nop              
  nop                                                                #  206   0xec7f5  1      OPC=nop              
  nop                                                                #  207   0xec7f6  1      OPC=nop              
  nop                                                                #  208   0xec7f7  1      OPC=nop              
  nop                                                                #  209   0xec7f8  1      OPC=nop              
  nop                                                                #  210   0xec7f9  1      OPC=nop              
  nop                                                                #  211   0xec7fa  1      OPC=nop              
  nop                                                                #  212   0xec7fb  1      OPC=nop              
  nop                                                                #  213   0xec7fc  1      OPC=nop              
  nop                                                                #  214   0xec7fd  1      OPC=nop              
  nop                                                                #  215   0xec7fe  1      OPC=nop              
  nop                                                                #  216   0xec7ff  1      OPC=nop              
  nop                                                                #  217   0xec800  1      OPC=nop              
  nop                                                                #  218   0xec801  1      OPC=nop              
  nop                                                                #  219   0xec802  1      OPC=nop              
  nop                                                                #  220   0xec803  1      OPC=nop              
  nop                                                                #  221   0xec804  1      OPC=nop              
  nop                                                                #  222   0xec805  1      OPC=nop              
  nop                                                                #  223   0xec806  1      OPC=nop              
  nop                                                                #  224   0xec807  1      OPC=nop              
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE13_M_set_bufferEi  #  225   0xec808  5      OPC=callq_label      
  movl %ebx, %ebx                                                    #  226   0xec80d  2      OPC=movl_r32_r32     
  movb $0x1, 0x62(%r15,%rbx,1)                                       #  227   0xec80f  6      OPC=movb_m8_imm8     
  jmpq .L_ec760                                                      #  228   0xec815  5      OPC=jmpq_label_1     
  nop                                                                #  229   0xec81a  1      OPC=nop              
  nop                                                                #  230   0xec81b  1      OPC=nop              
  nop                                                                #  231   0xec81c  1      OPC=nop              
  nop                                                                #  232   0xec81d  1      OPC=nop              
  nop                                                                #  233   0xec81e  1      OPC=nop              
  nop                                                                #  234   0xec81f  1      OPC=nop              
  nop                                                                #  235   0xec820  1      OPC=nop              
  nop                                                                #  236   0xec821  1      OPC=nop              
  nop                                                                #  237   0xec822  1      OPC=nop              
  nop                                                                #  238   0xec823  1      OPC=nop              
  nop                                                                #  239   0xec824  1      OPC=nop              
  nop                                                                #  240   0xec825  1      OPC=nop              
  nop                                                                #  241   0xec826  1      OPC=nop              
  nop                                                                #  242   0xec827  1      OPC=nop              
  nop                                                                #  243   0xec828  1      OPC=nop              
  nop                                                                #  244   0xec829  1      OPC=nop              
  nop                                                                #  245   0xec82a  1      OPC=nop              
  nop                                                                #  246   0xec82b  1      OPC=nop              
  nop                                                                #  247   0xec82c  1      OPC=nop              
.L_ec820:                                                            #        0xec82d  0      OPC=<label>          
  nop                                                                #  248   0xec82d  1      OPC=nop              
  nop                                                                #  249   0xec82e  1      OPC=nop              
  nop                                                                #  250   0xec82f  1      OPC=nop              
  nop                                                                #  251   0xec830  1      OPC=nop              
  nop                                                                #  252   0xec831  1      OPC=nop              
  nop                                                                #  253   0xec832  1      OPC=nop              
  nop                                                                #  254   0xec833  1      OPC=nop              
  nop                                                                #  255   0xec834  1      OPC=nop              
  nop                                                                #  256   0xec835  1      OPC=nop              
  nop                                                                #  257   0xec836  1      OPC=nop              
  nop                                                                #  258   0xec837  1      OPC=nop              
  nop                                                                #  259   0xec838  1      OPC=nop              
  nop                                                                #  260   0xec839  1      OPC=nop              
  nop                                                                #  261   0xec83a  1      OPC=nop              
  nop                                                                #  262   0xec83b  1      OPC=nop              
  nop                                                                #  263   0xec83c  1      OPC=nop              
  nop                                                                #  264   0xec83d  1      OPC=nop              
  nop                                                                #  265   0xec83e  1      OPC=nop              
  nop                                                                #  266   0xec83f  1      OPC=nop              
  nop                                                                #  267   0xec840  1      OPC=nop              
  nop                                                                #  268   0xec841  1      OPC=nop              
  nop                                                                #  269   0xec842  1      OPC=nop              
  nop                                                                #  270   0xec843  1      OPC=nop              
  nop                                                                #  271   0xec844  1      OPC=nop              
  nop                                                                #  272   0xec845  1      OPC=nop              
  nop                                                                #  273   0xec846  1      OPC=nop              
  nop                                                                #  274   0xec847  1      OPC=nop              
  callq ._ZSt16__throw_bad_castv                                     #  275   0xec848  5      OPC=callq_label      
  cmpq $0xff, %rdx                                                   #  276   0xec84d  4      OPC=cmpq_r64_imm8    
  movl %eax, %edi                                                    #  277   0xec851  2      OPC=movl_r32_r32     
  je .L_ec860                                                        #  278   0xec853  2      OPC=je_label         
  nop                                                                #  279   0xec855  1      OPC=nop              
  nop                                                                #  280   0xec856  1      OPC=nop              
  nop                                                                #  281   0xec857  1      OPC=nop              
  nop                                                                #  282   0xec858  1      OPC=nop              
  nop                                                                #  283   0xec859  1      OPC=nop              
  nop                                                                #  284   0xec85a  1      OPC=nop              
  nop                                                                #  285   0xec85b  1      OPC=nop              
  nop                                                                #  286   0xec85c  1      OPC=nop              
  nop                                                                #  287   0xec85d  1      OPC=nop              
  nop                                                                #  288   0xec85e  1      OPC=nop              
  nop                                                                #  289   0xec85f  1      OPC=nop              
  nop                                                                #  290   0xec860  1      OPC=nop              
  nop                                                                #  291   0xec861  1      OPC=nop              
  nop                                                                #  292   0xec862  1      OPC=nop              
  nop                                                                #  293   0xec863  1      OPC=nop              
  nop                                                                #  294   0xec864  1      OPC=nop              
  nop                                                                #  295   0xec865  1      OPC=nop              
  nop                                                                #  296   0xec866  1      OPC=nop              
  nop                                                                #  297   0xec867  1      OPC=nop              
  callq ._Unwind_Resume                                              #  298   0xec868  5      OPC=callq_label      
.L_ec860:                                                            #        0xec86d  0      OPC=<label>          
  nop                                                                #  299   0xec86d  1      OPC=nop              
  nop                                                                #  300   0xec86e  1      OPC=nop              
  nop                                                                #  301   0xec86f  1      OPC=nop              
  nop                                                                #  302   0xec870  1      OPC=nop              
  nop                                                                #  303   0xec871  1      OPC=nop              
  nop                                                                #  304   0xec872  1      OPC=nop              
  nop                                                                #  305   0xec873  1      OPC=nop              
  nop                                                                #  306   0xec874  1      OPC=nop              
  nop                                                                #  307   0xec875  1      OPC=nop              
  nop                                                                #  308   0xec876  1      OPC=nop              
  nop                                                                #  309   0xec877  1      OPC=nop              
  nop                                                                #  310   0xec878  1      OPC=nop              
  nop                                                                #  311   0xec879  1      OPC=nop              
  nop                                                                #  312   0xec87a  1      OPC=nop              
  nop                                                                #  313   0xec87b  1      OPC=nop              
  nop                                                                #  314   0xec87c  1      OPC=nop              
  nop                                                                #  315   0xec87d  1      OPC=nop              
  nop                                                                #  316   0xec87e  1      OPC=nop              
  nop                                                                #  317   0xec87f  1      OPC=nop              
  nop                                                                #  318   0xec880  1      OPC=nop              
  nop                                                                #  319   0xec881  1      OPC=nop              
  nop                                                                #  320   0xec882  1      OPC=nop              
  nop                                                                #  321   0xec883  1      OPC=nop              
  nop                                                                #  322   0xec884  1      OPC=nop              
  nop                                                                #  323   0xec885  1      OPC=nop              
  nop                                                                #  324   0xec886  1      OPC=nop              
  nop                                                                #  325   0xec887  1      OPC=nop              
  callq .__cxa_call_unexpected                                       #  326   0xec888  5      OPC=callq_label      
                                                                                                                   
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE6xsputnEPKci, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE6xsputnEPKci
