# NIAnalyzer

## Programmable NIA analyzer and debugger

Receives debug bus (NIA, val, advancing, count, tag bits) and counts various events:

   * compare NIA vs all block specs (start/end) to match one or more blocks, or none (also counted)
   * count 'advancing' (count is for multiple completions)
   * could count 'valid and not advancing' cycles (latency); may only make sense for single ops
   * tag bits could specify b/alu/rot/ld/st/spec/etc. or other info (icmiss, dcmiss, stall, byps, ...)
   * could also be able to generate signal(s) based on events (stall/interrupt core when full), event seen, etc.


* gen-configurable

   * nia width, number of buckets, ...
   * local bram size

* csr-configurable

   * buckets def
   * ctls (start/stop/rst/...)

* wb interface to connect to uart/eth/mem


