# ASRock-TRX40-proxmox
A macOS Catalina project running on Proxmox VM with hardware passthrough for ASRock TRX40 motherboard

I started this project based on the well known video on the Ultimate Hackintosh but didn't want to wait the instructions (forever), I found a post by @Fabiosun on MAcOS86.it https://www.macos86.it/topic/2509-guide-trx40-osx-bare-metal-proxmox-setup62-1-updated-12-05-2020/ which gave a good starting point and loads of info but still ran into HW specific issues so decided to keep track of my config files and share it with the community.

## HW Config:
* Motherboard:		ASRock TRX40 Creator, BIOS 1.63 Beta
* Video:			Radeon VII in PCIe slot 1
* Memory:		    G.Skill DDR4 Ripjaws-V 4x32GB 3200Mhz [F4-3200C16Q-128GVK]
* WiFi / BT:        Swapped AX200 for a Broadcom BCM94360NG
* Storage:          Corsair MP600 2TB NVME
* Proxmox:          On external USB SSD disk on port 8
* Power supply:		Corsair HX1200i

## BIOS settings
* Start with default UEFI settings
* Set XMP profile for your RAM
* Tweak FAN settings
* Advanced>Onboard Devices Configuration>SR-IOV Support>Enabled
* Advanced>AMD CBS>NBIO Common Options>IOMMU>Enabled
* Advanced>AMD CBS>NBIO Common option>Enable AER Cap>Enable
* Advanced>AMD CBS>NBIO Common option>ACS Enable>Enable
 
## SW Config:
* Proxmox 6.2-6
* MacOs 10.15.5

## Done:
* Check grub setting video=vesafb:off,efifb:off.  Doesn't seem to help with video error
* Check moving proxmox disc to ASMedia controller and pass other USB controllers. Works, also passing USB controllers works but system locks up after reboot and needs power cycle to recover.
* Swapped Wifi / BT for MacOS compatible one, airdrop/handoff/apple watch unlock all working. More details here: https://www.macos86.it/topic/2675-proxmox-ve-osx-guide-discussion/?do=findComment&comment=76704


## ToDo:
* Fix AMD Reset Bug
* Fix Dr Debug 99 error on reboot when passing USB controllers to VM, even with above BIOS settings not solved
