YUMI (Your Universal Multiboot Installer) ©2011-2013 Lance http://www.pendrivelinux.com (covered under GNU GPL License) - see YUMI-Copying

Background of YUMI (Your Universal Multiboot Installer):

YUMI is an easy to use installer script created using NSIS. YUMI's purpose is to help automate the creation of a bootable USB Flash Drive that can be used to boot multiple Linux based distributions (one at a time).
The end result should be a bootable USB Flash drive that will get you up and running with your chosen Live Distributions, all without having to do the research and perform the steps by hand. 
My work consists of creating/maintaining the YUMI scripts, initial creation/changes and continued maintenance of the menu entries, adding suggested entries, and testing to make sure the distributions boot.  

How YUMI Works:

YUMI utilizes a Syslinux MBR to make the chosen drive bootable. Distributions are extracted using 7zip to the multiboot folder on the USB device, and a custom syslinux.cfg file along with distro independant configuration files are used to boot each distribution. Grub4DOS grub.exe may also be used to boot ISO files directly. 

Credits, Resources, and Third Party Tools used:

* Remnants of Cedric Tissieres's Tazusb.exe for Slitaz (slitaz@objectif-securite.ch) may reside in the YUMI script, as it was derived from UUI, which was inspired by Tazusb.exe. 
* Created with NSIS Installer © Contributors http://nsis.sourceforge.net (needed to compile the YUMI.nsi script)  
* Syslinux © H. Peter Anvin http://syslinux.zytor.com (unmodified binary used)
* grub.exe Grub4DOS © the Gna! people + Chenall https://code.google.com/p/grub4dos-chenall/ (unmodified binary used) : Official Grub4DOS: http://gna.org/projects/grub4dos/
* 7-Zip is © Igor Pavlovis http://7-zip.org (unmodified binaries were used)
* Fat32format.exe © Tom Thornhill Ridgecorp Consultants http://www.ridgecrop.demon.co.uk (unmodified binary used)
* Firadisk.img © Panot Joonkhiaw Karyonix http://reboot.pro/8804/

Additional instructions for YUMI can be found HERE: http://www.pendrivelinux.com/yumi-multiboot-usb-creator/

Changelog:

