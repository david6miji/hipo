cmd_drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.o := /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux//bin/arm-linux-gnueabihf-gcc -Wp,-MD,drivers/mxc/gpu-viv/hal/kernel/arch/.gc_hal_kernel_context.o.d  -nostdinc -isystem /opt/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/../lib/gcc/arm-linux-gnueabihf/4.9.2/include -I/work/kernel/linux-imx6_3.10.53/arch/arm/include -Iarch/arm/include/generated  -I/work/kernel/linux-imx6_3.10.53/include -Iinclude -I/work/kernel/linux-imx6_3.10.53/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/work/kernel/linux-imx6_3.10.53/include/uapi -Iinclude/generated/uapi -include /work/kernel/linux-imx6_3.10.53/include/linux/kconfig.h  -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv -Idrivers/mxc/gpu-viv -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -mabi=aapcs-linux -mno-thumb-interwork -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -DgcdDEFAULT_CONTIGUOUS_SIZE=134217728 -DLINUX_CMA_FSL=1 -Werror -DLINUX -DDRIVER -DDBG=0 -DUSE_PLATFORM_DRIVER=1 -DVIVANTE_PROFILER=1 -DVIVANTE_PROFILER_CONTEXT=1 -DENABLE_GPU_CLOCK_BY_DRIVER=0 -DUSE_NEW_LINUX_SIGNAL=0 -DgcdPAGED_MEMORY_CACHEABLE=0 -DgcdNONPAGED_MEMORY_CACHEABLE=0 -DgcdNONPAGED_MEMORY_BUFFERABLE=1 -DgcdCACHE_FUNCTION_UNIMPLEMENTED=0 -DgcdSMP=1 -DgcdENABLE_3D=1 -DgcdENABLE_2D=1 -DgcdENABLE_VG=1 -DgcdENABLE_OUTER_CACHE_PATCH=1 -DgcdENABLE_BANK_ALIGNMENT=1 -DgcdBANK_BIT_START=13 -DgcdBANK_BIT_END=15 -DgcdBANK_CHANNEL_BIT=12 -DgcdFPGA_BUILD=0   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/arch   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/os/linux/kernel   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/os/linux/kernel/allocator/freescale   -I/work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/archvg    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(gc_hal_kernel_context)"  -D"KBUILD_MODNAME=KBUILD_STR(galcore)" -c -o drivers/mxc/gpu-viv/hal/kernel/arch/.tmp_gc_hal_kernel_context.o /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.c

source_drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.o := /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.c

deps_drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.o := \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_rename.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_types.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_version.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_options.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/sync.h) \
  include/generated/uapi/linux/version.h \
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
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_enum.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_base.h \
    $(wildcard include/config/format/info.h) \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_dump.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_profiler.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_driver.h \
    $(wildcard include/config/android/reserved/memory/account.h) \
    $(wildcard include/config/power/management.h) \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_driver_vg.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_statistics.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_vg.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/gc_hal_kernel.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_hardware.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/archvg/gc_hal_kernel_hardware_vg.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_driver.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/gc_hal_kernel_vg.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.h \
  /work/kernel/linux-imx6_3.10.53/drivers/mxc/gpu-viv/hal/kernel/inc/gc_hal_kernel_buffer.h \

drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.o: $(deps_drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.o)

$(deps_drivers/mxc/gpu-viv/hal/kernel/arch/gc_hal_kernel_context.o):
