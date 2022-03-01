# A2P Area/timing Build Tests

## Litex SOC (normal version)

```
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+
|          Instance          |      Module      | Total LUTs | Logic LUTs | LUTRAMs | SRLs |  FFs | RAMB36 | RAMB18 | DSP Blocks |
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+
| cmod7                      |            (top) |       4800 |       4784 |      16 |    0 | 2711 |     18 |     10 |          4 |
|   (cmod7)                  |            (top) |        247 |        231 |      16 |    0 |  671 |     16 |      0 |          0 |
|   A2P_WB                   |           A2P_WB |       4461 |       4461 |       0 |    0 | 1948 |      2 |     10 |          4 |
|     (A2P_WB)               |           A2P_WB |       2121 |       2121 |       0 |    0 | 1696 |      1 |      4 |          4 |
|     IBusCachedPlugin_cache | InstructionCache |       1271 |       1271 |       0 |    0 |   98 |      1 |      1 |          0 |
|     dataCache_1_           |        DataCache |       1075 |       1075 |       0 |    0 |  154 |      0 |      5 |          0 |
|   issiram                  |          issiram |         93 |         93 |       0 |    0 |   92 |      0 |      0 |          0 |
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+

    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints
    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------
      0.289        0.000                      0                 7108        0.033        0.000                      0                 7108        3.750        0.000                       0                  2794
```

## Litex64 SOC (build test-only 64b version for area/timing)

* initial update to scala source to add configurable 64b
* OP.nbits=64, OP.abits=32
* should have main pipe hooked up close enough (but no new logic for mul/div 64)
* addresses still 32b
* wishbone is 32b

```
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+
|          Instance          |      Module      | Total LUTs | Logic LUTs | LUTRAMs | SRLs |  FFs | RAMB36 | RAMB18 | DSP Blocks |
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+
| cmod7                      |            (top) |       6550 |       6534 |      16 |    0 | 3315 |     21 |      7 |          4 |
|   (cmod7)                  |            (top) |        248 |        232 |      16 |    0 |  671 |     16 |      0 |          0 |
|   A2P64                    |            A2P64 |       6211 |       6211 |       0 |    0 | 2552 |      5 |      7 |          4 |
|     (A2P64)                |            A2P64 |       3229 |       3229 |       0 |    0 | 2309 |      4 |      1 |          4 |
|     IBusCachedPlugin_cache | InstructionCache |       1552 |       1552 |       0 |    0 |   98 |      1 |      1 |          0 |
|     dataCache_1_           |        DataCache |       1435 |       1435 |       0 |    0 |  145 |      0 |      5 |          0 |
|   issiram                  |          issiram |         94 |         94 |       0 |    0 |   92 |      0 |      0 |          0 |
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+

    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints
    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------
     -0.183       -0.334                      2                 8635        0.024        0.000                      0                 8635        3.750        0.000                       0                  3398
```

## Litex SOC (tinyOps version)

* add tinyOps option to delete some of arch bloat (only IntAluPlugin ones; completely unscientific guess):
      * addc, adde, addme, addz, subfc, subfe, subfme, subfze, eqv, andc, orc, extsb, extsh
      * addpcis
      * mfocrf, setb, isel
      * rlwinm, rlwnm, rlwimi
      * crnand, crnor, creqv, crandc, crorc
      * mcrf, mcrxrx, mtocrf
      * cntlzw, cnttzw, popcntb, popcntw, cmpb, prtyw

```
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+
|          Instance          |      Module      | Total LUTs | Logic LUTs | LUTRAMs | SRLs |  FFs | RAMB36 | RAMB18 | DSP Blocks |
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+
| cmod7                      |            (top) |       4555 |       4539 |      16 |    0 | 2704 |     18 |     10 |          4 |
|   (cmod7)                  |            (top) |        246 |        230 |      16 |    0 |  671 |     16 |      0 |          0 |
|   A2P_WB                   |           A2P_WB |       4217 |       4217 |       0 |    0 | 1941 |      2 |     10 |          4 |
|     (A2P_WB)               |           A2P_WB |       1940 |       1940 |       0 |    0 | 1721 |      1 |      4 |          4 |
|     IBusCachedPlugin_cache | InstructionCache |       1200 |       1200 |       0 |    0 |   98 |      1 |      1 |          0 |
|     dataCache_1_           |        DataCache |       1082 |       1082 |       0 |    0 |  122 |      0 |      5 |          0 |
|   issiram                  |          issiram |         93 |         93 |       0 |    0 |   92 |      0 |      0 |          0 |
+----------------------------+------------------+------------+------------+---------+------+------+--------+--------+------------+


    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints
    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------
      0.426        0.000                      0                 7066        0.033        0.000                      0                 7066        3.750        0.000                       0                  2787
```


## Litex SOC (A2Node + 4x A2P)

* simple version, just replace a2p instantiation in SOC with a2node (4 cores below it) and add 4 UARTs

* probably want to synth core separately and place; neg slack @ 100MHz


