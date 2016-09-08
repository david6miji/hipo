cmd_drivers/video/videomode.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,drivers/video/.videomode.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h  -I/work/kernel/linux-imx6_3.10.53/drivers/video -Idrivers/video -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(videomode)"  -D"KBUILD_MODNAME=KBUILD_STR(videomode)" -c -o drivers/video/.tmp_videomode.o /work/kernel/linux-imx6_3.10.53/drivers/video/videomode.c

source_drivers/video/videomode.o := /work/kernel/linux-imx6_3.10.53/drivers/video/videomode.c

deps_drivers/video/videomode.o := \
  /work/kernel/linux-imx6_3.10.53/include/linux/errno.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/errno.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/errno-base.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /work/kernel/linux-imx6_3.10.53/include/video/display_timing.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/bitops.h \
  arch/arm/include/generated/asm/types.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/types.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/int-ll64.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/bitsperlong.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/typecheck.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/irqflags.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/hwcap.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/hwcap.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stddef.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/stddef.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/types.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/posix_types.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/posix_types.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/posix_types.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/non-atomic.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/fls64.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/sched.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/hweight.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/arch_hweight.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/const_hweight.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/lock.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/le.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/byteorder.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/byteorder/little_endian.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/byteorder/little_endian.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/swab.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/swab.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/swab.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/swab.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/byteorder/generic.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /work/kernel/linux-imx6_3.10.53/include/video/videomode.h \

drivers/video/videomode.o: $(deps_drivers/video/videomode.o)

$(deps_drivers/video/videomode.o):
