
from types import MethodType

class Object(dict):
   __getattr__ = dict.get
   __setattr__ = dict.__setitem__
   __delattr__ = dict.__delitem__

class Facs(Object):

   def __init__(self):

      self.facs = Object()

      self.addFac('cia', 0x120000, spr=True, rname='CIA')

      def commentCR(self):
         c = '* '
         x = f'{self.value:08X}'
         for i in range(8):
            c += f'F{i}:{x[i]} '
         return c
      self.addFac('cr', 0, spr=True, rname='CR')
      self.cr.comment = MethodType(commentCR, self.cr)

      def xerSO(self):
         return (self.value & 0x80000000) >> 31
      self.addFac('xer', 0, spr=True, rname='XER')
      self.xer.so = MethodType(xerSO, self.xer)

      self.addFac('ctr', 0xF0000000, spr=True, rname='CTR')
      self.addFac('lr', 0, spr=True, rname='LR')
      self.addFac('tar', 0, spr=True, rname='TAR')

      #self.srr0 = Fac('SRR0', 0, spr=True)
      #self.srr1 = Fac('SRR1', 0, spr=True)
      #self.dar = Fac('DAR', 0, spr=True)
      #self.dsisr = Fac('DSISR',0, spr=True)

      self.gpr = {}
      self.r0  = 'r0'
      self.r1  = 'r1'
      self.r2  = 'r2'
      self.r3  = 'r3'
      self.r4  = 'r4'
      self.r5  = 'r5'
      self.r6  = 'r6'
      self.r7  = 'r7'
      self.r8  = 'r8'
      self.r9  = 'r9'
      self.r10 = 'r10'
      self.r11 = 'r11'
      self.r12 = 'r12'
      self.r13 = 'r13'
      self.r14 = 'r14'
      self.r15 = 'r15'
      self.r16 = 'r16'
      self.r17 = 'r17'
      self.r18 = 'r18'
      self.r19 = 'r19'
      self.r20 = 'r20'
      self.r21 = 'r21'
      self.r22 = 'r22'
      self.r23 = 'r23'
      self.r24 = 'r24'
      self.r25 = 'r25'
      self.r26 = 'r26'
      self.r27 = 'r27'
      self.r28 = 'r28'
      self.r29 = 'r29'
      self.r30 = 'r30'
      self.r31 = 'r31'

      def commentGPR(self):
         if self.value >= 2**31:
            neg = -((self.value ^ 0xFFFFFFFF) + 1)
            return f'* {self.value:10} {neg:10}'
         else:
            return f'* {self.value:10}'

      for i in range(32):
         #name = f'R{i:02}'
         name = f'r{i}'
         self.gpr[name] = Fac(name, 0, gpr=True, rname=f'R{i:02}')
         self.gpr[name].comment = MethodType(commentGPR, self.gpr[name])

   def addFac(self, name, value=None, spr=False, gpr=False, fpr=False, vsr=False, rname=None):
      self[name] = Fac(name, value, spr, gpr, fpr, vsr, rname)
      self.facs[name] = self[name]

   def all(self):
      return self.facs.items()

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
      self.undefined = False  # if allowed to generate, then if true needs to propagate to destination of succeeding ops

   def comment(self):
      return ''

   def print(self, lines):
      lines.append(f'R {self.rname:6} {self.value:08X}')
      return self


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
   def addToStream(self, ops):
      ops.append(self.op)
      return self

   def print(self, lines):
      lines.append(f'I {self.cia:08X} {self.op}')
      for i in range(len(self.res)):
         lines.append(f'R {self.res[i][0]:6} {self.res[i][1]:08X} {self.res[i][2]}')
      lines.append('')
      return self

