# architst

.include "defines.s"

# -------------------------------------------------------------------------------------------------
# c-accessible

.global init_tst
.global tst_start
.global tst_end
.global tst_inits
.global tst_results
.global tst_expects

# -------------------------------------------------------------------------------------------------
tst_misc:

tst_name:      .asciz "simple2"
tst_info:      .asciz "wtf"

.set SAVESPR,tar
.set MAGIC,0x08675309

# -------------------------------------------------------------------------------------------------
.align 5
tst_inits:

init_r0:       .long 0x00000000
init_r1:       .long 0x00000000
init_r2:       .long 0x00000000
init_r3:       .long 0x00000000
init_r4:       .long 0x00000000
init_r5:       .long 0x00000000
init_r6:       .long 0x00000000
init_r7:       .long 0x00000000
init_r8:       .long 0x00000000
init_r9:       .long 0x00000000
init_r10:      .long 0x00000000
init_r11:      .long 0x00000000
init_r12:      .long 0x00000000
init_r13:      .long 0x00000000
init_r14:      .long 0x00000000
init_r15:      .long 0x00000000
init_r16:      .long 0x00000000
init_r17:      .long 0x00000000
init_r18:      .long 0x00000000
init_r19:      .long 0x00000000
init_r20:      .long 0x00000000
init_r21:      .long 0x00000000
init_r22:      .long 0x00000000
init_r23:      .long 0x00000000
init_r24:      .long 0x00000000
init_r25:      .long 0x00000000
init_r26:      .long 0x00000000
init_r27:      .long 0x00000000
init_r28:      .long 0x00000000
init_r29:      .long 0x00000000
init_r30:      .long 0x00000000
init_r31:      .long 0x00000000

init_cr:       .long 0x00000000
init_xer:      .long 0x00000000
init_ctr:      .long 0xF0000000
init_lr:       .long 0x00000000
init_tar:      .long 0x00000000

save_r1:       .long 0

# -------------------------------------------------------------------------------------------------
# r3=@tst_inits
.align 5
init_tst:

# save c stuff
   stw         r1,(save_r1-tst_inits)(r3)

# init test regs
   lwz         r1,(init_cr-tst_inits)(r3)
   mtcr        r1
   lwz         r1,(init_xer-tst_inits)(r3)
   mtxer       r1
   lwz         r1,(init_ctr-tst_inits)(r3)
   mtctr       r1
   lwz         r1,(init_lr-tst_inits)(r3)
   mtlr        r1
   lwz         r1,(init_tar-tst_inits)(r3)
   mtspr       tar,r1

   lwz         r0,(init_r0-tst_inits)(r3)
   lwz         r1,(init_r1-tst_inits)(r3)
   lwz         r2,(init_r2-tst_inits)(r3)
   lwz         r4,(init_r4-tst_inits)(r3)
   lwz         r5,(init_r5-tst_inits)(r3)
   lwz         r6,(init_r6-tst_inits)(r3)
   lwz         r7,(init_r7-tst_inits)(r3)
   lwz         r8,(init_r8-tst_inits)(r3)
   lwz         r9,(init_r9-tst_inits)(r3)
   lwz         r10,(init_r10-tst_inits)(r3)
   lwz         r11,(init_r11-tst_inits)(r3)
   lwz         r12,(init_r12-tst_inits)(r3)
   lwz         r13,(init_r13-tst_inits)(r3)
   lwz         r14,(init_r14-tst_inits)(r3)
   lwz         r15,(init_r15-tst_inits)(r3)
   lwz         r16,(init_r16-tst_inits)(r3)
   lwz         r17,(init_r17-tst_inits)(r3)
   lwz         r18,(init_r18-tst_inits)(r3)
   lwz         r19,(init_r19-tst_inits)(r3)
   lwz         r20,(init_r20-tst_inits)(r3)
   lwz         r21,(init_r21-tst_inits)(r3)
   lwz         r22,(init_r22-tst_inits)(r3)
   lwz         r23,(init_r23-tst_inits)(r3)
   lwz         r24,(init_r24-tst_inits)(r3)
   lwz         r25,(init_r25-tst_inits)(r3)
   lwz         r26,(init_r26-tst_inits)(r3)
   lwz         r27,(init_r27-tst_inits)(r3)
   lwz         r28,(init_r28-tst_inits)(r3)
   lwz         r29,(init_r29-tst_inits)(r3)
   lwz         r30,(init_r30-tst_inits)(r3)
   lwz         r31,(init_r31-tst_inits)(r3)
   lwz         r3,(init_r3-tst_inits)(r3)

   b           tst_start

