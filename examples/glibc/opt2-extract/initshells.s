  .text
  .globl initshells
  .type initshells, @function

#! file-offset 0xe14b0
#! rip-offset  0xe14b0
#! capacity    560 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.initshells:                      #        0xe14b0  0      OPC=<label>         
  pushq %r13                      #  1     0xe14b0  2      OPC=pushq_r64_1     
  pushq %r12                      #  2     0xe14b2  2      OPC=pushq_r64_1     
  pushq %rbp                      #  3     0xe14b4  1      OPC=pushq_r64_1     
  pushq %rbx                      #  4     0xe14b5  1      OPC=pushq_r64_1     
  subq $0x98, %rsp                #  5     0xe14b6  7      OPC=subq_r64_imm32  
  movq 0x2bcf44(%rip), %rdi       #  6     0xe14bd  7      OPC=movq_r64_m64    
  callq .L_1f8c0                  #  7     0xe14c4  5      OPC=callq_label     
  movq 0x2bcf30(%rip), %rdi       #  8     0xe14c9  7      OPC=movq_r64_m64    
  movq $0x0, 0x2bcf2d(%rip)       #  9     0xe14d0  11     OPC=movq_m64_imm32  
  callq .L_1f8c0                  #  10    0xe14db  5      OPC=callq_label     
  leaq 0x81e34(%rip), %rsi        #  11    0xe14e0  7      OPC=leaq_r64_m16    
  leaq 0x8420b(%rip), %rdi        #  12    0xe14e7  7      OPC=leaq_r64_m16    
  movq $0x0, 0x2bcf07(%rip)       #  13    0xe14ee  11     OPC=movq_m64_imm32  
  callq ._IO_fopen__GLIBC_2_2_5   #  14    0xe14f9  5      OPC=callq_label     
  testq %rax, %rax                #  15    0xe14fe  3      OPC=testq_r64_r64   
  movq %rax, %rbp                 #  16    0xe1501  3      OPC=movq_r64_r64    
  je .L_e153e                     #  17    0xe1504  2      OPC=je_label        
  movq %rax, %rdi                 #  18    0xe1506  3      OPC=movq_r64_r64    
  callq .fileno                   #  19    0xe1509  5      OPC=callq_label     
  movq %rsp, %rdx                 #  20    0xe150e  3      OPC=movq_r64_r64    
  movl %eax, %esi                 #  21    0xe1511  2      OPC=movl_r32_r32    
  movl $0x1, %edi                 #  22    0xe1513  5      OPC=movl_r32_imm32  
  callq .__fxstat                 #  23    0xe1518  5      OPC=callq_label     
  cmpl $0xffffffff, %eax          #  24    0xe151d  6      OPC=cmpl_r32_imm32  
  nop                             #  25    0xe1523  1      OPC=nop             
  nop                             #  26    0xe1524  1      OPC=nop             
  nop                             #  27    0xe1525  1      OPC=nop             
  je .L_e1536                     #  28    0xe1526  2      OPC=je_label        
  movq 0x30(%rsp), %r13           #  29    0xe1528  5      OPC=movq_r64_m64    
  movq $0x5ffffffffffffffd, %rax  #  30    0xe152d  10     OPC=movq_r64_imm64  
  cmpq %rax, %r13                 #  31    0xe1537  3      OPC=cmpq_r64_r64    
  jbe .L_e1570                    #  32    0xe153a  2      OPC=jbe_label       
.L_e1536:                         #        0xe153c  0      OPC=<label>         
  movq %rbp, %rdi                 #  33    0xe153c  3      OPC=movq_r64_r64    
  callq ._IO_fclose__GLIBC_2_2_5  #  34    0xe153f  5      OPC=callq_label     
