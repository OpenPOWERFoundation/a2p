#  def MTCRF              = M"011111-----0---------0010010000-" //121
#  def MTOCRF             = M"011111-----1---------0010010000-" //121
#  def MCRF               = M"010011---------------0000000000-" // 41
#  def MCRXRX             = M"011111---------------1001000000-" //120
#  def MFCR               = M"011111-----0---------0000010011-" //122
#  def MFOCRF             = M"011111-----1---------0000010011-" //122
#  def MTSPR              = M"011111---------------0111010011-" // 117
#  def MFSPR              = M"011111---------------0101010011-" // 119
#  def MTMSR              = M"011111---------------0010010010-" // 977
#  def MFMSR              = M"011111---------------0001010011-" // 979

from arch import Op

class MFCR(Op):

   def __init__(self, facs):
      self.name = 'mfcr'
      self.facs = facs

   def do(self, rt):
      gpr = self.facs.gpr
      cia = self.facs.cia
      cr = self.facs.cr
      self.rt = rt
      res = cr.value
      gpr[rt].value = res
      cr.ref = True
      gpr[rt].chg = True
      self.cia = cia.value
      cia.value += 4
      self.nia = cia.value
      cia.chg = True
      self.op = f'{self.name:10s} {self.rt}'
      self.res = [(gpr[rt].rname, gpr[rt].value, gpr[rt].comment())]
      self.res.append((cia.rname, self.nia, cia.comment()))
      return self
