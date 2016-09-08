cmd_drivers/video/of_videomode.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,drivers/video/.of_videomode.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h  -I/work/kernel/linux-imx6_3.10.53/drivers/video -Idrivers/video -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(of_videomode)"  -D"KBUILD_MODNAME=KBUILD_STR(of_videomode)" -c -o drivers/video/.tmp_of_videomode.o /work/kernel/linux-imx6_3.10.53/drivers/video/of_videomode.c

source_drivers/video/of_videomode.o := /work/kernel/linux-imx6_3.10.53/drivers/video/of_videomode.c

deps_drivers/video/of_videomode.o := \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/bitops.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/kref.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/stringify.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/linkage.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/lib/gcc/arm-linux-gnueabihf/4.9.2/include/stdarg.h \
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
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/kernel.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/sysinfo.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/div64.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/compiler.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/atomic.h \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/cmpxchg-local.h \
  /work/kernel/linux-imx6_3.10.53/include/asm-generic/atomic-long.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/const.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/spinlock_types.h \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/spinlock.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/spinlock_types.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rwlock_types.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/spinlock.h \
    $(wildcard include/config/preempt.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/bottom_half.h \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/mod_devicetable.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/uuid.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/uuid.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/bitmap.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
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
  /work/kernel/linux-imx6_3.10.53/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/seqlock.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
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
    $(wildcard include/config/rcu/nocb/cpu.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/completion.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/rcutree.h \
  /work/kernel/linux-imx6_3.10.53/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /work/kernel/linux-imx6_3.10.53/include/linux/math64.h \
  /work/kernel/linux-imx6_3.10.53/include/uapi/linux/time.h \
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
  /work/kernel/linux-imx6_3.10.53/arch/arm/include/asm/prom.h \
  /work/kernel/linux-imx6_3.10.53/include/video/display_timing.h \
  /work/kernel/linux-imx6_3.10.53/include/video/of_display_timing.h \
  /work/kernel/linux-imx6_3.10.53/include/video/of_videomode.h \
  /work/kernel/linux-imx6_3.10.53/include/video/videomode.h \

drivers/video/of_videomode.o: $(deps_drivers/video/of_videomode.o)

$(deps_drivers/video/of_videomode.o):