```

    WNS(ns)      TNS(ns)  TNS Failing Endpoints  TNS Total Endpoints      WHS(ns)      THS(ns)  THS Failing Endpoints  THS Total Endpoints     WPWS(ns)     TPWS(ns)  TPWS Failing Endpoints  TPWS Total Endpoints
    -------      -------  ---------------------  -------------------      -------      -------  ---------------------  -------------------     --------     --------  ----------------------  --------------------
     -0.596     -227.620                   1046                20722        0.012        0.000                      0                20722        4.500        0.000                       0                  8479


+--------------------------------+------------------------+------------+------------+---------+------+------+--------+--------+------------+
|            Instance            |         Module         | Total LUTs | Logic LUTs | LUTRAMs | SRLs |  FFs | RAMB36 | RAMB18 | DSP Blocks |
+--------------------------------+------------------------+------------+------------+---------+------+------+--------+--------+------------+
| cmod7                          |                  (top) |      17804 |      17804 |       0 |    0 | 8361 |      8 |     40 |         16 |
|   (cmod7)                      |                  (top) |        330 |        330 |       0 |    0 |  391 |      0 |      0 |          0 |
|   a2node                       |                 a2node |      17464 |      17464 |       0 |    0 | 7963 |      8 |     40 |         16 |
|     bridge                     |                   A2WB |        153 |        153 |       0 |    0 |  195 |      0 |      0 |          0 |
|       (bridge)                 |                   A2WB |        112 |        112 |       0 |    0 |    0 |      0 |      0 |          0 |
|       arb                      |                    arb |          2 |          2 |       0 |    0 |   16 |      0 |      0 |          0 |
|       bus.genblk1_0.bus        |                bus_wb2 |          5 |          5 |       0 |    0 |   41 |      0 |      0 |          0 |
|       cmd[0].genblk1_2.cmd_wb2 |                 cmd_wb |          0 |          0 |       0 |    0 |   33 |      0 |      0 |          0 |
|       cmd[1].genblk1_2.cmd_wb2 | cmd_wb__parameterized0 |          1 |          1 |       0 |    0 |   35 |      0 |      0 |          0 |
|       cmd[2].genblk1_2.cmd_wb2 | cmd_wb__parameterized1 |         33 |         33 |       0 |    0 |   35 |      0 |      0 |          0 |
|       cmd[3].genblk1_2.cmd_wb2 | cmd_wb__parameterized2 |          1 |          1 |       0 |    0 |   35 |      0 |      0 |          0 |
|     c0                         |               A2P_4K1W |       4325 |       4325 |       0 |    0 | 1948 |      2 |     10 |          4 |
|       (c0)                     |               A2P_4K1W |       2397 |       2397 |       0 |    0 | 1693 |      1 |      4 |          4 |
|       IBusCachedPlugin_cache   |     InstructionCache_7 |        946 |        946 |       0 |    0 |  101 |      1 |      1 |          0 |
|       dataCache_1_             |            DataCache_8 |        986 |        986 |       0 |    0 |  154 |      0 |      5 |          0 |
|     c1                         |             A2P_4K1W_0 |       4320 |       4320 |       0 |    0 | 1948 |      2 |     10 |          4 |
|       (c1)                     |             A2P_4K1W_0 |       2387 |       2387 |       0 |    0 | 1693 |      1 |      4 |          4 |
|       IBusCachedPlugin_cache   |     InstructionCache_5 |        951 |        951 |       0 |    0 |  101 |      1 |      1 |          0 |
|       dataCache_1_             |            DataCache_6 |        985 |        985 |       0 |    0 |  154 |      0 |      5 |          0 |
|     c2                         |             A2P_4K1W_1 |       4318 |       4318 |       0 |    0 | 1924 |      2 |     10 |          4 |
|       (c2)                     |             A2P_4K1W_1 |       2398 |       2398 |       0 |    0 | 1693 |      1 |      4 |          4 |
|       IBusCachedPlugin_cache   |     InstructionCache_3 |        942 |        942 |       0 |    0 |  101 |      1 |      1 |          0 |
|       dataCache_1_             |            DataCache_4 |        982 |        982 |       0 |    0 |  130 |      0 |      5 |          0 |
|     c3                         |             A2P_4K1W_2 |       4348 |       4348 |       0 |    0 | 1948 |      2 |     10 |          4 |
|       (c3)                     |             A2P_4K1W_2 |       2407 |       2407 |       0 |    0 | 1693 |      1 |      4 |          4 |
|       IBusCachedPlugin_cache   |       InstructionCache |        952 |        952 |       0 |    0 |  101 |      1 |      1 |          0 |
|       dataCache_1_             |              DataCache |        993 |        993 |       0 |    0 |  154 |      0 |      5 |          0 |
|   issiram                      |                issiram |         11 |         11 |       0 |    0 |    7 |      0 |      0 |          0 |
+--------------------------------+------------------------+------------+------------+---------+------+------+--------+--------+------------+
```

