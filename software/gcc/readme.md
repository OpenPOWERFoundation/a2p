# GCC

* modify backend and add switches for A2 architectural experiments

* modify backend to add new accelerator/sandbox ops

## links

### gcc

* https://kristerw.blogspot.com/2017/08/writing-gcc-backend_4.html

* https://gcc.gnu.org/onlinedocs/gccint/index.html#SEC_Contents

   * https://gcc.gnu.org/onlinedocs/gccint/Machine-Desc.html#Machine-Desc

* https://gcc.gnu.org/onlinedocs/gccint/Back-End.html

* https://stackoverflow.com/questions/19836327/change-instruction-set-in-gcc

>You can add new instructions, or change existing by modifying group of files in GCC called "machine description". Instruction patterns in <target>.md file, some code in <target>.c file, predicates, constraints and so on. All of these lays in $GCCHOME/gcc/config/<target>/ folder. All of this stuff using on step of generation ASM code from RTL. You can also change cases of emiting instructions by change some other general GCC source files, change SSA tree generation, RTL generation, but all of this a little bit complicated. A simple explanation what`s happened:
https://www.cse.iitb.ac.in/grc/slides/cgotut-gcc/topic5-md-intro.pdf

## the power definitions (inc. power10) are here:

* https://github.com/gcc-mirror/gcc/tree/16e2427f50c208dfe07d07f18009969502c25dc8/gcc/config/rs6000

1. start with one of the 32b ones like 40x; comment out some stuff, rebuild

   * is there a set of operations that gcc requires to be able to guarantee it can gen code??? i guess this has to do with gimple->rtl semantic association

   * there also must be indicators to make it compile gud - like compatible issuers, latency, etc.??

      ```define_insn_reservation``` tells what resources are used by the op

2. find some of the newer ops/facs implemented and update operation for 32b (tar, pcis, ...)

3. add switch to specify a2p as target; and any other switches for extra options (test perf with limited ops, add fpu, etc.)

### looking around

* interesting - a2i, which does have a switch

```
a2.md:(define_automaton "ppca2")
a2.md:(define_cpu_unit "mult" "ppca2")
a2.md:(define_cpu_unit "axu" "ppca2")
a2.md:(define_insn_reservation "ppca2-mfcr" 1
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-mfjmpr" 5
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-mtjmpr" 5
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-imul" 1
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-lmul" 6
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-idiv" 32
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-ldiv" 65
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-load" 5
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-fp" 6
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-fp-load" 6
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-fp-store" 2
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-fpcompare" 5
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-ddiv" 72
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-sdiv" 59
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-dsqrt" 69
a2.md:       (eq_attr "cpu" "ppca2"))
a2.md:(define_insn_reservation "ppca2-ssqrt" 65
a2.md:       (eq_attr "cpu" "ppca2"))

rs6000-cpus.def:RS6000_CPU ("a2", PROCESSOR_PPCA2,
driver-rs6000.c:  { "a2",       "-ma2" },
rs6000.c:struct processor_costs ppca2_cost = {
rs6000.h:  mcpu=a2: -ma2; \
rs6000.md:   rs64a,mpccore,cell,ppca2,titan"
rs6000.md:(include "a2.md")
rs6000-tables.opt:Enum(rs6000_cpu_opt_value) String(a2) Value(28)
t-rs6000:       $(srcdir)/config/rs6000/a2.md \

ppc-auxv.h:#define PPC_PLATFORM_PPCA2             8
rs6000.c:                       && rs6000_tune != PROCESSOR_PPCA2
rs6000.c:      case PROCESSOR_PPCA2:
rs6000-call.c:  { "ppca2",         PPC_PLATFORM_PPCA2 },
rs6000-cpus.def:RS6000_CPU ("a2", PROCESSOR_PPCA2,
rs6000-opts.h:   PROCESSOR_PPCA2,
```

   * a2.md is mostly/all perf stuff
   * add a2p to rs6000-cpus.def (core attributes)
   * add a2p to ppc-auxv.h (this supposedly must match glibc - so may have to have custom glibc if you toss out too many ops)
   * add a2p to rs6000.c (instruction costs - latency)
   * add a2p to rs6000-call.c (human name)
   * add a2p to rs6000-opts.h (MUST MATCH md FILE ORDER!! - after A2)  ***check this!!!!!!***


