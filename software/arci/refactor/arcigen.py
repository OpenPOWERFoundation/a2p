#!/usr/bin/python3
"""
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
"""

from string import Template
import time
from ctypes import c_uint32

from arch import *
from ops_add import *
from ops_div import *
from ops_mov import *

# -------------------------------------------------------------------------------------------------
# Initialization

header = """
* arci v.0.0001
* -----------------------------------------------------------------------------------------
"""
header += f'* Generated: {time.strftime("%b %d %Y %I:%M:%S %p %Z", time.gmtime())}\n'
header += '*\n'

magic = "0x08675309"
savespr = "tar"

tplFileAsm = 'arcitst.tpl'
tstName = 'simple3'
outFileTst = f'{tstName}.tst'
outFileAsm = f'{tstName}.s'

# -------------------------------------------------------------------------------------------------
# Process command line


# -------------------------------------------------------------------------------------------------
# Helpers

# def: print if nonzero
# all=True: print all
# ref=True: print only if referenced
# chg=True: print only if changed

def printSPR(all=False, ref=None, chg=None):

   for k,f in facs.all():
      if f.spr:
         n = f.rname
         v = f.value
         c = f.comment()
         if all or (v != 0 and ref is None and chg is None) or (ref is not None and f.ref == ref) or (chg is not None and f.chg == chg):
            lines.append(f'R {n:6} {v:08X} {c}')


def printRegs(all=False, ref=None, chg=None):

   for i in range(32):
      g = facs.gpr[f'r{i}']
      n = g.rname
      v = g.value
      c = g.comment()
      if all or (v != 0 and ref is None and chg is None) or (ref is not None and g.ref == ref) or (chg is not None and g.chg == chg):
         lines.append(f'R {n:6} {v:08X} {c}')

def printTest():

   for i in range(len(lines)):
      print(lines[i])

def genAsm(tplFile, asmFile):

   f = open(tplFile, 'r')
   tplString = f.read()
   tpl = Template(tplString)

   tstData = {
      'tst_name': tstName,
      'tst_info': 'wtf',
      'magic': magic,
      'savespr': savespr
   }

   for k,f in facs.all():
      if f.spr:
         tstData[f'init_{f.rname.lower()}'] = f'0x{f.init:08X}'
         tstData[f'expt_{f.rname.lower()}'] = f'0x{f.value:08X}'

   gpr = facs.gpr
   for i in range(32):
      v = gpr[f'r{i}'].init
      tstData[f'init_r{i}'] = f'0x{v:08X}'
      v = gpr[f'r{i}'].value
      tstData[f'expt_r{i}'] = f'0x{v:08X}'

   stream = ''
   for i in range(len(ops)):
      stream += f'\t\t\t{ops[i]}\n'

   tstData['stream'] = stream[0:-1]

   tpl = tpl.substitute(tstData)

   f = open(asmFile, "w")
   f.write(tpl)
   f.close()

# -------------------------------------------------------------------------------------------------
# Init

facs = Facs()
lines = []
ops = []

# -------------------------------------------------------------------------------------------------
# Create ops

facs.cia.ref = True
addi = Addi(facs)
add = Add(facs)
add_r = Add(facs, rc=True)
divw = DivW(facs)
divw_r = DivW(facs, rc= True)
divwo = DivW(facs, oe=True)
divwo_r = DivW(facs, rc=True, oe=True)
mfcr = MFCR(facs)

# -------------------------------------------------------------------------------------------------
# Do something

lines.append(header)

lines.append('* Initialization\n')
printSPR(all=True)
printRegs(all=True)

lines.append('\n* Instructions\n')

# phony dumb test
def addToTest(op):
   op.addToStream(ops).print(lines)

addi.do(facs.r3,facs.r3,1).addToStream(ops).print(lines)
addi.do(facs.r3,facs.r3,1).addToStream(ops).print(lines)
addi.do(facs.r3,facs.r3,1).addToStream(ops).print(lines)
addi.do(facs.r4,facs.r0,-3).addToStream(ops).print(lines)
add_r.do(facs.r4,facs.r4,facs.r3).addToStream(ops).print(lines)
addi.do(facs.r6, facs.r0, 10).addToStream(ops).print(lines)
addi.do(facs.r7, facs.r0, -5).addToStream(ops).print(lines)
addToTest(divw.do(facs.r8, facs.r6, facs.r7))
addToTest(divw_r.do(facs.r9, facs.r6, facs.r7))
addToTest(mfcr.do(facs.r31))
addToTest(divw_r.do(facs.r10, facs.r7, facs.r6))
addToTest(mfcr.do(facs.r30))
addToTest(divw_r.do(facs.r11, facs.r6, facs.r6))
addToTest(mfcr.do(facs.r30))

lines.append('\n* Results (Changed)\n')
printSPR(chg=True)
printRegs(chg=True)

lines.append('\n* Results\n')
printSPR(all=True)
printRegs(all=True)

# create .tst file
printTest()
# create .s file
genAsm(tplFileAsm, outFileAsm)