# -------------------------------------------------------------------------------------------------
.align 5
tst_start:

# -------------------------------------------------------------------------------------------------
			addi       r3,r3,1
			addi       r3,r3,1
			addi       r3,r3,1
			addi       r4,r0,-3
			add.       r4,r4,r3
			addi       r6,r0,10
			addi       r7,r0,-5
			divw       r8,r6,r7
			divw.      r9,r6,r7
# -------------------------------------------------------------------------------------------------

tst_end:
   b           save_results

# -------------------------------------------------------------------------------------------------
.align 5
save_results:
# use a designated spr to save (sprgx, ...)
   mtspr       SAVESPR,r1
   lis         r1,tst_results@h
   ori         r1,r1,tst_results@l
   stw         r0,(rslt_r0-tst_results)(r1)
   stw         r2,(rslt_r2-tst_results)(r1)
   stw         r3,(rslt_r3-tst_results)(r1)
   stw         r4,(rslt_r4-tst_results)(r1)
   stw         r5,(rslt_r5-tst_results)(r1)
   stw         r6,(rslt_r6-tst_results)(r1)
   stw         r7,(rslt_r7-tst_results)(r1)
   stw         r8,(rslt_r8-tst_results)(r1)
   stw         r9,(rslt_r9-tst_results)(r1)
   stw         r10,(rslt_r10-tst_results)(r1)
   stw         r11,(rslt_r11-tst_results)(r1)
   stw         r12,(rslt_r12-tst_results)(r1)
   stw         r13,(rslt_r13-tst_results)(r1)
   stw         r14,(rslt_r14-tst_results)(r1)
   stw         r15,(rslt_r15-tst_results)(r1)
   stw         r16,(rslt_r16-tst_results)(r1)
   stw         r17,(rslt_r17-tst_results)(r1)
   stw         r18,(rslt_r18-tst_results)(r1)
   stw         r19,(rslt_r19-tst_results)(r1)
   stw         r20,(rslt_r20-tst_results)(r1)
   stw         r21,(rslt_r21-tst_results)(r1)
   stw         r22,(rslt_r22-tst_results)(r1)
   stw         r23,(rslt_r23-tst_results)(r1)
   stw         r24,(rslt_r24-tst_results)(r1)
   stw         r25,(rslt_r25-tst_results)(r1)
   stw         r26,(rslt_r26-tst_results)(r1)
   stw         r27,(rslt_r27-tst_results)(r1)
   stw         r28,(rslt_r28-tst_results)(r1)
   stw         r29,(rslt_r29-tst_results)(r1)
   stw         r30,(rslt_r30-tst_results)(r1)
   stw         r31,(rslt_r31-tst_results)(r1)
   mfspr       r2,SAVESPR
   stw         r2,(rslt_r1-tst_results)(r1)
   mfcr        r2
   stw         r2,(rslt_cr-tst_results)(r1)
   mfxer       r2
   stw         r2,(rslt_xer-tst_results)(r1)
   mfctr       r2
   stw         r2,(rslt_ctr-tst_results)(r1)
   mflr        r2
   stw         r2,(rslt_lr-tst_results)(r1)
   mfspr       r2,tar
   stw         r2,(rslt_tar-tst_results)(r1)

