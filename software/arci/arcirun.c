/*
© IBM Corp. 2020
Licensed under the Apache License, Version 2.0 (the "License"), as modified by the terms below; you may not use the files in this
repository except in compliance with the License as modified.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Modified Terms:

   1)	For the purpose of the patent license granted to you in Section 3 of the License, the "Work" hereby includes implementations of
   the work of authorship in physical form.

   2)	Notwithstanding any terms to the contrary in the License, any licenses necessary for implementation of the Work that are available
   from OpenPOWER via the Power ISA End User License Agreement (EULA) are explicitly excluded hereunder, and may be obtained from OpenPOWER
   under the terms and conditions of the EULA.

Unless required by applicable law or agreed to in writing, the reference design distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language
governing permissions and limitations under the License.

Additional rights, including the ability to physically implement a softcore that is compliant with the required sections of the Power
ISA Specification, are available at no cost under the terms of the OpenPOWER Power ISA EULA, which can be obtained (along with the Power
ISA) here: https://openpowerfoundation.org.

Brief explanation of modifications:

Modification 1: This modification extends the patent license to an implementation of the Work in physical form – i.e.,
it unambiguously permits a user to make and use the physical chip.

Modification 2: This modification clarifies that licenses for the Power ISA are provided via the (royalty-free) Power ISA EULA,
and not under this license.  To prevent fragmentation of the Power ISA, the Power ISA EULA requires that Power ISA Cores be
licensed consistent with the terms of the Power ISA EULA.  By ensuring that rights available via the Power ISA EULA are received
under (and subject to) the EULA, this consistency is maintained in accordance with the terms of the EULA. Any necessary additional
licenses for the specific Power ISA Core are granted under this modified Apache license.
*/

//wtf fix up int vs pointer

#include <stdio.h>
#include "arcirun.h"

#define DEBUG 1
//#define DEBUG2

//#define SAFESTACK

#define MAGIC 0x08675309

// needs to be here so it's at start address
void main(unsigned int r1, unsigned int r2, unsigned int r3, unsigned int addr) {
   unsigned int *inits = &tst_inits;
   unsigned int v;

   console_set_write_hook(0); // make sure null
   printf("Thunderbirds are go!!!\n\n\n");

   printf("Invoking test...\n");

   // danger! once r1 is whacked, any c code like bad int handler, etc. needs
   //  to make sure it has a safe stack for calls
   asm (
      "mr   3,%0\n"
      //"lis  4,init_tst@h\n"
      //"ori  4,4,init_tst@l\n"
      //"mtctr 4\n"
      //"bcctr\n"
      "b    init_tst\n"
      :                       // outputs
      : "r"(inits)            // inputs
      : "r3"                  // clobbers
   );

   while(1) {}

}

//void  __attribute__((noreturn)) tst_done(unsigned int rc) {
void tst_done(unsigned int rc) {
   unsigned int i, ok = 1, done = 0;
   char c;
   char name[10];
   unsigned int r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15;
   unsigned int cr, xer, ctr, lr, tar;
   unsigned int op, *cia;

#ifdef DEBUG
   asm volatile(
       "mr    %0,0\n"
       "mr    %1,1\n"
       "mr    %2,2\n"
       "mr    %3,3\n"
       "mr    %4,4\n"
       "mr    %5,5\n"
       "mr    %6,6\n"
       "mr    %7,7\n"
       "mr    %8,8\n"
       "mr    %9,9\n"
       "mr    %10,10\n"
       "mr    %11,11\n"
       "mr    %12,12\n"
       "mr    %13,13\n"
       "mr    %14,14\n"
       "mr    %15,15\n"
       : "=r"(r0), "=r"(r1), "=r"(r2), "=r"(r3), "=r"(r4), "=r"(r5), "=r"(r6), "=r"(r7), "=r"(r8), "=r"(r9), "=r"(r10), "=r"(r11), "=r"(r12), "=r"(r13), "=r"(r14), "=r"(r15)  // outputs
       :                            // inputs
       :                            // clobbers
   );
#endif

// can't help unless can get rid of preamble! give tst return addr and have it jmp there
#ifdef SAFESTACK
// force stack to be copacetic
   unsigned int safestack=0x17FFF0;
   asm volatile(
       "mr    %0,1\n"
       "mr    1,%1\n"
       : "=r"(r1)          // outputs
       : "r"(safestack)    // inputs
   );
   printf("SAFETYSTACK'ed %08X->%08X\n\n", r1, safestack);
#endif

#ifdef DEBUG2
   printf("GPR\n");
   printf(" 00: %08X  01: %08X  02: %08X  03: %08X  04: %08X  05: %08X  06: %08X  07: %08X\n", r0, r1, r2, r3, r4, r5, r6, r7);
   printf(" 08: %08X  09: %08X  10: %08X  11: %08X  12: %08X  13: %08X  14: %08X  15: %08X\n", r8, r9, r10, r11, r12, r13, r14, r15);

   printf("\n");

   asm volatile(
       "mfcr  %0\n"
       "mfxer %1\n"
       "mfctr %2\n"
       "mflr  %3\n"
       "mfspr %4,815\n"
       : "=r"(cr), "=r"(xer), "=r"(ctr), "=r"(lr), "=r"(tar)  // outputs
       :                            // inputs
       :                            // clobbers
   );

   printf("CR: %08X", cr);
   printf("   XER: %08X", xer);
   printf("   CTR: %08X", ctr);
   printf("    LR: %08X", lr);
   printf("   TAR: %08X", tar);
   printf("\n\n");

   #ifdef SAFESTACK
   r1 = safestack;
   #endif
   printf("Stack\n");
   printMem((r1-0x100)&0xFFFFFFF0, (r1+0x100)&0xFFFFFFF0);
   printf("\n");

   printf("Initsl\n");
   printMem(&tst_inits, (int)(&tst_inits)+40*4);
   printf("Actual\n");
   printMem(&tst_results, (int)(&tst_results)+40*4);
   printf("Expected\n");
   printMem(&tst_expects, (int)(&tst_expects)+40*4);

   printf("\n\n\n");

#endif

   printf("Test completed.  Checking results...\n\n");

   if (rc != MAGIC) {
      printf("Huh? rc=%08X\n\n\n", rc);
      ok = 0;
   }

   // ops
   printf("Instructions\n");
   for (cia = &tst_start; cia < &tst_end; cia++) {
      op = *cia;
      printf("  %08X: %08X\n", (int)cia, op);
   }
   printf("\n");

   printf("Facilities\n");
   // r0:r31
   for (i = 0; i < 32; i++) {
      sprintf(name, "R%02d", i);
      ok = ok && checkResult(i, name);
   }

   // cr, xer, ctr, lr, tar
   ok = ok && checkResult(32, "CR");
   ok = ok && checkResult(33, "XER");
   ok = ok && checkResult(34, "CTR");
   ok = ok && checkResult(35, "LR");
   ok = ok && checkResult(36, "TAR");

   // msr, srr0, srr1, dar, dsisr

   printf("\n\n");
   if (ok) {
      printf("You has opulence.\n\n");
   } else {
      printf("You are worthless and weak!\n\n");
   }

   printf("Here you would run another test automatically, or temp halt, or reboot bios...\n");

   while (!done) {
	   if(uart_read_nonblock()) {
		   c = uart_read();
		   if ((c == 'r') || (c == '\e')) {
            printf("Rebooting...\n\n\n\n");
            asm (
               "ba   0\n"
            );
         } else if (c == 'q') {
            done = 1;
         } else {
            asm (
               "b    main\n"
            );
         }
     }
   }

   printf("Hanging...\n");
   while(1) {}
}

