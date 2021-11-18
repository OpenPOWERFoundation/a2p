# A2 Interfaces to WB

* core interfaces

   * A2I/A2O A2L2 bus

   * Single (combined I/D) w/SMP extensions

   * Dual (separate I/D) WB buses w/SMP extensions

* bus interface

   * WB (non-SMP)

* functions

   * arbitrates for WB bus

   * queues one or more core commands

   * point of coherncy for larx/stcx, sync, tlbie, etc. for multicores below it (single/mulithread)

   * address compares necessary for ordering/coherency

   * optional mailbox interface for core-core peer and broadcast


## Possible configurations

* one core, WB: pass-through with SMP functions

* one core, A2L2: bridge with SMP functions

* multi-core: bridge for A2L2, queueing, arbitration, and SMP functions


