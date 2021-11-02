#!/usr/bin/python3

"""© IBM Corp. 2020
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

from migen import *
# if want AutoCSR
#from litex.soc.interconnect.csr import *
#class WB_ExtMem(Module, AutoCSR):
class ISSIRam(Module):

   def __init__(self, module, clk, rst, wishbone, pins):

      self.bus = wishbone
      self.data_width = 32
      self.size = 524288

      module.specials += Instance("issiram",
         i_clk = clk,
         i_rst = rst,
         i_wbs_stb_i = wishbone.stb,
         i_wbs_cyc_i = wishbone.cyc,
         i_wbs_adr_i = wishbone.adr,
         i_wbs_we_i = wishbone.we,
         i_wbs_sel_i = wishbone.sel,
         i_wbs_dat_i = wishbone.dat_w,
         o_wbs_ack_o = wishbone.ack,
         o_wbs_dat_o = wishbone.dat_r,
         o_mem_ce_n = pins['ce'],
         o_mem_oe_n = pins['oe'],
         o_mem_we_n = pins['we'],
         o_mem_adr = pins['adr'],
         io_mem_dat = pins['dat']
      )

   #def _to_signal(self, obj):
   #   return obj.raw_bits() if isinstance(obj, Record) else obj


if __name__ == '__main__':

   from litex.build.generic_platform import *
   from litex.soc.interconnect import wishbone

# need to use local; no oen here
#   from litex_boards.platforms import cmod_a7
   import sys
   binPath = os.path.dirname(os.path.realpath(__file__))
   sys.path.append(os.path.join(binPath, '../../build/litex'))
   from platforms import cmod7

   platform = cmod7.Platform()

   platform.add_source("issiram.v")
   clk = ClockSignal()
   rst = ResetSignal()
   bus = wishbone.Interface()

   issiram = platform.request('issiram')
   pins = {
      'ce': issiram.cen,
      'oe': issiram.oen,
      'we': issiram.wen,
      'adr': issiram.addr,
      'dat': issiram.data
   }
   module = Module()
   extmem = ISSIRam(module, clk, rst, bus, pins)

   platform.build(module)

