// a2p
// changed to NOT

#ifndef __SYSTEM_H
#define __SYSTEM_H

#include <stdint.h>

/*
void flush_l2_cache(void) {
}
*/
static void flush_cpu_icache(void);
static void flush_cpu_dcache(void);

static void flush_cpu_icache(void) {
}
static void flush_cpu_dcache(void) {
}


/* CSRs are stored in subregister slices of CONFIG_CSR_DATA_WIDTH (native
 * endianness), with the least significant slice at the lowest aligned
 * (base) address. */

/* CSR subregisters (a.k.a. "simple CSRs") are embedded inside uint32_t
 * aligned locations: */

/*
#define CSR_ACCESSORS_DEFINED


#ifdef __ASSEMBLER__
#define MMPTR(x) x
#else

#include <generated/soc.h>
#if !defined(CONFIG_CSR_DATA_WIDTH)
#error CSR_DATA_WIDTH MUST be set before including this file!
#endif

#define MMPTR(a) (*((volatile uint32_t *)(a)))

static inline unsigned long swizzle(unsigned long v);

static inline unsigned long swizzle(unsigned long v) {
   //return ((v & 0x000000FF) << 24) | ((v & 0x0000FF00) <<  8) | ((v & 0x00FF0000) >>  8) | ((v & 0xFF000000) >> 24);
   return v;
}

static inline void csr_write_simple(unsigned long v, unsigned long a)
{
	//MMPTR(a) = v;
   MMPTR(a) = swizzle(v);
}

static inline unsigned long csr_read_simple(unsigned long a)
{
	//return MMPTR(a);
	return swizzle(MMPTR(a));
}

#endif
*/

#endif /* __SYSTEM_H */

