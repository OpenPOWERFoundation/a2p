// simple verilator top
// litex soc w/a2p

#ifndef NO_TRACE
#define TRACING
#endif

// old public access method
//#define OLD_PUBLIC

#include <cstddef>
#include <iostream>
#include <fstream>
#include <iomanip>
#include <unordered_map>

#include "verilated.h"
#include "Vsoc.h"

#ifndef OLD_PUBLIC
// internal nets
#include "Vsoc___024root.h"
#endif

#include "Vsoc_soc.h"
#include "Vsoc_A2P_WB.h"

#ifdef TRACING
#include "verilated_vcd_c.h"
VerilatedVcdC *t;
#else
unsigned int t = 0;
#endif

// using https://github.com/ZipCPU/wbuart32 sim driver
// how does cpp get compiled in without this?  can verilator be told to add more cpp?  see a2p!
// UART=port
//   0xA20 = 2592
//     A2P = 2593
#ifdef UART
#include "wbuart32/bench/cpp/uartsim.h"
#include "wbuart32/bench/cpp/uartsim.cpp"
#endif

Vsoc* m;
#ifdef OLD_PUBLIC
Vsoc* root;
#else
Vsoc___024root* root;
#endif

vluint64_t main_time = 0;     // in units of timeprecision used in verilog or --timescale-override

double sc_time_stamp() {      // $time in verilog
   return main_time;
}

const char* tbName = "tb_litex_soc";
const int resetCycle = 10;
const int threadRunCycle = resetCycle + 5;
const int runCycles = 1000000000;
const int hbCycles = 500;
const int quiesceCycles = 50;
const int threads = 1;
const std::string testFile = "";
const unsigned int bootAdr = 0x00000000;
const bool failMaxCycles = true;
const unsigned int stopOnHang = 500;
const unsigned int stopOnLoop = 20;
const unsigned long iarPass = 0x7F0;
const unsigned long iarFail = 0x7F4;
const bool debugWB = true;
const bool debugWBReq = false;

// Cythonize this and use it for cocotb too...

class Memory {
   std::unordered_map<unsigned int, unsigned int> mem;
   public:
      bool le;
      bool logStores;
      int defaultVal;
      Memory();
      void loadFile(std::string filename, unsigned int adr=0, bool le=false, std::string format="ascii");
      int read(unsigned int adr);
      void write(unsigned int adr, unsigned int dat);
      void write(unsigned int adr, unsigned int be, unsigned int dat);
};

Memory::Memory() {

   this->defaultVal = 0;
   this->le = false;
   this->logStores = true;

}

void Memory::loadFile(std::string filename, unsigned int adr, bool le, std::string format) {

   unsigned int dat;
   std::ifstream f;
   f.open(filename, std::fstream::in);
   // "ascii"
   //while (f.peek()!=EOF) {
      //f >> std::hex >> dat;
     // f >> dat;
   while (f >> std::hex >> dat) {
      this->write(adr, dat);
      adr += 4;
   }

}

// adr is word-aligned byte address
int Memory::read(unsigned int adr) {
   if (this->mem.find(adr) != this->mem.end()) {
      return this->mem[adr];
   } else {
      return this->defaultVal;
   }
}

// adr is word-aligned byte address
void Memory::write(unsigned int adr, unsigned int dat) {
   unsigned int startDat = this->read(adr);
   this->write(adr, 0xF, dat);
}

void Memory::write(unsigned int adr, unsigned int be, unsigned int dat) {
   if (be == 0) return;

   int mask = 0, startDat;
   if (be >= 8) {
      be = be - 8;
      mask = 0xFF000000;
   } else {
      mask = 0;
   }
   if (be >= 4) {
      be = be - 4;
      mask |= 0x00FF0000;
   }
   if (be >= 2) {
      be = be - 2;
      mask |= 0x0000FF00;
   }
   if (be = 1) {
      mask |= 0x000000FF;
   }

   startDat = this->read(adr);
   this->mem[adr] = (startDat & ~mask) | (dat & mask);
   if (this->logStores) {
      std::cout << " * Mem Update @" << std::setw(8) << std::setfill('0') << std::uppercase << std::hex << adr <<
       " " <<std::setw(8) << std::setfill('0') << std::uppercase << std::hex << startDat <<
       "->" <<std::setw(8) << std::setfill('0') << std::uppercase << std::hex << this->read(adr) << std::endl;
   }
}

