#  def DIVW               = M"011111----------------111101011-" // 74 divw,divw.,divwo,divwo.
#  def DIVWU              = M"011111----------------111001011-" // 74 divwu,divwu.,divwuo,divwuo.
#  def DIVWE              = M"011111----------------110101011-" // 75 divwe,divwe.,divweo,divweo.
#  def DIVWEU             = M"011111----------------110001011-" // 75 divweu,divweu.,divweuo,divweuo.
#  def MODSW              = M"011111---------------1100001011-" // 76
#  def MODUW              = M"011111---------------0100001011-" // 76

from arch import Op

# not sure this is really needed
from ctypes import c_uint32, c_int32

class DivW(Op):

   def __init__(self, facs, rc=False, oe=False):
      self.name = 'divw'
      self.rc = rc
      self.oe = oe
      if oe:
         self.name += 'o'
      if rc:
         self.name += '.'
      self.facs = facs

   # needs to satisfy dividend=(quotient*divisor)+r, where
   #  0 <= r < abs(divisor) if dividend is nonnegative,
   #  -abs(divisor) < r <= 0 if divident is negative
   # plus,
   #  for 0x80000000 divided by -1 or anything divided by 0, rt and cr[lt,gt,zr] are undefined and if oe=1, ov=ov32=1; so need to check in case oe=1
   #wtf are these really the only cases that ov/so get set??  are they always 0 otherwise, or need to check carries???
   def do(self, rt, ra, rb):
      gpr = self.facs.gpr
      cia = self.facs.cia
      cr = self.facs.cr
      xer = self.facs.xer
      self.rt = rt
      self.ra = ra
      self.rb = rb
      #wtf is this wrong for -5/10?  returning 0x80000000, not 0x00000000
      res = c_uint32(c_int32(gpr[ra].value).value // c_int32(gpr[rb].value).value).value
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
      if self.oe:
         if (gpr[rb] == 0 or (gpr[ra] == 0x80000000 and gpr[rb] == 0xFFFFFFFF)):
            xer.so = 1
            xer.ov = 1
            gpr[rt].undefined = True
         else:
            xer.so = 0
            xer.ov = 0
         xer.chg = True
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
