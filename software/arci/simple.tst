
* arci v.0.0001
* -----------------------------------------------------------------------------------------
* Generated: Nov 08 2021 11:43:59 AM GMT
*

* Initialization

R CIA    00120000 
R CR     00000000 * F0:0 F1:0 F2:0 F3:0 F4:0 F5:0 F6:0 F7:0 
R XER    00000000 
R CTR    F0000000 
R LR     00000000 
R TAR    00000000 
R R00    00000000 *          0
R R01    00000000 *          0
R R02    00000000 *          0
R R03    00000000 *          0
R R04    00000000 *          0
R R05    00000000 *          0
R R06    00000000 *          0
R R07    00000000 *          0
R R08    00000000 *          0
R R09    00000000 *          0
R R10    00000000 *          0
R R11    00000000 *          0
R R12    00000000 *          0
R R13    00000000 *          0
R R14    00000000 *          0
R R15    00000000 *          0
R R16    00000000 *          0
R R17    00000000 *          0
R R18    00000000 *          0
R R19    00000000 *          0
R R20    00000000 *          0
R R21    00000000 *          0
R R22    00000000 *          0
R R23    00000000 *          0
R R24    00000000 *          0
R R25    00000000 *          0
R R26    00000000 *          0
R R27    00000000 *          0
R R28    00000000 *          0
R R29    00000000 *          0
R R30    00000000 *          0
R R31    00000000 *          0

* Instructions

I 00120000 addi       r3,r3,1
R R03    00000001 *          1
R CIA    00120004 

I 00120004 addi       r3,r3,1
R R03    00000002 *          2
R CIA    00120008 

I 00120008 addi       r3,r3,1
R R03    00000003 *          3
R CIA    0012000C 

I 0012000C addi       r4,r0,-3
R R04    FFFFFFFD * 4294967293
R CIA    00120010 

I 00120010 add.       r4,r4,r3
R R04    00000000 *          0
R CR     20000000 * F0:2 F1:0 F2:0 F3:0 F4:0 F5:0 F6:0 F7:0 
R CIA    00120014 


* Results (Changed)

R CIA    00120014 
R CR     20000000 * F0:2 F1:0 F2:0 F3:0 F4:0 F5:0 F6:0 F7:0 
R R03    00000003 *          3
R R04    00000000 *          0

* Results

R CIA    00120014 
R CR     20000000 * F0:2 F1:0 F2:0 F3:0 F4:0 F5:0 F6:0 F7:0 
R XER    00000000 
R CTR    F0000000 
R LR     00000000 
R TAR    00000000 
R R00    00000000 *          0
R R01    00000000 *          0
R R02    00000000 *          0
R R03    00000003 *          3
R R04    00000000 *          0
R R05    00000000 *          0
R R06    00000000 *          0
R R07    00000000 *          0
R R08    00000000 *          0
R R09    00000000 *          0
R R10    00000000 *          0
R R11    00000000 *          0
R R12    00000000 *          0
R R13    00000000 *          0
R R14    00000000 *          0
R R15    00000000 *          0
R R16    00000000 *          0
R R17    00000000 *          0
R R18    00000000 *          0
R R19    00000000 *          0
R R20    00000000 *          0
R R21    00000000 *          0
R R22    00000000 *          0
R R23    00000000 *          0
R R24    00000000 *          0
R R25    00000000 *          0
R R26    00000000 *          0
R R27    00000000 *          0
R R28    00000000 *          0
R R29    00000000 *          0
R R30    00000000 *          0
R R31    00000000 *          0
