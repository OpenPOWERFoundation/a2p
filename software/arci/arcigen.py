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

from types import MethodType
from string import Template
import time
from ctypes import c_uint32

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
tstName = 'simple'
outFileTst = f'{tstName}.tst'
outFileAsm = f'{tstName}.s'

# -------------------------------------------------------------------------------------------------
# Process command line


# -------------------------------------------------------------------------------------------------
# Classes

class Fac:

   def __init__(self, name, value=None, spr=False, gpr=False, fpr=False, vsr=False, rname=None):
      self.name = name
      self.rname = name if rname is None else rname
      self.init = value
      self.value = value
      self.spr = spr
      self.gpr = gpr
      self.fpr = fpr
      self.vsr = vsr
      self.ref = False
      self.chg = False
      facs[name] = self

   def comment(self):
      return ''

   def print(self):
      lines.append(f'R {self.rname:6} {self.value:08X}')


class Op:

   def __init__(self, name):
      self.name = name
      ops[name] = self

   def fmt(self, val):
      return f'{val:08X}'

   def se16(self, v):
      v = v & 0xFFFF
      if v > 0x7FFF:
         v = 0xFFFF0000 + v
      return v

   # has to also keep addresses since tst can be sparse when branching (to gen'd label)
   def addToStream(self):
      ops.append(self.op)


# probs make different Op versions for different formats
class Addi(Op):

   def __init__(self):
      self.name = 'addi'

   def do(self, rt, ra, v):
      self.rt = rt
      self.ra = ra
      self.imm = v
      v = self.se16(v)
      if ra == 'r0':
         res = c_uint32(v).value
      else:
         res = c_uint32(c_uint32(gpr[ra].value).value + v).value
      gpr[rt].value = res
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      if ra != 'r0':
         gpr[ra].ref = True
      gpr[rt].chg = True
      cia.chg = True
      self.op = f'{self.name:10s} {self.rt},{self.ra},{self.imm}'
      self.res = [(gpr[rt].rname, gpr[rt].value, gpr[rt].comment()),(cia.rname, self.nia, cia.comment())]
      return self

   def print(self):
      self.addToStream()
      lines.append(f'I {self.cia:08X} {self.op}')
      for i in range(len(self.res)):
         lines.append(f'R {self.res[i][0]:6} {self.res[i][1]:08X} {self.res[i][2]}')
      lines.append('')
      return self

class Add(Op):

   def __init__(self):
      self.name = 'add'

   def do(self, rt, ra, rb):
      self.rt = rt
      self.ra = ra
      self.rb = rb
      res = c_uint32(c_uint32(gpr[ra].value).value + c_uint32(gpr[rb].value).value).value
      gpr[rt].value = res
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      gpr[ra].ref = True
      gpr[rb].ref = True
      gpr[rt].chg = True
      cia.chg = True
      self.op = f'{self.name:10s} {self.rt},{self.ra},{self.rb}'
      self.res = [(gpr[rt].rname, gpr[rt].value, gpr[rt].comment()),(cia.rname, self.nia, cia.comment())]
      return self

   def print(self):
      self.addToStream()
      lines.append(f'I {self.cia:08X} {self.op}')
      for i in range(len(self.res)):
         lines.append(f'R {self.res[i][0]:6} {self.res[i][1]:08X} {self.res[i][2]}')
      lines.append('')
      return self

class Add_R(Op):

   def __init__(self):
      self.name = 'add.'

   def do(self, rt, ra, rb):
      self.rt = rt
      self.ra = ra
      self.rb = rb
      res = c_uint32(c_uint32(gpr[ra].value).value + c_uint32(gpr[rb].value).value).value
      gpr[rt].value = res
      if res == 0:
         cr0 = 0x2
      elif res < 0:
         cr0 = 0x8
      else:
         cr0 = 0x4
      cr0 = cr0 | xer.so()
      cr.value = (cr.value & 0x00FFFFFF) | (cr0 << 28)
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      gpr[ra].ref = True
      gpr[rb].ref = True
      gpr[rt].chg = True
      cr.chg = True
      cia.chg = True
      self.op = f'{self.name:10s} {self.rt},{self.ra},{self.rb}'
      self.res = [(gpr[rt].rname, gpr[rt].value,gpr[rt].comment()), (cr.rname, cr.value, cr.comment()), (cia.rname, self.nia, cia.comment())]
      return self

   def print(self):
      self.addToStream()
      lines.append(f'I {self.cia:08X} {self.op}')
      for i in range(len(self.res)):
         lines.append(f'R {self.res[i][0]:6} {self.res[i][1]:08X} {self.res[i][2]}')
      lines.append('')
      return self

