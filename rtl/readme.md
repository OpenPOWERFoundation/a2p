# Magic Incantations for Litex Integration

## Litex General

### add local platform

```
from platforms import cmod7
``

### add local core

```
binPath = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(binPath, 'a2p'))
from a2p import A2P
from litex.soc.cores import cpu
cpu.CPUS['a2p'] = A2P
```

### add local modules

```
sys.path.append(os.path.join(binPath, 'modules'))
```

### add extra UARTs (GPIO)

* must add PHY and UART to CSR

```
self.submodules.uart_1_phy = RS232PHY(pins, sys_clk_freq, 115200, with_dynamic_baudrate=True)
self.add_csr('uart_1_phy')
self.submodules.uart_1 = UART(phy=self.uart_1_phy)
self.add_csr('uart_1')
```

* dynamic baudrate allows setting it in csr

   * tuning_word = int((baudrate/clk_freq)*2**32)
   * in bios
      * ```#define CONFIG_CLOCK_FREQUENCY 100000000```
      * or read freq with config_clock_frequency_read()
      * access csr with generated UART_1 funcs

   * 115200=004B7F5A (4947802)
   *   9600=00064A9C (412316)

### add 'CSR Definition' CSR for indirectly addressing CSRs, so that code doesn't need to change when gateware rebuilt

* add a 'CSR Definition' region at constant location (like CSR_BASE)

   * contains list of CSRs which point to and define CSRs available

   * Base Addr: 24 bits, Identifier: 8 bits

   * also could self.add_constant(ID) for each, so that software can use constants to check Identifier

   * needs to be able to reserve its region, then find out what's been built and add its regs before finalize()

### allow lxterm and lxserver to share main uart (crossover)


## Litex RTL

### add verilog module to top, between top-level bus and I/Os (slave)

```
from issiram import ISSIRam
platform.add_source("./modules/issiram.v")

sram_bus = wishbone.Interface()
pins = platform.request('issiram')
# to rename pins
mem = {
         'ce': pins.cen,
         'oe': pins.oen,
         'we': pins.wen,
         'adr': pins.addr,
         'dat': pins.data
}
sram = ISSIRam(self, ClockSignal(), ResetSignal(), sram_bus, mem)
self.submodules.sram = sram
self.bus.add_slave('sram', sram_bus, SoCRegion(origin=self.mem_map['sram'], size=sram.size))
self.logger.info("SRAM {} {} {}.".format(
   colorer('sram'),
   colorer("added", color="green"),
   self.bus.regions['sram'])
)
```

### add verilog module to top, with connections to other top-level signals


### add Litex L2 between WB and verilog module


