cmd_arch/arm/mach-imx/tzic.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/mach-imx/.tzic.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h  -I/work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx -Iarch/arm/mach-imx -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(tzic)"  -D"KBUILD_MODNAME=KBUILD_STR(tzic)" -c -o arch/arm/mach-imx/.tmp_tzic.o /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/tzic.c

source_arch/arm/mach-imx/tzic.o := /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/tzic.c

deps_arch/arm/mach-imx/tzic.o := \
    $(wildcard include/config/fiq.h) \
    $(wildcard include/config/pm.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/module.h \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/const.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stat.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/stat.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/stat.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
  /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/lib/gcc/arm-linux-gnueabihf/4.9.2/include/stdarg.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stringify.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/bitops.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bitops.h \
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
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/seqlock.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/bug.h \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/bottom_half.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/spinlock_types.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/spinlock_types.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rwlock_types.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/spinlock.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/hw_breakpoint.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/rwlock.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/atomic.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/cmpxchg-local.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/atomic-long.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/math64.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/time.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/highuid.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/kmod.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/current.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/wait.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/bitmap.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/page-flags-layout.h \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  include/generated/bounds.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/glue.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/pgtable-2level-types.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/sizes.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/memory_model.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/getorder.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/notifier.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rwsem-spinlock.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/srcu.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/completion.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rcutree.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/jiffies.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/timex.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/timex.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/param.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/smp.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/pfn.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/percpu.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/percpu.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/topology.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rbtree.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/sysctl.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/elf.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/elf.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/user.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/elf.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/elf-em.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/kobject.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/sysfs.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/kobject_ns.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/kref.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/tracepoint.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/static_key.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/ioport.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/klist.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/pinctrl/devinfo.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/pinctrl/consumer.h \
    $(wildcard include/config/pinconf.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/err.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/seq_file.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/pinctrl/pinctrl-state.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/ratelimit.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/pm_wakeup.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/io.h \
    $(wildcard include/config/has/ioport.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/irqdomain.h \
    $(wildcard include/config/irq/domain.h) \
    $(wildcard include/config/of/irq.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/radix-tree.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/proc/devicetree.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/mod_devicetable.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/uuid.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/uuid.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/prom.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/mach/irq.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/irq.h \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/irqreturn.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/irqnr.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/irqnr.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  arch/arm/include/generated/asm/irq_regs.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/irq_regs.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/hw_irq.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/exception.h \
    $(wildcard include/config/function/graph/tracer.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/ftrace.h \
    $(wildcard include/config/have/function/trace/mcount/test.h) \
    $(wildcard include/config/function/tracer.h) \
    $(wildcard include/config/dynamic/ftrace/with/regs.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
    $(wildcard include/config/stack/tracer.h) \
    $(wildcard include/config/frame/pointer.h) \
    $(wildcard include/config/ftrace/syscalls.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/trace_clock.h \
  arch/arm/include/generated/asm/trace_clock.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/trace_clock.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/kallsyms.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/ptrace.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/mm/owner.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/sched.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/capability.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/capability.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/auxvec.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/auxvec.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  arch/arm/include/generated/asm/cputime.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/cputime_jiffies.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/sem.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/sem.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/ipc.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/sembuf.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/signal.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/signal.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/signal.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/signal-defs.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/siginfo.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/siginfo.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/pid.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/proportions.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/percpu_counter.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/seccomp.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/rculist.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/resource.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/resource.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/resource.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/timerqueue.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/latencytop.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/key.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/pid_namespace.h \
    $(wildcard include/config/pid/ns.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/mm.h \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/range.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/bit_spinlock.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/shrinker.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/proc-fns.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7.h) \
    $(wildcard include/config/cpu/pj4b.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/pgtable-nopud.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/pgtable-hwdef.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/pgtable-2level.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/pgtable.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/huge_mm.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/vm_event_item.h \
    $(wildcard include/config/migration.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/nsproxy.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/ptrace.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/fs/xip.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/kdev_t.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/kdev_t.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/dcache.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/rculist_bl.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/list_bl.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/path.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/semaphore.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/fiemap.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/migrate_mode.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/percpu-rwsem.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/fs.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/limits.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/ioctl.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/ioctl.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/dqblk_xfs.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/dqblk_v1.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/dqblk_v2.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/dqblk_qtree.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/projid.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/quota.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/nfs_fs_i.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/fcntl.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/fcntl.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi/asm/fcntl.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/asm-generic/fcntl.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/ftrace.h \
    $(wildcard include/config/old/mcount.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/common.h \
    $(wildcard include/config/have/imx/src.h) \
    $(wildcard include/config/neon.h) \
    $(wildcard include/config/cache/l2x0.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/hardware.h \
  arch/arm/include/generated/asm/sizes.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/sizes.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mxc.h \
    $(wildcard include/config/soc/imx1.h) \
    $(wildcard include/config/soc/imx21.h) \
    $(wildcard include/config/soc/imx25.h) \
    $(wildcard include/config/soc/imx27.h) \
    $(wildcard include/config/soc/imx31.h) \
    $(wildcard include/config/soc/imx35.h) \
    $(wildcard include/config/soc/imx51.h) \
    $(wildcard include/config/soc/imx53.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/mx51.h \
    $(wildcard include/config/sdma/iram.h) \
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
  /work/kernel/linux-imx6_3.10.53/arch/arm/mach-imx/irq-common.h \

arch/arm/mach-imx/tzic.o: $(deps_arch/arm/mach-imx/tzic.o)

$(deps_arch/arm/mach-imx/tzic.o):
