cmd_lib/iovec.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,lib/.iovec.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h  -I/work/kernel/linux-imx6_3.10.53/lib -Ilib -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(iovec)"  -D"KBUILD_MODNAME=KBUILD_STR(iovec)" -c -o lib/.tmp_iovec.o /work/kernel/linux-imx6_3.10.53/lib/iovec.c

source_lib/iovec.o := /work/kernel/linux-imx6_3.10.53/lib/iovec.c

deps_lib/iovec.o := \
  /work/kernel/linux-imx6_3.10.53/include/linux/uaccess.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
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
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/posix_types.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stddef.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/stddef.h \
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
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/posix_types.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/posix_types.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stringify.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/smp.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/lib/gcc/arm-linux-gnueabihf/4.9.2/include/stdarg.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/bitops.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bitops.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/typecheck.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/irqflags.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/hwcap.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/hwcap.h \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/kern_levels.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/dynamic_debug.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/string.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/string.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/errno.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/errno.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/errno-base.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/kernel.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/sysinfo.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/div64.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/compiler.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/const.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/uaccess.h \
    $(wildcard include/config/mmu.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/sizes.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/uio.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/uio.h \

lib/iovec.o: $(deps_lib/iovec.o)

$(deps_lib/iovec.o):
