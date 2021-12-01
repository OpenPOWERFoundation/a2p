import os

from litex.build.generic_platform import GenericPlatform
from litex.build.xilinx import common, vivado, ise, symbiflow

from migen.fhdl.structure import _Fragment

class VirtualPlatform(GenericPlatform):

    def __init__(self, *args, toolchain='ise', **kwargs):
        GenericPlatform.__init__(self, *args, **kwargs)
        #self.edifs = set()
        #self.ips   = {}
        #if toolchain == "ise":
        #    self.toolchain = ise.XilinxISEToolchain()
        #elif toolchain == "vivado":
        #    self.toolchain = vivado.XilinxVivadoToolchain()
        #elif toolchain == "symbiflow":
        #    self.toolchain = symbiflow.SymbiflowToolchain()
        #else:
        #    raise ValueError("Unknown toolchain")

    #def add_edif(self, filename):
    #    pass
        #self.edifs.add((os.path.abspath(filename)))

    #def add_ip(self, filename, disable_constraints=False):
    #    pass
        #self.ips.update({os.path.abspath(filename): disable_constraints})

    def get_verilog(self, *args, special_overrides=dict(), **kwargs):
        return GenericPlatform.get_verilog(self, *args)

    #def get_edif(self, fragment, **kwargs):
    #    pass
        #return GenericPlatform.get_edif(self, fragment, "UNISIMS", "Xilinx", self.device, **kwargs)

    def build(self, *args, **kwargs):
        return self.toolchain_build(self, *args, **kwargs)

    def add_period_constraint(self, clk, period):
        pass
        #if clk is None: return
        #if hasattr(clk, "p"):
        #    clk = clk.p
        #self.toolchain.add_period_constraint(self, clk, period)

    #def add_false_path_constraint(self, from_, to):
    #    pass
        #if hasattr(from_, "p"):
        #    from_ = from_.p
        #if hasattr(to, "p"):
        #    to = to.p
        #self.toolchain.add_false_path_constraint(self, from_, to)

    def toolchain_build(self, platform, fragment,
        build_dir  = 'build',
        build_name = 'virtual', #doesnt do anything!!!
        **kwargs):

        # Create build directory
        os.makedirs(build_dir, exist_ok=True)
        cwd = os.getcwd()
        os.chdir(build_dir)

        # Finalize design
        if not isinstance(fragment, _Fragment):
            fragment = fragment.get_fragment()
        platform.finalize(fragment)

        # Generate verilog
        v_output = platform.get_verilog(fragment, name=build_name, **kwargs)
        named_sc, named_pc = platform.resolve_signals(v_output.ns)
        v_file = build_name + ".v"
        v_output.write(v_file)
        platform.add_source(v_file)

        os.chdir(cwd)

        return v_output.ns