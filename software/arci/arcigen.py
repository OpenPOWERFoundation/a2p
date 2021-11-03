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
from ctypes import c_uint32
import time

# set up

header = """
* arci v.0.0001
* -----------------------------------------------------------------------------------------
"""
header += f'* Generated: {time.strftime("%b %d %Y %I:%M:%S %p %Z", time.gmtime())}\n'
header += '*\n'

# -------------------------------------------------------------------------------------------------
# Classes

class Fac:

   def __init__(self, name, value=None, spr=False, gpr=False, fpr=False, vsr=False):
      self.name = name
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
      lines.append(f'R {self.name:6} {self.value:08X}')


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

# probs make different Op versions for different formats
class Addi(Op):

   def __init__(self):
      self.name = 'addi'

   def do(self, rt, ra, v):
      self.rt = rt
      self.ra = ra
      self.imm = v
      v = self.se16(v)
      if ra == "R00":
         res = c_uint32(v).value
      else:
         res = c_uint32(c_uint32(gpr[ra].value).value + v).value
      gpr[rt].value = res
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      if ra != "R00":
         gpr[ra].ref = True
      gpr[rt].chg = True
      cia.chg = True
      self.res = [(rt, gpr[rt].value, gpr[rt].comment()),(cia.name, self.nia, cia.comment())]
      return self

   def print(self):
      lines.append(f'I {self.cia:08X} {self.name:10s} {self.rt},{self.ra},{self.imm}')
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
      self.res = [(rt, gpr[rt].value, gpr[rt].comment()),(cia.name, self.nia, cia.comment())]
      return self

   def print(self):
      lines.append(f'I {self.cia:08X} {self.name:10s} {self.rt},{self.ra},{self.rb}')
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
      self.res = [(rt, gpr[rt].value,gpr[rt].comment()), (cr.name, cr.value, cr.comment()), (cia.name, self.nia, cia.comment())]
      return self

   def print(self):
      lines.append(f'I {self.cia:08X} {self.name:10s} {self.rt},{self.ra},{self.rb}')
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
         n = f.name
         v = f.value
         c = f.comment()
         if all or (v != 0 and ref is None and chg is None) or (ref is not None and f.ref == ref) or (chg is not None and f.chg == chg):
            lines.append(f'R {n:6} {v:08X} {c}')


def printRegs(all=False, ref=None, chg=None):
   for i in range(32):
      n = f'R{i:02}'
      g = gpr[n]
      v = g.value
      c = g.comment()
      if all or (v != 0 and ref is None and chg is None) or (ref is not None and g.ref == ref) or (chg is not None and g.chg == chg):
         lines.append(f'R {n:6} {v:08X} {c}')

def printTest():

   for i in range(len(lines)):
      print(lines[i])

# -------------------------------------------------------------------------------------------------
# Create facs and aliases

lines = []
facs = {}
ops = {}

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

srr0 = Fac('SRR0', 0, spr=True)
srr1 = Fac('SRR1', 0, spr=True)
dar = Fac('DAR', 0, spr=True)
dsisr = Fac('DSISR',0, spr=True)

# probs some trick
r0  = 'R00'
r1  = 'R01'
r2  = 'R02'
r3  = 'R03'
r4  = 'R04'
r5  = 'R05'
r6  = 'R06'
r7  = 'R07'
r8  = 'R08'
r9  = 'R09'
r10 = 'R10'
r11 = 'R11'
r12 = 'R12'
r13 = 'R13'
r14 = 'R14'
r15 = 'R15'
r16 = 'R16'
r17 = 'R17'
r18 = 'R18'
r19 = 'R19'
r20 = 'R20'
r21 = 'R21'
r22 = 'R22'
r23 = 'R23'
r24 = 'R24'
r25 = 'R25'
r26 = 'R26'
r27 = 'R27'
r28 = 'R28'
r29 = 'R29'
r30 = 'R30'
r31 = 'R31'

gpr = {}
def commentGPR(self):
   return f'* {self.value:10}'

for i in range(32):
   name = f'R{i:02}'
   gpr[name] = Fac(name, 0, gpr=True)
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
# create .s file
# create .o file (or two, one the test, one the test+runner)
printTest()