.L_e153e:                         #        0xe1544  0      OPC=<label>         
  leaq 0x823e5(%rip), %rax        #  35    0xe1544  7      OPC=leaq_r64_m16    
  movq %rax, 0x2bced4(%rip)       #  36    0xe154b  7      OPC=movq_m64_r64    
  leaq 0x841b2(%rip), %rax        #  37    0xe1552  7      OPC=leaq_r64_m16    
  movq %rax, 0x2bcece(%rip)       #  38    0xe1559  7      OPC=movq_m64_r64    
  addq $0x98, %rsp                #  39    0xe1560  7      OPC=addq_r64_imm32  
  leaq 0x2bceb8(%rip), %rax       #  40    0xe1567  7      OPC=leaq_r64_m16    
  popq %rbx                       #  41    0xe156e  1      OPC=popq_r64_1      
  popq %rbp                       #  42    0xe156f  1      OPC=popq_r64_1      
  popq %r12                       #  43    0xe1570  2      OPC=popq_r64_1      
  popq %r13                       #  44    0xe1572  2      OPC=popq_r64_1      
  retq                            #  45    0xe1574  1      OPC=retq            
  nop                             #  46    0xe1575  1      OPC=nop             
.L_e1570:                         #        0xe1576  0      OPC=<label>         
  leaq 0x3(%r13), %r12            #  47    0xe1576  4      OPC=leaq_r64_m16    
  movq %r12, %rdi                 #  48    0xe157a  3      OPC=movq_r64_r64    
  callq .memalign_plt             #  49    0xe157d  5      OPC=callq_label     
  testq %rax, %rax                #  50    0xe1582  3      OPC=testq_r64_r64   
  movq %rax, %rbx                 #  51    0xe1585  3      OPC=movq_r64_r64    
  movq %rax, 0x2bce77(%rip)       #  52    0xe1588  7      OPC=movq_m64_r64    
  je .L_e1536                     #  53    0xe158f  2      OPC=je_label        
  movq %r13, %rax                 #  54    0xe1591  3      OPC=movq_r64_r64    
  movq $0x5555555555555556, %rdx  #  55    0xe1594  10     OPC=movq_r64_imm64  
  sarq $0x3f, %r13                #  56    0xe159e  4      OPC=sarq_r64_imm8   
  imulq %rdx                      #  57    0xe15a2  3      OPC=imulq_r64       
  subq %r13, %rdx                 #  58    0xe15a5  3      OPC=subq_r64_r64    
  leaq (,%rdx,8), %rdi            #  59    0xe15a8  8      OPC=leaq_r64_m16    
  callq .memalign_plt             #  60    0xe15b0  5      OPC=callq_label     
  testq %rax, %rax                #  61    0xe15b5  3      OPC=testq_r64_r64   
  movq %rax, %r13                 #  62    0xe15b8  3      OPC=movq_r64_r64    
  movq %rax, 0x2bce4c(%rip)       #  63    0xe15bb  7      OPC=movq_m64_r64    
  je .L_e16b9                     #  64    0xe15c2  6      OPC=je_label_1      
  movq %rbx, %rsi                 #  65    0xe15c8  3      OPC=movq_r64_r64    
  nop                             #  66    0xe15cb  1      OPC=nop             
  nop                             #  67    0xe15cc  1      OPC=nop             
  nop                             #  68    0xe15cd  1      OPC=nop             
.L_e15c8:                         #        0xe15ce  0      OPC=<label>         
  subq %rbx, %rsi                 #  69    0xe15ce  3      OPC=subq_r64_r64    
  movq %rbp, %rdx                 #  70    0xe15d1  3      OPC=movq_r64_r64    
  movq %rbx, %rdi                 #  71    0xe15d4  3      OPC=movq_r64_r64    
  addl %r12d, %esi                #  72    0xe15d7  3      OPC=addl_r32_r32    
  callq .fgets_unlocked           #  73    0xe15da  5      OPC=callq_label     
  testq %rax, %rax                #  74    0xe15df  3      OPC=testq_r64_r64   
  je .L_e168f                     #  75    0xe15e2  6      OPC=je_label_1      
  movzbl (%rbx), %ecx             #  76    0xe15e8  3      OPC=movzbl_r32_m8   
  cmpb $0x2f, %cl                 #  77    0xe15eb  3      OPC=cmpb_r8_imm8    
  jne .L_e15fc                    #  78    0xe15ee  2      OPC=jne_label       
  jmpq .L_e1610                   #  79    0xe15f0  2      OPC=jmpq_label      
  nop                             #  80    0xe15f2  1      OPC=nop             
  nop                             #  81    0xe15f3  1      OPC=nop             
  nop                             #  82    0xe15f4  1      OPC=nop             
  nop                             #  83    0xe15f5  1      OPC=nop             