Memory mem;

int main(int argc, char **argv) {
   using namespace std;

   cout << setfill('0');

   Verilated::commandArgs(argc, argv);
   m = new Vsoc;
#ifdef OLD_PUBLIC
   root = m;
#else
   root = m->rootp;
#endif

#ifdef TRACING
      Verilated::traceEverOn(true);
      t = new VerilatedVcdC;
      m->trace(t, 99);
      t->open("a2plitex.vcd");
      cout << "Tracing enabled." << endl;
#endif

   unsigned int i, v;
   bool ok = true;
   bool done = false;
   bool resetDone = false;
   bool booted = false;
   unsigned int quiesceCount = 0;
   unsigned int threadStop = 0x3;

   unsigned int tick = 0;
   unsigned int cycle = 1;
   unsigned int readPending = 0;
   unsigned int readAddr = 0;
   unsigned int readTag = 0;
   unsigned int readTID = 0;
   unsigned int countReads = 0;
   unsigned int lastCompCycle = 0;
   unsigned int lastCompSame = 0;
   unsigned int lastCompIAR = 0x0000001;
   unsigned int gpr[32];
   bool wbRdPending = false, wbWrPending = false;

   // memory setup
   //mem.write(0xFFFFFFFC, 0x48000002);
   //mem.loadFile(testFile);

   // uart setup
   /*
   //	i_setup[30]	True if we are not using hardware flow control.  This bit
//		is ignored within this module, as any receive hardware flow
//		control will need to be implemented elsewhere.
//
//	i_setup[29:28]	Indicates the number of data bits per word.  This will
//		either be 2'b00 for an 8-bit word, 2'b01 for a 7-bit word, 2'b10
//		for a six bit word, or 2'b11 for a five bit word.
//
//	i_setup[27]	Indicates whether or not to use one or two stop bits.
//		Set this to one to expect two stop bits, zero for one.
//
//	i_setup[26]	Indicates whether or not a parity bit exists.  Set this
//		to 1'b1 to include parity.
//
//	i_setup[25]	Indicates whether or not the parity bit is fixed.  Set
//		to 1'b1 to include a fixed bit of parity, 1'b0 to allow the
//		parity to be set based upon data.  (Both assume the parity
//		enable value is set.)
//
//	i_setup[24]	This bit is ignored if parity is not used.  Otherwise,
//		in the case of a fixed parity bit, this bit indicates whether
//		mark (1'b1) or space (1'b0) parity is used.  Likewise if the
//		parity is not fixed, a 1'b1 selects even parity, and 1'b0
//		selects odd.
//
//	i_setup[23:0]	Indicates the speed of the UART in terms of clocks.
//		So, for example, if you have a 200 MHz clock and wish to
//		run your UART at 9600 baud, you would take 200 MHz and divide
//		by 9600 to set this value to 24'd20834.  Likewise if you wished
//		to run this serial port at 115200 baud from a 200 MHz clock,
//		you would set the value to 24'd1736
   */
  /*
  		m_baud_counts = (isetup & 0x0ffffff);
		m_nbits   = 8-((isetup >> 28)&0x03);
		m_nstop   =((isetup >> 27)&1)+1;
		m_nparity = (isetup >> 26)&1;
		m_fixdp   = (isetup >> 25)&1;
		m_evenp   = (isetup >> 24)&1;
  */

 // 100MHz, 115200 = 868
   #ifdef UART
   	UARTSIM *uart;
	   int uartPort = UART;   // 0-stdin/stdout
 	   //unsigned	uartConfig = 1736;
 	   unsigned	uartConfig = 868;
	   //unsigned	uartConfig = 434;
	   //unsigned	uartConfig = 217;
	   //unsigned	uartConfig = 217;

      cout << "Initializing UART on port " << uartPort << " with config=" << hex << setw(8) << setfill('0') << uartConfig << endl;
	   uart = new UARTSIM(uartPort);
	   uart->setup(uartConfig);
      cout << "litex_term socket://localhost:" << uartPort << " in a console, then hit enter here...." << endl;
      cin.get();
   #endif


   // do something

   for (i = 0; i < 32; i++) {
      gpr[i] = 0;
   }

   //just use hardware reset
   //root->soc->main_basesoc_soc_rst = 1;
   //cout << dec << setw(8) << cycle << " Resetting..." << endl;

   const int clocks[2] = {0x1, 0x0};               // 1x
   const int ticks1x = 2;

   while (!Verilated::gotFinish() && (ok | quiesceCount > 0) && cycle <= runCycles && !done) {

      if (!resetDone && (cycle > resetCycle)) {
         //root->soc->main_basesoc_soc_rst = 0;
         //cout << dec << setw(8) << cycle << " Releasing reset." << endl;
         resetDone = true;
      }

      if (threadStop && (cycle > threadRunCycle)) {
         //threadStop = 0x0;
         //m->an_ac_pm_thread_stop = threadStop;
         //cout << dec << setw(8) << cycle << " Thread stop=" << threadStop << endl;
      }

      m->clk12 = clocks[tick % ticks1x];
      m->eval();

      // 1x clock
      if ((tick % ticks1x) == 0) {

         // core

         // completion
         if (root->soc->A2P_WB->lastStageIsFiring) {
            v = root->soc->A2P_WB->lastStagePc;
            cout << dec << setw(8) << setfill('0') << uppercase << cycle << " C0: CP";
            cout << " 0:" << setw(6) << setfill('0') << hex << v;
            cout << " [" << setw(6) << setfill('0') << hex << root->soc->A2P_WB->lastStageInstruction << "]" << endl;
            if (quiesceCount > 0) {
               /* skip remaining checks */
            } else if (v == iarPass) {
               cout << "*** Passing IAR detected ***" << endl;
               quiesceCount = 5;
            } else if (v == iarFail) {
               cout << "*** Failing IAR detected ***" << endl;
               ok = false;
               quiesceCount = 5;
            } else if (v == lastCompIAR) {
               lastCompSame++;
               if (stopOnLoop && (lastCompSame == stopOnLoop)) {
                  ok = false;
                  cout << "*** Loop detected for " << dec << stopOnLoop << " iterations ***" << endl;
               }
            } else {
               lastCompIAR = v;
               lastCompSame = 0;
            }
         }

         // gpr change -  really need to use these (to detect write w/same data)
  //reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  //reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  //wire                UpdateRegFileWrite_valid /* verilator public */ ;
  //wire                UpdateRegFileWrite_payload_valid /* verilator public */ ;
  //wire       [4:0]    UpdateRegFileWrite_payload_address /* verilator public */ ;
  //wire       [31:0]   UpdateRegFileWrite_payload_data /* verilator public */ ;

         for (i = 0; i < 32; i++) {
            v = root->soc->A2P_WB->RegFilePlugin_regFile[i];
            if (v != gpr[i]) {
               gpr[i] = v;
               cout << dec << setw(8) << setfill('0') << cycle << " C0: GPR Update: R";
               cout << dec << setw(2) << setfill('0') << i << "=";
               cout << hex << setw(8) << setfill('0') << uppercase << v << " ";
               cout << endl;
            }
         }


         // completion

         // wb - soc can monitor-only
         if (wbRdPending) {
            if (root->soc->A2P_WB->dBusWB_ACK)
               if (debugWB)
                  cout << dec << setw(8) << setfill('0') << uppercase << cycle << " WB RD ACK RA=" << setw(8) << hex << setfill('0') << (root->soc->A2P_WB->dBusWB_ADR << 2) <<
                          " DATA=" << setw(8)  << hex << setfill('0') <<  root->soc->A2P_WB->dBusWB_DAT_MISO << endl;

            wbRdPending = false;

         } else if (wbWrPending) {
            if (root->soc->A2P_WB->dBusWB_ACK)
               if (debugWB)
                  cout << dec << setw(8) << setfill('0') << uppercase << cycle << " WB WR ACK RA=" << setw(8) << hex << setfill('0') << (root->soc->A2P_WB->dBusWB_ADR << 2) <<
                          " SEL=" << setw(1) << setfill('0') << uppercase << hex << (unsigned int)root->soc->A2P_WB->dBusWB_SEL <<
                          " DATA=" << setw(8)  << hex << setfill('0') <<  root->soc->A2P_WB->dBusWB_DAT_MOSI << endl;
            wbWrPending = false;

         } else if (root->soc->A2P_WB->dBusWB_CYC && root->soc->A2P_WB->dBusWB_STB) {
            if (!root->soc->A2P_WB->dBusWB_WE) {
               if (root->soc->A2P_WB->dBusWB_ACK) {
                  if (debugWB)
                     cout << dec << setw(8) << setfill('0') << uppercase << cycle << " WB RD ACK RA=" << setw(8) << hex << setfill('0') << (root->soc->A2P_WB->dBusWB_ADR << 2) <<
                          " DATA=" << setw(8)  << hex << setfill('0') <<  root->soc->A2P_WB->dBusWB_DAT_MISO << endl;
               } else if (!wbRdPending && debugWBReq) {
                  cout << dec << setw(8) << setfill('0') << uppercase << cycle << " WB RD RA=" << setw(8) << hex << setfill('0') << (root->soc->A2P_WB->dBusWB_ADR << 2) << endl;
                  wbRdPending = true;
               }
            } else {
                if (debugWB) {
                  cout << dec << setw(8) << setfill('0') << uppercase << cycle << " WB WR ACK RA=" << setw(8) << hex << setfill('0') << (root->soc->A2P_WB->dBusWB_ADR << 2) <<
                          " SEL=" << setw(1) << setfill('0') << uppercase << hex << (unsigned int)root->soc->A2P_WB->dBusWB_SEL <<
                          " DATA=" << setw(8)  << hex << setfill('0') <<  root->soc->A2P_WB->dBusWB_DAT_MOSI << endl;
                } else if (!wbWrPending && debugWBReq) {
                  cout << dec << setw(8) << setfill('0') << uppercase << cycle << " WB WR RA=" << setw(8)  << hex << setfill('0') << (root->soc->A2P_WB->dBusWB_ADR << 2) <<
                          " SEL=" << root->soc->A2P_WB->dBusWB_SEL << " DATA=" << setw(8)  << hex << setfill('0') << root->soc->A2P_WB->dBusWB_DAT_MOSI << endl;
                  wbWrPending = true;
               }
            }
         }

         // leds, btns, mem, etc.

      } else {

         if (resetDone) {
         #ifdef UART
   		   m->serial_rx = (*uart)(m->serial_tx);
         #endif
         }

      }

      m->eval(); // NEED THIS!!!!

      // finish clock stuff
      if ((tick % ticks1x) == 0) {
         cycle++;
         if ((cycle % hbCycles) == 0) {
            cout << dec << setw(8) << setfill('0') << cycle << " ...tick..." << endl;
         }
         if (failMaxCycles &&  (cycle == runCycles)) {
            cout << "*** Max cycles reached ***" << endl;
            ok = false;
         }
      }

      tick++;

      #ifdef TRACING
      t->dump(tick);
      t->flush();
      #endif

      // check for fails

      if (!ok && quiesceCount == 0) {
         quiesceCount = quiesceCycles;
         cout << "Quiescing..." << endl;
      } else if (quiesceCount > 0) {
         quiesceCount--;
         if (ok && quiesceCount == 0) {
            done = true;
         }
      }

   }

#ifdef TRACING
   t->close();
#endif
   m->final();

   cout << endl << endl << tbName << endl;
   cout << endl << "Cycles run=" << dec << cycle << endl << endl;
   if (!ok) {
      cout << "You are worthless and weak." << endl;
      exit(EXIT_FAILURE);
   } else {
      cout << "You has opulence." << endl;
      exit(EXIT_SUCCESS);
   }

}