void printMem(unsigned int start, unsigned int end) {
   unsigned int i, j, k, l, *p;
   char *c;
   unsigned int groupSize = 8, maxLines = 32;

   l = 0;
   for (i = start; i < end; i += 4*groupSize) {
      printf("  %08X:", i);
      for (j = 0; j < 4*groupSize; j+=4) {
         p = i + j;
         printf(" %08X", *p);
      }
      printf("  ");
      for (k = 0; k < 4*groupSize; k++) {
         c = i + k;
         if ((*c < 32) | (*c > 126)) {
            putchar(' ');
         } else {
            putchar(*c);
         }
      }
      printf("\n");
      l++;
      if (l == maxLines) {
         printf("...\n");
         break;
      }
   }
}

void printGPR(void) {
   unsigned int r0, r1, r2, r3, r4, r5, r6, r7;

   asm volatile(
       "mr    %0,0\n"
       "mr    %1,1\n"
       "mr    %2,2\n"
       "mr    %3,3\n"
       "mr    %4,4\n"
       "mr    %5,5\n"
       "mr    %6,6\n"
       "mr    %7,7\n"
       : "=r"(r0), "=r"(r1), "=r"(r2), "=r"(r3), "=r"(r4), "=r"(r5), "=r"(r6), "=r"(r7)  // outputs
       :                            // inputs
       :                            // clobbers
   );

   printf("GPR\n");
   printf(" 00: %08X  01: %08X  02: %08X  03: %08X  04: %08X  05: %08X  06: %08X  07: %08X\n", r0, r1, r2, r3, r4, r5, r6, r7);
   printf("\n");
}

void printSPR(void) {
   unsigned int cr, xer, ctr, lr, tar;

   asm volatile(
       "mfcr  %0\n"
       "mfxer %1\n"
       "mfctr %2\n"
       "mflr  %3\n"
       "mfspr %4,815\n"
       : "=r"(cr), "=r"(xer), "=r"(ctr), "=r"(lr), "=r"(tar)  // outputs
       :                            // inputs
       :                            // clobbers
   );

   printf("CR: %08X", cr);
   printf("   XER: %08X", xer);
   printf("   CTR: %08X", ctr);
   printf("    LR: %08X", lr);
   printf("   TAR: %08X", tar);
   printf("\n");

}

void printSPRPriv(void) {
   unsigned int srr0, srr1, dar, dsisr;

   asm volatile(
       "mfspr %0,26\n"
       "mfspr %1,27\n"
       "mfspr %2,19\n"
       "mfspr %3,18\n"
       : "=r"(srr0), "=r"(srr1), "=r"(dar), "=r"(dsisr)  // outputs
       :                            // inputs
       :                            // clobbers
   );

   printf("SRR0: %08X", srr0);
   printf("  SRR1: %08X", srr1);
   printf("   DAR: %08X", dar);
   printf(" DSISR: %08X", dsisr);
   printf("\n");
}

unsigned int checkResult(unsigned int r, char* name) {
   unsigned int init, act, exp, ok = 1;

   init = *(&tst_inits + r);
   act = *(&tst_results + r);
   exp = *(&tst_expects + r);
   if (DEBUG || act != exp) {
      printf("%6s: %08X %08X %08X  ", name, init, act, exp);
      if (act != exp) {
         printf("* MISCOMPARE\n");
         ok = 0;
      } else {
         printf("\n");
      }
   }
   return ok;
}