# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=MeowKernel by Meow | Modified by @deadlylxrd
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=1
device.name1=lisa
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=0;
no_block_display=1;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

# F2FS Optimization removed for ADB Sideload compatibility.
# This logic relies on specific kernel sysfs nodes and mounted /data
# which are often unavailable or behave differently in Recovery mode,
# causing the installer to crash.

## AnyKernel boot install
dump_boot;

write_boot;
## end boot install
