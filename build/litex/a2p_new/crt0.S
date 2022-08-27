.include "defines.s"

.set DEBUG,1

.macro load32  rx,v
      li       \rx,0
      oris     \rx,\rx,\v>>16
      ori      \rx,\rx,\v&0x0000FFFF
.endm

.macro load16swiz rx,v
      li       \rx,0
      ori      \rx,\rx,(\v<<8)&0xFF00
      ori      \rx,\rx,(\v>>8)&0x00FF
.endm

.macro delayr  rx
      mtctr    \rx
      bdnz     .
.endm

.macro delay   rx,v
      li       \rx,0
      oris     \rx,\rx,\v>>16
      ori      \rx,\rx,\v&0x0000FFFF
      mtctr    \rx
      bdnz     .
.endm

.section .text

.global _start

.org 0x0000

_start:
      b         boot_start

.set REGSAVE,0x04
regsave:
               .long 0
               .long 0
               .long 0
               .long 0
               .long 0
               .long 0
               .long 0
               .long 0

.org 0x0100
int_100:
      b         .

# mck
.align 8
int_200:
      b         .

# dsi
.align 8
int_300:
      b         .

# dseg
.align 7
int_380:
      b         .

# isi
.align 8
int_400:
      b         .

# iseg
.align 7
int_480:
      b         .

.ifndef DEBUG
# external
.align 8
int_500:
      b         .

# alignment
.align 8
int_600:
      b         .

# program
.align 8
int_700:
      b         .

# fp unavailable
.align 8
int_800:
      b         .

# dec
.align 8
int_900:
      b         .

# dec hyp
.align 7
int_980:
      b         .

# doorbell
.align 8
int_C00:
      b         .

# trace
.align 8
int_D00:
      b         .

# dsi hyp
.align 8
int_E00:
      b         .

# isi hyp
.align 5
int_E20:
      b         .

# emulation hyp
.align 5
int_E40:
      b         .

# maintenance hyp
.align 5
int_E60:
      b         .

# doorbell hyp
.align 5
int_E80:
      b         .

# virtualization hyp
.align 5
int_EA0:
      b         .

# reserved
.align 5
int_EC0:
      b         .

# reserved
.align 5
int_EE0:
      b         .

# perfmon
.align 5
int_F00:
      b         .

# vector unavailable
.align 5
int_F20:
      b         .

# vsx unavailable
.align 5
int_F40:
      b         .

# facility unavailable
.align 5
int_F60:
      b         .

# facility unavailable hyp
.align 5
int_F80:
      b         .

.endif

# ------------------------------------------------------------------------------------------------------------------------------
# init facilities and memories before blastoff
#

.ifdef DEBUG
.org 0x4E4   # match up close to a2o version
.else
.org 0x1000
.endif

boot_start:

rominit:

########################################################################################################################################
# VMA/LMA: copy .data, clear .bss

      # get the linker script symbols needed...
      lis        r1,_fdata_rom@h
      ori        r1,r1,_fdata_rom@l
      lis        r2,_fdata@h
      ori        r2,r2,_fdata@l
      lis        r3,_edata_rom@h
      ori        r3,r3,_edata_rom@l
      lis        r4,_fbss@h
      ori        r4,r4,_fbss@l
      lis        r5,_ebss@h
      ori        r5,r5,_ebss@l

      subf       r9,r1,r3
      srwi.      r9,r9,2
      beq        romcopy_done
      mtctr      r9
      addi       r1,r1,-4
      addi       r2,r2,-4

romcopy:
      lwzu       r9,4(r1)
      stwu       r9,4(r2)
      bdnz       romcopy

romcopy_done:
      subf       r9,r4,r5
      srwi.      r9,r9,2
      beq        romclear_done

      mtctr      r9
      addi       r4,r4,-4
      li         r9,0

romclear:
      stwu       r9,4(r4)
      bdnz       romclear

romclear_done:

########################################################################################################################################

########################################################################################################################################

process_start:

jump2main:
      lis        r1,_fstack@h
      ori        r1,r1,_fstack@l
      addi       r1,r1,-16
      li         r3, 0            # parm 1
      b          main


.align 4
.ifdef BIOS_32
.include "crtsavres.s"
.endif

