  .text
  .globl __gmon_start__@plt
  .type __gmon_start__@plt, @function
__gmon_start__@plt:
  jmpq   *0x200bfa(%rip)        
  pushq  $0x1
  jmpq   .L_400400
  .size __gmon_start__@plt, .-__gmon_start__@plt
