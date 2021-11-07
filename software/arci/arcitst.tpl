# architst

.include "defines.s"

# -------------------------------------------------------------------------------------------------
# c-accessible

.global init_tst
.global tst_inits
.global tst_results
.global tst_expects

# -------------------------------------------------------------------------------------------------
tst_misc:

tst_name:      .asciz "$tst_name"
tst_info:      .asciz "$tst_info"

.set SAVESPR,$savespr
.set MAGIC,$magic

# -------------------------------------------------------------------------------------------------
.align 5
tst_inits:

init_r0:       .long $init_r0
init_r1:       .long $init_r1
init_r2:       .long $init_r2
init_r3:       .long $init_r3
init_r4:       .long $init_r4
init_r5:       .long $init_r5
init_r6:       .long $init_r6
init_r7:       .long $init_r7
init_r8:       .long $init_r8
init_r9:       .long $init_r9
init_r10:      .long $init_r10
init_r11:      .long $init_r11
init_r12:      .long $init_r12
init_r13:      .long $init_r13
init_r14:      .long $init_r14
init_r15:      .long $init_r15
init_r16:      .long $init_r16
init_r17:      .long $init_r17
init_r18:      .long $init_r18
init_r19:      .long $init_r19
init_r20:      .long $init_r20
init_r21:      .long $init_r21
init_r22:      .long $init_r22
init_r23:      .long $init_r23
init_r24:      .long $init_r24
init_r25:      .long $init_r25
init_r26:      .long $init_r26
init_r27:      .long $init_r27
init_r28:      .long $init_r28
init_r29:      .long $init_r29
init_r30:      .long $init_r30
init_r31:      .long $init_r31

init_cr:       .long $init_cr
init_xer:      .long $init_xer
init_ctr:      .long $init_ctr
init_lr:       .long $init_lr
init_tar:      .long $init_tar

save_r1:       .long 0
save_r30:      .long 0
save_r31:      .long 0

# -------------------------------------------------------------------------------------------------
# r3=@tst_inits
.align 5
init_tst:

# save c stuff
   stw         r1,(save_r1-tst_inits)(r3)
   stw         r30,(save_r30-tst_inits)(r3)
   stw         r31,(save_r31-tst_inits)(r3)

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

   b           start_tst

# -------------------------------------------------------------------------------------------------
.align 5
start_tst:

# -------------------------------------------------------------------------------------------------
$stream
# -------------------------------------------------------------------------------------------------

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

# restore c stuff
   lis         r3,tst_inits@h
   ori         r3,r1,tst_inits@l
   lwz         r1,(save_r1-tst_inits)(r3)
   lwz         r30,(save_r30-tst_inits)(r3)
   lwz         r31,(save_r31-tst_inits)(r3)
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

expt_r0:       .long $expt_r0
expt_r1:       .long $expt_r1
expt_r2:       .long $expt_r2
expt_r3:       .long $expt_r3
expt_r4:       .long $expt_r4
expt_r5:       .long $expt_r5
expt_r6:       .long $expt_r6
expt_r7:       .long $expt_r7
expt_r8:       .long $expt_r8
expt_r9:       .long $expt_r9
expt_r10:      .long $expt_r10
expt_r11:      .long $expt_r11
expt_r12:      .long $expt_r12
expt_r13:      .long $expt_r13
expt_r14:      .long $expt_r14
expt_r15:      .long $expt_r15
expt_r16:      .long $expt_r16
expt_r17:      .long $expt_r17
expt_r18:      .long $expt_r18
expt_r19:      .long $expt_r19
expt_r20:      .long $expt_r20
expt_r21:      .long $expt_r21
expt_r22:      .long $expt_r22
expt_r23:      .long $expt_r23
expt_r24:      .long $expt_r24
expt_r25:      .long $expt_r25
expt_r26:      .long $expt_r26
expt_r27:      .long $expt_r27
expt_r28:      .long $expt_r28
expt_r29:      .long $expt_r29
expt_r30:      .long $expt_r30
expt_r31:      .long $expt_r31

expt_cr:       .long $expt_cr
expt_xer:      .long $expt_xer
expt_ctr:      .long $expt_ctr
expt_lr:       .long $expt_lr
expt_tar:      .long $expt_tar