.L_e15f0:                         #        0xe15f6  0      OPC=<label>         
  addq $0x1, %rbx                 #  84    0xe15f6  4      OPC=addq_r64_imm8   
  movzbl (%rbx), %ecx             #  85    0xe15fa  3      OPC=movzbl_r32_m8   
  cmpb $0x2f, %cl                 #  86    0xe15fd  3      OPC=cmpb_r8_imm8    
  je .L_e1610                     #  87    0xe1600  2      OPC=je_label        
.L_e15fc:                         #        0xe1602  0      OPC=<label>         
  cmpb $0x23, %cl                 #  88    0xe1602  3      OPC=cmpb_r8_imm8    
  je .L_e1610                     #  89    0xe1605  2      OPC=je_label        
  testb %cl, %cl                  #  90    0xe1607  2      OPC=testb_r8_r8     
  jne .L_e15f0                    #  91    0xe1609  2      OPC=jne_label       
.L_e1605:                         #        0xe160b  0      OPC=<label>         
  movq 0x2bcdf4(%rip), %rsi       #  92    0xe160b  7      OPC=movq_r64_m64    
  jmpq .L_e15c8                   #  93    0xe1612  2      OPC=jmpq_label      
  xchgw %ax, %ax                  #  94    0xe1614  2      OPC=xchgw_ax_r16    
.L_e1610:                         #        0xe1616  0      OPC=<label>         
  testb %cl, %cl                  #  95    0xe1616  2      OPC=testb_r8_r8     
  je .L_e1605                     #  96    0xe1618  2      OPC=je_label        
  cmpb $0x23, %cl                 #  97    0xe161a  3      OPC=cmpb_r8_imm8    
  je .L_e1605                     #  98    0xe161d  2      OPC=je_label        
  movsbq 0x1(%rbx), %rcx          #  99    0xe161f  5      OPC=movsbq_r64_m8   
  testb %cl, %cl                  #  100   0xe1624  2      OPC=testb_r8_r8     
  je .L_e1605                     #  101   0xe1626  2      OPC=je_label        
  movq 0x2b97f7(%rip), %rax       #  102   0xe1628  7      OPC=movq_r64_m64    
  leaq 0x8(%r13), %r8             #  103   0xe162f  4      OPC=leaq_r64_m16    
  movq %rbx, (%r13)               #  104   0xe1633  4      OPC=movq_m64_r64    
  movq (%rax), %rdi               #  105   0xe1637  3      OPC=movq_r64_m64    
  nop                             #  106   0xe163a  1      OPC=nop             
  movsbq (%rbx), %rax             #  107   0xe163b  4      OPC=movsbq_r64_m8   
  testb %al, %al                  #  108   0xe163f  2      OPC=testb_r8_r8     
  setne %sil                      #  109   0xe1641  4      OPC=setne_r8        
  cmpb $0x23, %al                 #  110   0xe1645  2      OPC=cmpb_al_imm8    
  setne %dl                       #  111   0xe1647  3      OPC=setne_r8        
  testb %dl, %sil                 #  112   0xe164a  3      OPC=testb_r8_r8     
  je .L_e16b4                     #  113   0xe164d  2      OPC=je_label        
  testb $0x20, 0x1(%rdi,%rax,2)   #  114   0xe164f  5      OPC=testb_m8_imm8   
  jne .L_e16b4                    #  115   0xe1654  2      OPC=jne_label       
  movq %rbx, %rax                 #  116   0xe1656  3      OPC=movq_r64_r64    
  jmpq .L_e1664                   #  117   0xe1659  2      OPC=jmpq_label      
  nop                             #  118   0xe165b  1      OPC=nop             
  nop                             #  119   0xe165c  1      OPC=nop             
  nop                             #  120   0xe165d  1      OPC=nop             
.L_e1658:                         #        0xe165e  0      OPC=<label>         
  testb $0x20, 0x1(%rdi,%rcx,2)   #  121   0xe165e  5      OPC=testb_m8_imm8   
  jne .L_e1679                    #  122   0xe1663  2      OPC=jne_label       
  movsbq 0x1(%rax), %rcx          #  123   0xe1665  5      OPC=movsbq_r64_m8   
