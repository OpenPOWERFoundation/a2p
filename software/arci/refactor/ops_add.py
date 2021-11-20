#  def ADDI0              = M"001110-----00000----------------" // 67 ra=0
#  def ADDIa              = M"001110-----1--------------------" // 67
#  def ADDIb              = M"001110------1-------------------" // 67
#  def ADDIc              = M"001110-------1------------------" // 67
#  def ADDId              = M"001110--------1-----------------" // 67
#  def ADDIe              = M"001110---------1----------------" // 67
#  def ADDIS0             = M"001111-----00000----------------" // 67 ra=0
#  def ADDISa             = M"001111-----1--------------------" // 67
#  def ADDISb             = M"001111------1-------------------" // 67
#  def ADDISc             = M"001111-------1------------------" // 67
#  def ADDISd             = M"001111--------1-----------------" // 67
#  def ADDISe             = M"001111---------1----------------" // 67
#  def ADDPCIS            = M"010011--------------------00010-" // 68
#  def ADD                = M"011111----------------100001010-" // 69 add,add.,addo,addo.
#  def ADDIC              = M"001100--------------------------" // 69
#  def ADDICR             = M"001101--------------------------" // 69 addic.
#  def ADDC               = M"011111----------------000001010-" // 70 addc,addc.,addco,addco.
#  def ADDE               = M"011111----------------010001010-" // 71 adde,adde.,addeo,addeo.
#  def ADDME              = M"011111----------------011101010-" // 71 addme,addme.,addmeo,addmeo.
#  def ADDZE              = M"011111----------------011001010-" // 72 addze,addze.,addzeo,addzeo.

from arch import Op

# not sure this is really needed
from ctypes import c_uint32

class Addi(Op):

   def __init__(self, facs):
      self.name = 'addi'
      self.facs = facs

   def do(self, rt, ra, v):
      gpr = self.facs.gpr
      cia = self.facs.cia
      self.rt = rt
      self.ra = ra
      self.imm = v
      v = self.se16(v)
      if ra == 'r0':
         res = c_uint32(v).value
      else:
         res = c_uint32(c_uint32(gpr[ra].value).value + v).value
         gpr[ra].ref = True
      gpr[rt].value = res
      gpr[rt].chg = True
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      cia.chg = True
      self.op = f'{self.name:10s} {self.rt},{self.ra},{self.imm}'
      self.res = [(gpr[rt].rname, gpr[rt].value, gpr[rt].comment()),(cia.rname, self.nia, cia.comment())]
      return self

class Add(Op):

   def __init__(self, facs, rc=False):
      self.rc = rc
      if rc:
         self.name = 'add.'
      else:
         self.name = 'add'
      self.facs = facs

   def do(self, rt, ra, rb):
      gpr = self.facs.gpr
      cia = self.facs.cia
      cr = self.facs.cr
      xer = self.facs.xer
      self.rt = rt
      self.ra = ra
      self.rb = rb
      res = c_uint32(c_uint32(gpr[ra].value).value + c_uint32(gpr[rb].value).value).value
      gpr[rt].value = res
      gpr[ra].ref = True
      gpr[rb].ref = True
      gpr[rt].chg = True
      if self.rc:
         if res == 0:
            cr0 = 0x2
         elif res >= 2**31:
            cr0 = 0x8
         else:
            cr0 = 0x4
         cr0 = cr0 | xer.so()
         cr.value = (cr.value & 0x00FFFFFF) | (cr0 << 28)
         cr.chg = True
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      cia.chg = True
      self.op = f'{self.name:10s} {self.rt},{self.ra},{self.rb}'
      self.res = [(gpr[rt].rname, gpr[rt].value, gpr[rt].comment())]
      if self.rc:
         self.res.append((cr.rname, cr.value, cr.comment()))
      self.res.append((cia.rname, self.nia, cia.comment()))
      return self