# -------------------------------------------------------------------------------------------------
# Helpers

# def: print if nonzero
# all=True: print all
# ref=True: print only if referenced
# chg=True: print only if changed

def printSPR(all=False, ref=None, chg=None):

   for k,f in facs.items():
      if f.spr:
         n = f.rname
         v = f.value
         c = f.comment()
         if all or (v != 0 and ref is None and chg is None) or (ref is not None and f.ref == ref) or (chg is not None and f.chg == chg):
            lines.append(f'R {n:6} {v:08X} {c}')


def printRegs(all=False, ref=None, chg=None):

   for i in range(32):
      g = gpr[f'r{i}']
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

   for k,f in facs.items():
      if f.spr:
         tstData[f'init_{f.rname.lower()}'] = f'0x{f.init:08X}'
         tstData[f'expt_{f.rname.lower()}'] = f'0x{f.value:08X}'

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
# Create facs and aliases

lines = []
facs = {}
ops = []

cia = Fac('CIA', 0x120000, spr=True)

def commentCR(self):
   c = '* '
   x = f'{self.value:08X}'
   for i in range(8):
      c += f'F{i}:{x[i]} '
   return c

cr = Fac('CR', 0, spr=True)
cr.comment = MethodType(commentCR, cr)

def xerSO(self):
   return (self.value & 0x80000000) >> 31

xer = Fac('XER', 0, spr=True)
xer.so = MethodType(xerSO, xer)

ctr = Fac('CTR', 0xF0000000, spr=True)
lr = Fac('LR', 0, spr=True)
tar = Fac('TAR', 0, spr=True)

#srr0 = Fac('SRR0', 0, spr=True)
#srr1 = Fac('SRR1', 0, spr=True)
#dar = Fac('DAR', 0, spr=True)
#dsisr = Fac('DSISR',0, spr=True)

gpr = {}
# probs some trick
r0  = 'r0'
r1  = 'r1'
r2  = 'r2'
r3  = 'r3'
r4  = 'r4'
r5  = 'r5'
r6  = 'r6'
r7  = 'r7'
r8  = 'r8'
r9  = 'r9'
r10 = 'r10'
r11 = 'r11'
r12 = 'r12'
r13 = 'r13'
r14 = 'r14'
r15 = 'r15'
r16 = 'r16'
r17 = 'r17'
r18 = 'r18'
r19 = 'r19'
r20 = 'r20'
r21 = 'r21'
r22 = 'r22'
r23 = 'r23'
r24 = 'r24'
r25 = 'r25'
r26 = 'r26'
r27 = 'r27'
r28 = 'r28'
r29 = 'r29'
r30 = 'r30'
r31 = 'r31'

def commentGPR(self):
   return f'* {self.value:10}'

for i in range(32):
   #name = f'R{i:02}'
   name = f'r{i}'
   gpr[name] = Fac(name, 0, gpr=True, rname=f'R{i:02}')
   gpr[name].comment = MethodType(commentGPR, gpr[name])

# -------------------------------------------------------------------------------------------------
# Create ops

cia.ref = True
addi = Addi()
add = Add()
add_r = Add_R()

# -------------------------------------------------------------------------------------------------
# Do something

lines.append(header)

lines.append('* Initialization\n')
printSPR(all=True)
printRegs(all=True)

lines.append('\n* Instructions\n')

# phony dumb test
addi.do(r3,r3,1).print()
addi.do(r3,r3,1).print()
addi.do(r3,r3,1).print()
addi.do(r4,r0,-3).print()
add_r.do(r4,r4,r3).print()

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