tst_cleanup:
# restore c stuff
   lis         r3,tst_inits@h
   ori         r3,r3,tst_inits@l
   lwz         r1,(save_r1-tst_inits)(r3)
   lis         r3,MAGIC@h
   ori         r3,r3,MAGIC@l

   b           tst_done

# -------------------------------------------------------------------------------------------------
.align 5
tst_results:

rslt_r0:       .long 0xFFFFFFFF
rslt_r1:       .long 0xFFFFFFFF
rslt_r2:       .long 0xFFFFFFFF
rslt_r3:       .long 0xFFFFFFFF
rslt_r4:       .long 0xFFFFFFFF
rslt_r5:       .long 0xFFFFFFFF
rslt_r6:       .long 0xFFFFFFFF
rslt_r7:       .long 0xFFFFFFFF
rslt_r8:       .long 0xFFFFFFFF
rslt_r9:       .long 0xFFFFFFFF
rslt_r10:      .long 0xFFFFFFFF
rslt_r11:      .long 0xFFFFFFFF
rslt_r12:      .long 0xFFFFFFFF
rslt_r13:      .long 0xFFFFFFFF
rslt_r14:      .long 0xFFFFFFFF
rslt_r15:      .long 0xFFFFFFFF
rslt_r16:      .long 0xFFFFFFFF
rslt_r17:      .long 0xFFFFFFFF
rslt_r18:      .long 0xFFFFFFFF
rslt_r19:      .long 0xFFFFFFFF
rslt_r20:      .long 0xFFFFFFFF
rslt_r21:      .long 0xFFFFFFFF
rslt_r22:      .long 0xFFFFFFFF
rslt_r23:      .long 0xFFFFFFFF
rslt_r24:      .long 0xFFFFFFFF
rslt_r25:      .long 0xFFFFFFFF
rslt_r26:      .long 0xFFFFFFFF
rslt_r27:      .long 0xFFFFFFFF
rslt_r28:      .long 0xFFFFFFFF
rslt_r29:      .long 0xFFFFFFFF
rslt_r30:      .long 0xFFFFFFFF
rslt_r31:      .long 0xFFFFFFFF

rslt_cr:       .long 0xFFFFFFFF
rslt_xer:      .long 0xFFFFFFFF
rslt_ctr:      .long 0xFFFFFFFF
rslt_lr:       .long 0xFFFFFFFF
rslt_tar:      .long 0xFFFFFFFF

# -------------------------------------------------------------------------------------------------
.align 5
tst_expects:

expt_r0:       .long 0x00000000
expt_r1:       .long 0x00000000
expt_r2:       .long 0x00000000
expt_r3:       .long 0x00000003
expt_r4:       .long 0x00000000
expt_r5:       .long 0x00000000
expt_r6:       .long 0x0000000A
expt_r7:       .long 0xFFFFFFFB
expt_r8:       .long 0xFFFFFFFE
expt_r9:       .long 0xFFFFFFFE
expt_r10:      .long 0x00000000
expt_r11:      .long 0x00000000
expt_r12:      .long 0x00000000
expt_r13:      .long 0x00000000
expt_r14:      .long 0x00000000
expt_r15:      .long 0x00000000
expt_r16:      .long 0x00000000
expt_r17:      .long 0x00000000
expt_r18:      .long 0x00000000
expt_r19:      .long 0x00000000
expt_r20:      .long 0x00000000
expt_r21:      .long 0x00000000
expt_r22:      .long 0x00000000
expt_r23:      .long 0x00000000
expt_r24:      .long 0x00000000
expt_r25:      .long 0x00000000
expt_r26:      .long 0x00000000
expt_r27:      .long 0x00000000
expt_r28:      .long 0x00000000
expt_r29:      .long 0x00000000
expt_r30:      .long 0x00000000
expt_r31:      .long 0x00000000

expt_cr:       .long 0x80000000
expt_xer:      .long 0x00000000
expt_ctr:      .long 0xF0000000
expt_lr:       .long 0x00000000
expt_tar:      .long 0x00000000
