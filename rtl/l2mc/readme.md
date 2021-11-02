# L2 Multicore

* Multicore bridge to WB

   * generate 1-4 core interfaces (possibly mixed)

      * slave WB-I, slave WB-D, OPMC extension (opcode/WIMG/...)

      * a2i/a2o out-of-order/credits/... style

   * configurable load and store queues per interface (if pipelined/credited interfaces)

   * point-of-coherency/snoop/sync/... logic

   * configurable-size shared L2 (extra tags for pinning, etc.?)

   * WB-I, WB-D master

