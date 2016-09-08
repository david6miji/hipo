cmd_arch/arm/mach-imx/ddr3_freq_imx6.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/mach-imx/.ddr3_freq_imx6.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float   -c -o arch/arm/mach-imx/ddr3_freq_imx6.o /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/ddr3_freq_imx6.S

source_arch/arm/mach-imx/ddr3_freq_imx6.o := /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/ddr3_freq_imx6.S

deps_arch/arm/mach-imx/ddr3_freq_imx6.o := \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cache/l2x0.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/stringify.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/linkage.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/smp_scu.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/hardware.h \
  arch/arm/include/generated/asm/sizes.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/sizes.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/sizes.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mxc.h \
    $(wildcard include/config/soc/imx1.h) \
    $(wildcard include/config/soc/imx21.h) \
    $(wildcard include/config/soc/imx25.h) \
    $(wildcard include/config/soc/imx27.h) \
    $(wildcard include/config/soc/imx31.h) \
    $(wildcard include/config/soc/imx35.h) \
    $(wildcard include/config/soc/imx51.h) \
    $(wildcard include/config/soc/imx53.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/types.h \
  arch/arm/include/generated/asm/types.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/types.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/int-ll64.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitsperlong.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/bitsperlong.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx51.h \
    $(wildcard include/config/sdma/iram.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx53.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx6.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx3x.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx31.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx35.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx2x.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx21.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx27.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx1.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx25.h \

arch/arm/mach-imx/ddr3_freq_imx6.o: $(deps_arch/arm/mach-imx/ddr3_freq_imx6.o)

$(deps_arch/arm/mach-imx/ddr3_freq_imx6.o):