.L_e1664:                         #        0xe166a  0      OPC=<label>         
  addq $0x1, %rax                 #  124   0xe166a  4      OPC=addq_r64_imm8   
  testb %cl, %cl                  #  125   0xe166e  2      OPC=testb_r8_r8     
  setne %sil                      #  126   0xe1670  4      OPC=setne_r8        
  cmpb $0x23, %cl                 #  127   0xe1674  3      OPC=cmpb_r8_imm8    
  setne %dl                       #  128   0xe1677  3      OPC=setne_r8        
  testb %dl, %sil                 #  129   0xe167a  3      OPC=testb_r8_r8     
  jne .L_e1658                    #  130   0xe167d  2      OPC=jne_label       
.L_e1679:                         #        0xe167f  0      OPC=<label>         
  leaq 0x1(%rax), %rbx            #  131   0xe167f  4      OPC=leaq_r64_m16    
  movb $0x0, (%rax)               #  132   0xe1683  3      OPC=movb_m8_imm8    
  movq %r8, %r13                  #  133   0xe1686  3      OPC=movq_r64_r64    
  movq 0x2bcd76(%rip), %rsi       #  134   0xe1689  7      OPC=movq_r64_m64    
  jmpq .L_e15c8                   #  135   0xe1690  5      OPC=jmpq_label_1    
.L_e168f:                         #        0xe1695  0      OPC=<label>         
  movq $0x0, (%r13)               #  136   0xe1695  8      OPC=movq_m64_imm32  
  movq %rbp, %rdi                 #  137   0xe169d  3      OPC=movq_r64_r64    
  callq ._IO_fclose__GLIBC_2_2_5  #  138   0xe16a0  5      OPC=callq_label     
  movq 0x2bcd62(%rip), %rax       #  139   0xe16a5  7      OPC=movq_r64_m64    
  addq $0x98, %rsp                #  140   0xe16ac  7      OPC=addq_r64_imm32  
  popq %rbx                       #  141   0xe16b3  1      OPC=popq_r64_1      
  popq %rbp                       #  142   0xe16b4  1      OPC=popq_r64_1      
  popq %r12                       #  143   0xe16b5  2      OPC=popq_r64_1      
  popq %r13                       #  144   0xe16b7  2      OPC=popq_r64_1      
  retq                            #  145   0xe16b9  1      OPC=retq            
.L_e16b4:                         #        0xe16ba  0      OPC=<label>         
  movq %rbx, %rax                 #  146   0xe16ba  3      OPC=movq_r64_r64    
  jmpq .L_e1679                   #  147   0xe16bd  2      OPC=jmpq_label      
.L_e16b9:                         #        0xe16bf  0      OPC=<label>         
  movq %rbx, %rdi                 #  148   0xe16bf  3      OPC=movq_r64_r64    
  callq .L_1f8c0                  #  149   0xe16c2  5      OPC=callq_label     
  movq $0x0, 0x2bcd34(%rip)       #  150   0xe16c7  11     OPC=movq_m64_imm32  
  jmpq .L_e1536                   #  151   0xe16d2  5      OPC=jmpq_label_1    
  nop                             #  152   0xe16d7  1      OPC=nop             
  nop                             #  153   0xe16d8  1      OPC=nop             
  nop                             #  154   0xe16d9  1      OPC=nop             
  nop                             #  155   0xe16da  1      OPC=nop             
  nop                             #  156   0xe16db  1      OPC=nop             
  nop                             #  157   0xe16dc  1      OPC=nop             
  nop                             #  158   0xe16dd  1      OPC=nop             
  nop                             #  159   0xe16de  1      OPC=nop             
  nop                             #  160   0xe16df  1      OPC=nop             
  nop                             #  161   0xe16e0  1      OPC=nop             
  nop                             #  162   0xe16e1  1      OPC=nop             
  nop                             #  163   0xe16e2  1      OPC=nop             
  nop                             #  164   0xe16e3  1      OPC=nop             
  nop                             #  165   0xe16e4  1      OPC=nop             
  nop                             #  166   0xe16e5  1      OPC=nop             
                                                                               
.size initshells, .-initshells
