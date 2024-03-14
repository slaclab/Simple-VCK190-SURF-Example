# Simple-VCK190-SURF-Example

There instructions were developed using Vivado 2023.1 and assumes you already have 
the licensing and setup script loaded to run vivado

1) 1-time step to add lfs to your ~/.gitconfig
```bash
git-lfs install
```

2) Clone the rep
```bash
git clone --recursive https://github.com/slaclab/Simple-VCK190-SURF-Example.git
```

3) Create the build directory 
```bash
mkdir Simple-VCK190-SURF-Example/firmware/build
```

4) Go to target directory
```bash
cd Simple-VCK190-SURF-Example/firmware/targets/Vck190Fifo
```

There are two option for building:

5A) Option#1: Batch mode (no GUI)
```bash
make
```

5B) Option#2: GUI mode then click on "Generate Device Image"
```bash
make gui
```

Both options will result in a .pdi file dumped in the target's image directory ...
```bash
Bootgen Completed Successfully.
INFO: [Vivado 12-1842] Bitgen Completed Successfully.
INFO: [Common 17-83] Releasing license: Implementation
148 Infos, 3 Warnings, 0 Critical Warnings and 0 Errors encountered.
write_device_image completed successfully
write_device_image: Time (s): cpu = 00:01:05 ; elapsed = 00:01:10 . Memory (MB): peak = 8916.426 ; gain = 2151.977 ; free physical = 45715 ; free virtual = 53357
source /u/re/ruckman/projects/SimpleExamples/Simple-VCK190-SURF-Example/firmware/submodules/ruckus/vivado/run/post/gui_write.tcl
PDI file copied to /u/re/ruckman/projects/SimpleExamples/Simple-VCK190-SURF-Example/firmware/targets/Vck190Fifo/images/Vck190Fifo-0x01000000-20240314084700-ruckman-5dfb921.pdi
No Debug Probes found
INFO: [Common 17-206] Exiting Vivado at Thu Mar 14 08:59:44 2024...
```