02/25/13 Version 0.0.8.9: Update to support Ubuntu 12.04.2, and Windows Defender Offline (Submitted by Vinny Valdez). Correct Spelling of Offline NT Password & Registry Editor. Switch back to Syslinux 4.06-pre7 to fix "Insane primary (MBR) partition. Can’t find myself on the drive I booted from" error.
02/18/13 Version 0.0.8.8: Update to support Deft 7.2, F-Secure Rescue CD 3.16-52606, Ubuntu 13.04, Ubuntu Secure Remix 12.10, Crunchbang 11, XBMCbuntu 12, and Archlinux 2013.02.01. Fix Ubuntu Studio 12.10 entry.
01/18/13 Version 0.0.8.7: Correct all Fedora 18 entries to use newer boot options.  
01/17/13 Version 0.0.8.6: Update to support Fedora 18, Archlinux 2013.01.04, CentOS 6.3, Dr Web Live CD 6.0.2, Pear Linux 6.1, and KXStudio 12.04.1. Fix Debian Live 6 KDE 64bit option.
01/14/13 Version 0.0.8.5: Update to support Comodo Rescue Disk and Tails 0.16.
01/10/13 Version 0.0.8.4: Fixed broken LMDE 201204 Install options. Update to support HDT 5.2, and Debian Live 6.0.6. Correct several dead links.
12/24/12 Version 0.0.8.3: Update to support Ultimate Edition 3.5, Netrunner 12.12, Fuduntu 2012.4, and Sugar on a Stick based on Fedora 17.
12/17/12 Version 0.0.8.2: Update to support SLAX 7, GRML, and Boot Repair Disk. Moved Fatdog64 entries to Puppy section.
12/10/12 Version 0.0.8.1: Update to support Linux Mint 14.x variants, and TAILS 0.15.
11/27/12 Version 0.0.8.0: Update to support newer Panda Safe CD, Redo Backup 1.0.4, GDATA Rescue/Boot CD, Webconverger 15.1, Racy Puppy 5.3, Precise Puppy 5.4.1, Slacko 5.3.3, DPup Exprimo, and Linux Mint 14.
11/13/12 Version 0.0.7.9: Update to support Zorin OS Lite 6.1 32/64 bit, Peppermint OS 32/64 bit, Cent OS 6.3, Hiren's 15.2, and AOSS CD.
10/29/12 Version 0.0.7.8: Correct Lubuntu 12.10 amd64 menu entry. Added support for Ubuntu Studio 12.10.
10/24/12 Version 0.0.7.7: Update to support Precise Puppy, PinguyOS, Pear Linux 6, and Tails 0.14. Updated to use Syslinux 4.06 and 7zip 920.
10/19/12 Version 0.0.7.6: Update to support Edubuntu, Ubuntu, Kubuntu, Lubuntu, and Xubuntu 12.10.
10/10/12 Version 0.0.7.5: Update to support Windows XP Install from USB via ISO (Kudos to Alexandr Zarubkin for suggestion). Update Debian Live entries to support 6.0.5.
09/26/12 Version 0.0.7.4: Update to fix Hirens 15.1 entry.
09/21/12 Version 0.0.7.3: Update to use Syslinux 4.06-pre7 for better boot support. Update to support DBAN 2.2.7. 
09/18/12 Version 0.0.7.2: Update to support System Rescue CD 3.0.0 (via fat32 formatted USB only!). Added FatDog64.
09/05/12 Version 0.0.7.1: Added Scientific Linux CERN 6.3 and WifiSlax entries. Update to support Lucid Puppy v5.2.8, Archlinux 2012.08.04, Liberte 2012.3.
08/25/12 Version 0.0.7.0: Update to support Ubuntu, Edubuntu, Xubuntu, Kubuntu 12.04.1.
08/17/12 Version 0.0.6.9: Force YUMI to remember Drive Letter on subsequent ISO/Distro installs.
08/15/12 Version 0.0.6.8: Added HP Automatic Firmware Update 10.10 (DVD) entry. Re-Enabled built in Fat32 Format Option per request.
08/11/12 Version 0.0.6.7: Fixed various removal bugs. Added AntiX entry.
08/02/12 Version 0.0.6.6: Added Ubuntu 12.10 Daily Build. Removed Internal Format Option (not necessary). Fix Linux Mint 13 Cinnamon removal bug.
07/25/12 Version 0.0.6.5: Added Peppermint Three, KXStudio 12.04, Linux Mint 13 KDE + XFCE entries. Fixed Debian 6.04 XFCE entry.
07/02/12 Version 0.0.6.4: Added Semplice, and Ophcrack no-tables entry. Update to support Knoppix 6.7.1 CD. Fix Liberte config to support multiple revisions. Fix Tinycore boot issue.
06/19/12 Version 0.0.6.3: Update to support TAILS 0.12, and Liberte 2012.2. Correct missing .cfg issue with OpenSUSE.
06/09/12 Version 0.0.6.2: Added Liberte, Knoppix 7 DVD, Web Converger, and Debian Live 6.0.4 64bit entries. Shorten cfg files to <=8 characters to prevent potential boot issues.
05/30/12 Version 0.0.6.1: Added Kubuntu DVD, and Fedora 17 entries. Updated to support Ophcrack 3.4.0. Fix Backtrack 5 Removal option. 
05/21/12 Version 0.0.6.0: Added Wifiway 3.4, and Linux Mint 13 Mate and Cinnamon entries.
05/11/12 Version 0.0.5.9: Added Edubuntu, Ubuntu Studio 12.04 entries.
05/01/12 Version 0.0.5.8: Rename Linux Mint entries to avoid confusion. Update Porteus entry. Add Pear OS, Linux Live tools for OCZ, Linux Mint 12 LXDE, and Ubuntu DVD 12.04 entries.
04/27/12 Version 0.0.5.7: Fix broken 64bit Kubuntu, Xubuntu, and Lubuntu 12.04 entries. Added Ubuntu Server 12.04 entry.
04/26/12 Version 0.0.5.6: Added Mythbuntu, Ubuntu, Kubuntu, Xubuntu, and Lubuntu 12.04 entries. Update Debian Live and Linux Mint Debian/XFCE entries.
04/17/12 Version 0.0.5.5: Added Deft Linux 7, Matriux, and Terralinux entires.
04/12/12 Version 0.0.5.4: Added Netrunner 4.1, XBMCbuntu 11.0, and OSGeo Live entries. Updated to support newer TinyCore 4.x, and SliTaZ 4.0. Modified Hiren's entry to use ISO instead of Zip. 
04/05/12 Version 0.0.5.3: Reenable Kaspersky Rescue Disk 10 entry. 
04/04/12 Version 0.0.5.2: Added Archlinux and Windows 8 entries 
03/21/12 Version 0.0.5.1: Updated Acronis Antimalware CD entry.
03/08/12 Version 0.0.5.0: Added NTFS support via the use of Syslinux 4.06.
03/05/12 Version 0.0.4.9: Fix Kubuntu 10.04 and Rescatux entries. Added BackBox entry.
02/27/12 Version 0.0.4.8: Fix HP Firmware Maintenance CD option and add 32 bit version entries.
02/23/12 Version 0.0.4.7: Fixed broken OpenSUSE 12.1 KDE and Gnome 64 bit entries.
02/17/12 Version 0.0.4.6: Update Dr.Web and clonezilla entries. Remove broken Kaspersky Rescue Disk Entry.
02/13/12 Version 0.0.4.5: Fixed OpenSUSE "No Devices Matches MBR Identifier" error.
02/08/12 Version 0.0.4.4: Added F-Secure Rescue CD, Fuduntu, Slacko Puppy 5.3, HP SmartStart 8.60 + 8.70, HP Firmware Maintenance 8.70 (CD), and HP Automatic Firmware Update 9.30 (DVD) entries.
02/07/12 Version 0.0.4.3: Update to support Linux Mint 12 KDE and newer System Rescue CD, CAELinux, and Bohdi versions. 
01/22/12 Version 0.0.4.2: Added Ultimate Edition 3 entry. Correct Sources Directory conflict between Windows and Ubuntu based Distros for existing or new YUMI creations. 
01/16/12 Version 0.0.4.1: Fix Sources Directory conflict between Windows and Ubuntu based Distributions (kudo's to Jeremy Schatten for the suggested fix).
01/10/12 Version 0.0.4.0: Added Mandriva 2011 and Ubuntu 12.04 entry. Correct broken links. Update sources. 
01/05/12 Version 0.0.3.9: Wildcard CentOS entry. Added Debian KDE, LXDE, XFCE entries. Fixed Fedora 16 KDE menu entry removal bug. Fixed Kaspersky Rescue Disk entry to prevent hanging at scanning for pata_qdi. Added Back to Main Menu option for Directly Bootable ISOs.
12/15/11 Version 0.0.3.8: Updated to support Pinguy OS 11.04.1. Added Racy Puppy. Switch to syslinux 4.05.
11/30/11 Version 0.0.3.7: Correct issue with incorrect Ubuntu Server 11.10 download link. Updated to support Linux Mint 12 and Parted Magic 20111124.
11/17/11 Version 0.0.3.6: Added OpenSUSE 12.1 entries. Fixed bug with removing Dr.Web Live entry.
11/13/11 Version 0.0.3.5: Added Zorin Linux entry.
11/03/11 Version 0.0.3.4: Reduced size limit for Windows ISOs - 300MB. Updated to support Fedora 16 distributions.
10/26/11 Version 0.0.3.3: Updated to support 32/64 bit LTR 10.04.3 Ubuntu and Kubuntu, CentOS 64bit, and latest stable Clonezilla.
10/14/11 Version 0.0.3.2: Updated to support Trinity Rescue Kit 3.4 build 372, and Ubuntu, Kubuntu, Xubuntu, Lubuntu 11.10 64 bit.
10/14/11 Version 0.0.3.1: Updated to support Ubuntu, Edubuntu, Kubuntu, Xubuntu, Lubuntu 11.10.
10/10/11 Version 0.0.3.0: Updated to support new WifiWay, Knoppix, TinyCore, and Redo Backup. Fix broken Dr.Web entry.
09/15/11 Version 0.0.2.9: Updated Partition Wizard 7 and SystemRescueCD entries. Added Dr.Web Live CD.
08/27/11 Version 0.0.2.8: Added Bodhi and CAELinux (Computer Aided Engineering) Linux entries. Updated to support Lucid Puppy 5.2.8, Wary Puppy 5.1.3, and Ultimate Boot CD 5.1.1.
08/23/11 Version 0.0.2.7: Allow selection of either CD or DVD Linux Mint 11 ISOs, Update to support Backtrack 5 R1, and XBMC.
08/01/11 Version 0.0.2.6: Warn that a MULTIBOOT Label is created. Added CentOS, and Rescatux entries.
07/24/11 Version 0.0.2.5: Fixed Puppy Linux to allow saving. Added DRBL (Diskless Remote Boot in Linux).
07/03/11 Version 0.0.2.4: Fixed Porteus Entry.
06/22/11 Version 0.0.2.3: Fix System Rescue CD Entry and wildcard it's ISO.
06/17/11 Version 0.0.2.2: Correct puppy cfg file. Moved RIP Linux to system tools. Added Saline OS, and Peppermint 2 menu entries.
06/13/11 Version 0.0.2.1: Added Porteus Linux entry. Rename TEMP to TEMPYUMI.
06/08/11 Version 0.0.2.0: Fixed wildcard issues. You must browse to and select the distro you wish to use if it's entry is wildcarded.
06/02/11 Version 0.0.1.9: Fixed incomplete operation when adding Fedora 15 GNOME 32bit.
06/02/11 Version 0.0.1.8: Added Linux Mint Debian, Sn0wL1nuX 11 64bit, all Fedora 15 32/64bit, and all OpenSUSE 11.4 32/64bit entries. Updated Redo Backup entry.
05/27/11 Version 0.0.1.7: Added Linux Mint 11 and Wary Puppy 5.1.2 entries. Updated HDT 5.0, Partition Wizard 6, Offline NT Password and Recovery, Puppy Linux 5.2.5 entries. Fixed detection of OpenSUSE.
05/25/11 Version 0.0.1.6: Added Pinguy OS 11.04 and Sn0wL1nuX 11 entries. Updated to support to Fedora 15. Switch to use new Syslinux 4.04.
05/22/11 Version 0.0.1.5: Added Ubuntu, Xubuntu, Kubuntu amd64 and missing 10.04LTS entries.
05/20/11 Version 0.0.1.4: Added Fedora 14 entry.
05/14/11 Version 0.0.1.3: Added ability to Uninstall Items, Added BackTrack 5 and WifiWay entries.
05/04/11 Version 0.0.1.2: Added OpenSUSE 11.4, G Data Antivirus. Added Ubuntu, Xubuntu, Kubuntu, Edubuntu 11.04. Updated Gparted and Parted Magic entries to support latest versions.
04/14/11 Version 0.0.1.1: Added Kon-Boot entry, fixed Edubuntu config.
04/03/11 Version 0.0.1.0: Added Acronis Rescue CD entry, fixed Memtest entry, copy Ophcrack tables to root directory of USB, updated Easus Disk Copy entry. Corrected grammar error.
03/28/11 Version 0.0.0.9: Added Crunchbang entry.
03/25/11 Version 0.0.0.8: Removed Wildcard from HDT (Hardware Detection Tool) entry. Updated DBAN entry to support newest version.
03/24/11 Version 0.0.0.7: Corrected HDT (Hardware Detection Tool) entry.
03/23/11 Version 0.0.0.6: Corrected WifiWay links, fixed Redo Backup config menu entry.
03/22/11 Version 0.0.0.5: Added WifiWay entry.
03/18/11 Version 0.0.0.4: Added DBAN(must use version 1.0.7), and Try an Unlisted ISO (from memory) Entries. Fixed Windows Vista/7 Entries to resolve the boot error after finishing install (make sure to remove the usb device after first reboot!).
03/17/11 Version 0.0.0.3: Added Ultimate Boot CD, and Backtrack 4 RC2 Entries. Updated to support GParted 0.8.0.3. Added capability to "Try an Unlisted ISO" (as many as you want). Removed ISOFiles folder creation, now you can simply run YUMI from where you store your ISOs and it will autodetect them. 
03/15/11 Version 0.0.0.2: Fixed FreeDOS entry. Added to check if old MultibootISOs tool was used on the drive, if so prompt to format.
03/13/11 Version 0.0.0.1: Initial ALPHA Release.