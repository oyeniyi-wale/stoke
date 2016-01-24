  .text
  .globl NACL_AnnotateNoOp
  .type NACL_AnnotateNoOp, @function

#! file-offset 0x70780
#! rip-offset  0x30780
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateNoOp:        #        0x30780  0      OPC=<label>         
  popq %r11                #  1     0x30780  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x30782  7      OPC=andl_r32_imm32  
  nop                      #  3     0x30789  1      OPC=nop             
  nop                      #  4     0x3078a  1      OPC=nop             
  nop                      #  5     0x3078b  1      OPC=nop             
  nop                      #  6     0x3078c  1      OPC=nop             
  addq %r15, %r11          #  7     0x3078d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x30790  3      OPC=jmpq_r64        
  nop                      #  9     0x30793  1      OPC=nop             
  nop                      #  10    0x30794  1      OPC=nop             
  nop                      #  11    0x30795  1      OPC=nop             
  nop                      #  12    0x30796  1      OPC=nop             
  nop                      #  13    0x30797  1      OPC=nop             
  nop                      #  14    0x30798  1      OPC=nop             
  nop                      #  15    0x30799  1      OPC=nop             
  nop                      #  16    0x3079a  1      OPC=nop             
  nop                      #  17    0x3079b  1      OPC=nop             
  nop                      #  18    0x3079c  1      OPC=nop             
  nop                      #  19    0x3079d  1      OPC=nop             
  nop                      #  20    0x3079e  1      OPC=nop             
  nop                      #  21    0x3079f  1      OPC=nop             
  nop                      #  22    0x307a0  1      OPC=nop             
  nop                      #  23    0x307a1  1      OPC=nop             
  nop                      #  24    0x307a2  1      OPC=nop             
  nop                      #  25    0x307a3  1      OPC=nop             
  nop                      #  26    0x307a4  1      OPC=nop             
  nop                      #  27    0x307a5  1      OPC=nop             
  nop                      #  28    0x307a6  1      OPC=nop             
                                                                        
.size NACL_AnnotateNoOp, .-NACL_AnnotateNoOp
