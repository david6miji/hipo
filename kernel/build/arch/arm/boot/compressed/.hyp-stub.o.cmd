cmd_arch/arm/boot/compressed/hyp-stub.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/boot/compressed/.hyp-stub.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -include asm/unified.h -msoft-float -DZIMAGE   -c -o arch/arm/boot/compressed/hyp-stub.o arch/arm/boot/compressed/hyp-stub.S

source_arch/arm/boot/compressed/hyp-stub.o := arch/arm/boot/compressed/hyp-stub.S

deps_arch/arm/boot/compressed/hyp-stub.o := \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/arm/arch/timer.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
    $(wildcard include/config/modules.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stringify.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/linkage.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/assembler.h \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/hwcap.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/hwcap.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/opcodes-virt.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/virt.h \
    $(wildcard include/config/arm/virt/ext.h) \

arch/arm/boot/compressed/hyp-stub.o: $(deps_arch/arm/boot/compressed/hyp-stub.o)

$(deps_arch/arm/boot/compressed/hyp-stub.o):
