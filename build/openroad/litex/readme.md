# Using Litex to build a Caravel User Project Area

Create a module usable for FPGA and tech mapping, containing various Litex structures like CSR, WB, UART, I2C, etc. and
custom verilog modules (core, async RAM, GPIO, etc.).

* create a virtual platform corresponding to the I/O on the Caravel User module

* create virtual 'soc' design using that platform

   * module can be used for OL synthesis (expand_type set for tech)

   * module can be included in FPGA SOC for testing and development (expand_type set for inferred)

* create real soc incorporating above, plus clocks, real GPIO connections, etc.


### Virtual Platform

* create user area

```
a2p_site.py
cp build/caravel_user/gateware/mem.init .
cp build/caravel_user/gateware/caravel_user.v .
```

* OL didn't die

```
make DESIGN_CONFIG=./designs/sky130hd/a2p_litex/config.mk
```


