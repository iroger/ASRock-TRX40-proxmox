# ASRock-TRX40-proxmox
A macOS Catalina project running on Proxmox VM with hardware passthrough for ASRock TRX40 motherboard

I started this project based on the well known video on the Ultimate Hackintosh but didn't want to wait the instructions (forever), I found a post by @Fabiosun on MAcOS86.it https://www.macos86.it/topic/2509-guide-trx40-osx-bare-metal-proxmox-setup62-1-updated-12-05-2020/ which gave a good starting point and loads of info but still ran into HW specific issues so decided to keep track of my config files and share it with the community.

# HW Config:
Motherboard:		ASRock TRX40 Creator, BIOS 1.06
Video:			Radeon VII in PCIe slot 1
Memory:		G.Skill DDR4 Ripjaws-V 4x32GB 3200Mhz [F4-3200C16Q-128GVK]
Power supply:		Corsair HX1200i

# SW Config:
Proxmox 6.2-1
MacOs 10.15.5
