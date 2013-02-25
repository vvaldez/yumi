; ------------ Uninstall Distros Macro --------------

!macro Uninstall_Distros  
 ${If} $DistroName == "PING (Partimg Is Not Ghost)"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\PING" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label PING (Partimg Is Not Ghost)" "APPEND /multiboot/menu/ping.cfg" 
 Delete "$BootDir\multiboot\menu\ping.cfg"
 
 ${ElseIf} $DistroName == "Archlinux" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\archlinux"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Archlinux" "APPEND /multiboot/menu/archlinux.cfg" 
 Delete "$BootDir\multiboot\menu\archlinux.cfg"    
 
 ${ElseIf} $DistroName == "Bodhi" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\bodhi"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Bodhi" "APPEND /multiboot/menu/bodhi.cfg" 
 Delete "$BootDir\multiboot\menu\bodhi.cfg"   
 
 ${ElseIf} $DistroName == "CAELinux (Computer Aided Engineering)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\caelinux"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label CAELinux (Computer Aided Engineering)" "APPEND /multiboot/menu/cae.cfg" 
 Delete "$BootDir\multiboot\menu\cae.cfg"    
 
 ${ElseIf} $DistroName == "Tails 0.13 (Anonymous Browsing)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\tails"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Tails (Anonymous Browsing)" "APPEND /multiboot/menu/tails.cfg"  
 Delete "$BootDir\multiboot\menu\tails.cfg"  
 
 ${ElseIf} $DistroName == "Tails 0.14 (Anonymous Browsing)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\tails014"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Tails 0.14 (Anonymous Browsing)" "APPEND /multiboot/menu/tails014.cfg"  
 Delete "$BootDir\multiboot\menu\tails014.cfg"  

 ${ElseIf} $DistroName == "Tails 0.15 (Anonymous Browsing)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\tails015"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Tails 0.15 (Anonymous Browsing)" "APPEND /multiboot/menu/tails015.cfg"  
 Delete "$BootDir\multiboot\menu\tails015.cfg" 

 ${ElseIf} $DistroName == "Tails (Anonymous Browsing)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\tails"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Tails (Anonymous Browsing)" "APPEND /multiboot/menu/tails.cfg"  
 Delete "$BootDir\multiboot\menu\tails.cfg"  
 
 ${ElseIf} $DistroName == "Liberte (Anonymous Browsing)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\liberte"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Liberte (Anonymous Browsing)" "APPEND /multiboot/menu/liberte.cfg"  
 Delete "$BootDir\multiboot\menu\liberte.cfg"   
 
 ${ElseIf} $DistroName == "CentOS"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\centos"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label CentOS" "APPEND /multiboot/menu/centos.cfg"   
 Delete "$BootDir\multiboot\menu\centos.cfg" 
 
 ${ElseIf} $DistroName == "CentOS 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\centos64"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label CentOS 64bit" "APPEND /multiboot/menu/centos64.cfg"   
 Delete "$BootDir\multiboot\menu\centos64.cfg" 
 
 ${ElseIf} $DistroName == "Rescatux"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\rescatux"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Rescatux" "APPEND /multiboot/menu/rescatux.cfg"   
 Delete "$BootDir\multiboot\menu\rescatux.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 15 GNOME 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15" "APPEND /multiboot/menu/fed15.cfg"   
 Delete "$BootDir\multiboot\menu\fed15.cfg"
 
 ${ElseIf} $DistroName == "Fedora 15 GNOME 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora64"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 64bit" "APPEND /multiboot/menu/fed1564.cfg"   
 Delete "$BootDir\multiboot\menu\fed1564.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 15 KDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE64"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 KDE 64bit" "APPEND /multiboot/menu/fed15K64.cfg"   
 Delete "$BootDir\multiboot\menu\fed15K64.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 15 KDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 KDE" "APPEND /multiboot/menu/fed15K.cfg"   
 Delete "$BootDir\multiboot\menu\fed15K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 15 LXDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 LXDE" "APPEND /multiboot/menu/fed15L.cfg"   
 Delete "$BootDir\multiboot\menu\fed15L.cfg"  

 ${ElseIf} $DistroName == "Fedora 15 LXDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE64"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 LXDE 64bit" "APPEND /multiboot/menu/fed15L64.cfg"   
 Delete "$BootDir\multiboot\menu\fed15L64.cfg"  

 ${ElseIf} $DistroName == "Fedora 15 XFCE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 XFCE" "APPEND /multiboot/menu/fed15X.cfg"   
 Delete "$BootDir\multiboot\menu\fed15X.cfg"  

 ${ElseIf} $DistroName == "Fedora 15 XFCE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE64"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 15 XFCE 64bit" "APPEND /multiboot/menu/fed15X64.cfg"   
 Delete "$BootDir\multiboot\menu\fed15X64.cfg"   
 
 ${ElseIf} $DistroName == "Fedora 16 GNOME 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora16"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16" "APPEND /multiboot/menu/fed16.cfg"   
 Delete "$BootDir\multiboot\menu\fed16.cfg"
 
 ${ElseIf} $DistroName == "Fedora 16 GNOME 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora6416"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 64bit" "APPEND /multiboot/menu/fed1664.cfg"   
 Delete "$BootDir\multiboot\menu\fed1664.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 16 KDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE6416"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 KDE 64bit" "APPEND /multiboot/menu/fed16K64.cfg"   
 Delete "$BootDir\multiboot\menu\fed16K64.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 16 KDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE16"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 KDE" "APPEND /multiboot/menu/fed16K.cfg"   
 Delete "$BootDir\multiboot\menu\fed16K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 16 LXDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE16"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 LXDE" "APPEND /multiboot/menu/fed16L.cfg"   
 Delete "$BootDir\multiboot\menu\fed16L.cfg"  

 ${ElseIf} $DistroName == "Fedora 16 LXDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE6416"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 LXDE 64bit" "APPEND /multiboot/menu/fed16L64.cfg"   
 Delete "$BootDir\multiboot\menu\fed16L64.cfg"  

 ${ElseIf} $DistroName == "Fedora 16 XFCE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE16"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 XFCE" "APPEND /multiboot/menu/fed16X.cfg"   
 Delete "$BootDir\multiboot\menu\fed16X.cfg"  

 ${ElseIf} $DistroName == "Fedora 16 XFCE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE6416"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 16 XFCE 64bit" "APPEND /multiboot/menu/fed16X64.cfg"   
 Delete "$BootDir\multiboot\menu\fed16X64.cfg" 

 ${ElseIf} $DistroName == "Fedora 17 GNOME 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora17"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17" "APPEND /multiboot/menu/fed17.cfg"   
 Delete "$BootDir\multiboot\menu\fed17.cfg"
 
 ${ElseIf} $DistroName == "Fedora 17 GNOME 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora6417"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 64bit" "APPEND /multiboot/menu/fed1764.cfg"   
 Delete "$BootDir\multiboot\menu\fed1764.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 17 KDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE6417"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 KDE 64bit" "APPEND /multiboot/menu/fed17K64.cfg"   
 Delete "$BootDir\multiboot\menu\fed17K64.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 17 KDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE17"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 KDE" "APPEND /multiboot/menu/fed17K.cfg"   
 Delete "$BootDir\multiboot\menu\fed17K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 17 LXDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE17"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 LXDE" "APPEND /multiboot/menu/fed17L.cfg"   
 Delete "$BootDir\multiboot\menu\fed17L.cfg"  

 ${ElseIf} $DistroName == "Fedora 17 LXDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE6417"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 LXDE 64bit" "APPEND /multiboot/menu/fed17L64.cfg"   
 Delete "$BootDir\multiboot\menu\fed17L64.cfg"  

 ${ElseIf} $DistroName == "Fedora 17 XFCE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE17"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 XFCE" "APPEND /multiboot/menu/fed17X.cfg"   
 Delete "$BootDir\multiboot\menu\fed17X.cfg"  

 ${ElseIf} $DistroName == "Fedora 17 XFCE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE6417"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 17 XFCE 64bit" "APPEND /multiboot/menu/fed17X64.cfg"   
 Delete "$BootDir\multiboot\menu\fed17X64.cfg"   

 ${ElseIf} $DistroName == "Fedora 18 GNOME 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora18"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18" "APPEND /multiboot/menu/fed18.cfg"   
 Delete "$BootDir\multiboot\menu\fed18.cfg"
 
 ${ElseIf} $DistroName == "Fedora 18 GNOME 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedora6418"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 64bit" "APPEND /multiboot/menu/fed1864.cfg"   
 Delete "$BootDir\multiboot\menu\fed1864.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 18 KDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE6418"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 KDE 64bit" "APPEND /multiboot/menu/fed18K64.cfg"   
 Delete "$BootDir\multiboot\menu\fed18K64.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 18 KDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraKDE18"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 KDE" "APPEND /multiboot/menu/fed18K.cfg"   
 Delete "$BootDir\multiboot\menu\fed18K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 18 LXDE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE18"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 LXDE" "APPEND /multiboot/menu/fed18L.cfg"   
 Delete "$BootDir\multiboot\menu\fed18L.cfg"  

 ${ElseIf} $DistroName == "Fedora 18 LXDE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraLXDE6418"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 LXDE 64bit" "APPEND /multiboot/menu/fed18L64.cfg"   
 Delete "$BootDir\multiboot\menu\fed18L64.cfg"  

 ${ElseIf} $DistroName == "Fedora 18 XFCE 32bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE18"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 XFCE" "APPEND /multiboot/menu/fed18X.cfg"   
 Delete "$BootDir\multiboot\menu\fed18X.cfg"  

 ${ElseIf} $DistroName == "Fedora 18 XFCE 64bit"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\fedoraXFCE6418"   
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fedora 18 XFCE 64bit" "APPEND /multiboot/menu/fed18X64.cfg"   
 Delete "$BootDir\multiboot\menu\fed18X64.cfg"  
 
 ${ElseIf} $DistroName == "Pinguy OS 11" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pinguy"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Pinguy OS 11.04" "APPEND /multiboot/menu/pguy1104.cfg" 
 Delete "$BootDir\multiboot\menu\pguy1104.cfg"  
 
 ${ElseIf} $DistroName == "Pinguy OS 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pinguy1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Pinguy OS 12.04" "APPEND /multiboot/menu/pguy1204.cfg" 
 Delete "$BootDir\multiboot\menu\pguy1204.cfg"   
 
 ${ElseIf} $DistroName == "Sn0wL1nuX 11" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\snowlinux"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Snowlinux 11.04" "APPEND /multiboot/menu/snow1104.cfg" 
 Delete "$BootDir\multiboot\menu\snow1104.cfg"   
 
 ${ElseIf} $DistroName == "Sn0wL1nuX 11 64bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\snowlinux64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Snowlinux 11.04 64bit" "APPEND /multiboot/menu/snow1164.cfg" 
 Delete "$BootDir\multiboot\menu\snow1164.cfg"  

 ${ElseIf} $DistroName == "KNOPPIX 6.7.1 CD" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\knoppix6"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label KNOPPIX 6" "APPEND /multiboot/menu/knoppix6.cfg"   
 Delete "$BootDir\multiboot\menu\knoppix6.cfg"   
 
 ${ElseIf} $DistroName == "KNOPPIX 7" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\knoppix"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label KNOPPIX" "APPEND /multiboot/menu/knoppix.cfg"   
 Delete "$BootDir\multiboot\menu\knoppix.cfg"  
 
 ${ElseIf} $DistroName == "Crunchbang" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\crunchbang"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Crunchbang" "APPEND /multiboot/menu/crunchbang.cfg"    
 Delete "$BootDir\multiboot\menu\crunchbang.cfg"   
 
 ${ElseIf} $DistroName == "Web Converger (Web Kiosk)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\webcon"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Web Converger" "APPEND /multiboot/menu/webcon.cfg"   
 Delete "$BootDir\multiboot\menu\webcon.cfg"  
 
 ${ElseIf} $DistroName == "Semplice Linux" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\semplice"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Semplice" "APPEND /multiboot/menu/semplice.cfg"   
 Delete "$BootDir\multiboot\menu\semplice.cfg"  

 ${ElseIf} $DistroName == "AntiX" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\antix"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label AntiX" "APPEND /multiboot/menu/antix.cfg"   
 Delete "$BootDir\multiboot\menu\antix.cfg" 
 
 ${ElseIf} $DistroName == "Boot Repair Disk" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\bootrepair"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Boot Repair Disk" "APPEND /multiboot/menu/bootrepair.cfg"   
 Delete "$BootDir\multiboot\menu\bootrepair.cfg"  
 
 ${ElseIf} $DistroName == "GRML (system rescue)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\grml"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label GRML" "APPEND /multiboot/menu/grml.cfg"   
 Delete "$BootDir\multiboot\menu\grml.cfg"  
 
 ${ElseIf} $DistroName == "Debian Live 6 Gnome 32bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debian"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live" "APPEND /multiboot/menu/debian.cfg"   
 Delete "$BootDir\multiboot\menu\debian.cfg" 
 
 ${ElseIf} $DistroName == "Debian Live 6 KDE 32bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debiankde"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live KDE" "APPEND /multiboot/menu/debkde.cfg"   
 Delete "$BootDir\multiboot\menu\debkde.cfg" 

 ${ElseIf} $DistroName == "Debian Live 6 LXDE 32bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debianlxde"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live LXDE" "APPEND /multiboot/menu/deblxde.cfg"   
 Delete "$BootDir\multiboot\menu\deblxde.cfg" 

 ${ElseIf} $DistroName == "Debian Live 6 XFCE 32bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debianxfce"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live XFCE" "APPEND /multiboot/menu/debxfce.cfg"   
 Delete "$BootDir\multiboot\menu\debxfce.cfg"  
 
 ${ElseIf} $DistroName == "Debian Live 6 Gnome 64bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debian64"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live 64" "APPEND /multiboot/menu/debian64.cfg"   
 Delete "$BootDir\multiboot\menu\debian64.cfg" 
 
 ${ElseIf} $DistroName == "Debian Live 6 KDE 64bit" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debiankde64"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live KDE 64" "APPEND /multiboot/menu/debk64.cfg"   
 Delete "$BootDir\multiboot\menu\debk64.cfg" 

 ${ElseIf} $DistroName == "Debian Live 6 LXDE 64bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debianlxde64"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live LXDE 64" "APPEND /multiboot/menu/debl64.cfg"   
 Delete "$BootDir\multiboot\menu\debl64.cfg" 

 ${ElseIf} $DistroName == "Debian Live 6 XFCE 64bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\debxfce64"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Debian Live XFCE 64" "APPEND /multiboot/menu/debx64.cfg"   
 Delete "$BootDir\multiboot\menu\debx64.cfg"  

 ${ElseIf} $DistroName == "AOSS (Malware Scanner)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ; RMDir /R "$BootDir\multiboot\aoss" 
 RMDir /R "$BootDir\Documents" 
 RMDir /R "$BootDir\scripts" 
 RMDir /R "$BootDir\system" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label AOSS" "APPEND /multiboot/menu/aoss.cfg"     
 Delete "$BootDir\multiboot\menu\aoss.cfg"  
 
 ${ElseIf} $DistroName == "GDATA Rescue CD" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\gdata" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label GDATA Rescue CD" "APPEND /multiboot/menu/gdata.cfg"     
 Delete "$BootDir\multiboot\menu\gdata.cfg"   
 
 ${ElseIf} $DistroName == "Panda SafeCD" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\panda" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Panda Safe CD (Antivirus)" "APPEND /multiboot/menu/panda.cfg"     
 Delete "$BootDir\multiboot\menu\panda.cfg"  
 
 ${ElseIf} $DistroName == "Sugar on a Stick" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\sos" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Sugar on a Stick" "APPEND /multiboot/menu/sugar.cfg"     
 Delete "$BootDir\multiboot\menu\sugar.cfg"  
 
 ${ElseIf} $DistroName == "gpxe (Net Bootable Distros)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label GPXE" "kernel /multiboot/gpxe.lkrn" 
 Delete "$BootDir\multiboot\gpxe.lkrn" 
 
 ${ElseIf} $DistroName == "Kon-Boot Floppy Image"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 Delete "$BootDir\multiboot\konboot.img"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Konboot" "APPEND /multiboot/menu/konboot.cfg" 
 Delete "$BootDir\multiboot\menu\konboot.cfg"  
 
 ${ElseIf} $DistroName == "Linux Live Tools for OCZ"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\ocz" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OCZ Tools" "APPEND /multiboot/menu/ocz.cfg" 
 Delete "$BootDir\multiboot\menu\ocz.cfg"  

 ${ElseIf} $DistroName == "Memtest86+ (Memory Testing Tool)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 Delete "$BootDir\multiboot\memtest.bin" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Memtest86+ (Memory Testing Tool)" "LINUX /multiboot/memtest.bin" 
 
 ${ElseIf} $DistroName == "HDT (Hardware Detection Tool)"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 Delete "$BootDir\multiboot\hdt.img"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HDT (Hardware Detection Tool)" "INITRD /multiboot/hdt.img"  
 
 ${ElseIf} $DistroName == "FreeDOS (Balder img)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 Delete "$BootDir\multiboot\balder10.img"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Balder DOS image (FreeDOS)" "append initrd=/multiboot/balder10.img" 
 
 ${ElseIf} $DistroName == "DBAN (Hard Drive Nuker)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\DBAN" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label DBAN (Hard Drive Nuker)" "CONFIG /multiboot/menu/DBAN.cfg"  
 Delete "$BootDir\multiboot\menu\DBAN.cfg"   
 
 ${ElseIf} $DistroName == "DRBL (Diskless Remote Boot in Linux)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\DRBL" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label DRBL (Diskless Remote Boot in Linux)" "CONFIG /multiboot/menu/DRBL.cfg"  
 Delete "$BootDir\multiboot\menu\DRBL.cfg"    
  
 ${ElseIf} $DistroName == "Offline NT Password & Registry Editor" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\offnt"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Offline NT Password & Registry Editor" "APPEND /multiboot/menu/offnt.cfg"   
 Delete "$BootDir\multiboot\menu\offnt.cfg" 
 
 ${ElseIf} $DistroName == "TinyCore (A Tiny Linux Distribution)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\tinycore" 
 RMDir /R "$BootDir\cde"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Tinycore" "APPEND /multiboot/menu/tinycore.cfg"   
 Delete "$BootDir\multiboot\menu\tinycore.cfg" 
 
 ${ElseIf} $DistroName == "MultiCore" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\multicore" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Multicore" "APPEND /multiboot/menu/multicore.cfg"   
 Delete "$BootDir\multiboot\menu\multicore.cfg"  
 
 ${ElseIf} $DistroName == "Slitaz (Another Tiny Distro)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\slitaz"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label SliTaz 4.0" "APPEND /multiboot/menu/slitaz.cfg" 
 Delete "$BootDir\multiboot\menu\slitaz.cfg" 
 
 ${ElseIf} $DistroName == "Lucid Puppy Linux" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\puppy"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Puppy" "APPEND /multiboot/menu/puppy.cfg"
 Delete "$BootDir\multiboot\menu\puppy.cfg" 
 
 ${ElseIf} $DistroName == "Precise Puppy Linux" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\precisepuppy"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Precise Puppy" "APPEND /multiboot/menu/ppuppy.cfg"
 Delete "$BootDir\multiboot\menu\ppuppy.cfg" 
 
 ${ElseIf} $DistroName == "Fatdog64 (Firefox)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\fatdogff"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fatdog64 Firefox" "APPEND /multiboot/menu/fatdogff.cfg"
 Delete "$BootDir\multiboot\menu\fatdogff.cfg"   
 
 ${ElseIf} $DistroName == "Fatdog64 (Seamonkey)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\fatdogsm"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fatdog64 Seamonkey" "APPEND /multiboot/menu/fatdogsm.cfg"
 Delete "$BootDir\multiboot\menu\fatdogsm.cfg"  

 ${ElseIf} $DistroName == "Wary Puppy Linux" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\warypuppy"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Wary Puppy" "APPEND /multiboot/menu/warypup.cfg"
 Delete "$BootDir\multiboot\menu\warypup.cfg"   
 
 ${ElseIf} $DistroName == "Racy Puppy Linux" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\racypuppy"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Racy Puppy" "APPEND /multiboot/menu/racypuppy.cfg"
 Delete "$BootDir\multiboot\menu\racypuppy.cfg"  
 
 ${ElseIf} $DistroName == "Scientific Linux CERN 6.3" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\slc63"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Scientific Linux CERN 6.3" "APPEND /multiboot/menu/slc63.cfg"
 Delete "$BootDir\multiboot\menu\slc63.cfg"  

 ${ElseIf} $DistroName == "Damn Small Linux (DSL)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\dsl" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label DSL 4.4.10" "APPEND /multiboot/menu/dsl.cfg" 
 Delete "$BootDir\multiboot\menu\dsl.cfg"   
 
 ${ElseIf} $DistroName == "Rip Linux (Recovery Distro)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\rip" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label RIP Linux" "APPEND /multiboot/menu/rip.cfg"  
 Delete "$BootDir\multiboot\menu\rip.cfg"   
 
 ${ElseIf} $DistroName == "Ophcrack (no tables)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ophcracknt" 
 RMDir /R "$BootDir\tables" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ophcrack" "APPEND /multiboot/menu/ophcracknt.cfg"   
 Delete "$BootDir\multiboot\menu\ophcracknt.cfg"  
 
 ${ElseIf} $DistroName == "Ophcrack XP (Password Finder)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ophcrack" 
 RMDir /R "$BootDir\tables" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ophcrack XP" "APPEND /multiboot/menu/ophcrack.cfg"   
 Delete "$BootDir\multiboot\menu\ophcrack.cfg" 
 
 ${ElseIf} $DistroName == "Ophcrack Vista/7 (Password Finder)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ophcrackvista" 
 RMDir /R "$BootDir\tables" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ophcrack Vista" "APPEND /multiboot/menu/ophvista.cfg"   
 Delete "$BootDir\multiboot\menu\ophvista.cfg"  
 
 ${ElseIf} $DistroName == "SalineOS" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\saline" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label SalineOS" "APPEND /multiboot/menu/saline.cfg"  
 Delete "$BootDir\multiboot\menu\saline.cfg"  
 
 ${ElseIf} $DistroName == "BackBox (Penetration Testing)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\backbox" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label BackBox" "APPEND /multiboot/menu/backbox.cfg"  
 Delete "$BootDir\multiboot\menu\backbox.cfg"  
 
 ${ElseIf} $DistroName == "Netrunner" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\netrunner" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Netrunner" "APPEND /multiboot/menu/netrunner.cfg"  
 Delete "$BootDir\multiboot\menu\netrunner.cfg" 
  
 ${ElseIf} $DistroName == "OSGeo Live" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\osgeo" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OSGeo Live" "APPEND /multiboot/menu/osgeo.cfg"  
 Delete "$BootDir\multiboot\menu\osgeo.cfg"   
  
 ${ElseIf} $DistroName == "Deft 7 (Forensics)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\deft" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Deft 7" "APPEND /multiboot/menu/deft.cfg"  
 Delete "$BootDir\multiboot\menu\deft.cfg" 

 ${ElseIf} $DistroName == "Matriux (Penetration Testing)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\matriux" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Matriux" "APPEND /multiboot/menu/matriux.cfg"  
 Delete "$BootDir\multiboot\menu\matriux.cfg"  

 ${ElseIf} $DistroName == "Terralinux" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\terralinux" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Terralinux" "APPEND /multiboot/menu/terra.cfg"  
 Delete "$BootDir\multiboot\menu\terra.cfg"  
 
 ${ElseIf} $DistroName == "Dreamlinux" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\dreamlinux" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Dreamlinux" "APPEND /multiboot/menu/dreamlinux.cfg"  
 Delete "$BootDir\multiboot\menu\dreamlinux.cfg"   
  
 ${ElseIf} $DistroName == "Ubuntu 10.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1004" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 10.04" "APPEND /multiboot/menu/ub1004.cfg"  
 Delete "$BootDir\multiboot\menu\ub1004.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 10.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1004" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 10.04" "APPEND /multiboot/menu/ku1004.cfg"  
 Delete "$BootDir\multiboot\menu\ku1004.cfg"

 ${ElseIf} $DistroName == "Xubuntu 10.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1004" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 10.04" "APPEND /multiboot/menu/xu1004.cfg"  
 Delete "$BootDir\multiboot\menu\xu1004.cfg" 
 
 ${ElseIf} $DistroName == "Ubuntu 10.04 x64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1004x64" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 10.04 x64" "APPEND /multiboot/menu/ub100464.cfg"  
 Delete "$BootDir\multiboot\menu\ub100464.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 10.04 x64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1004x64" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 10.04 x64" "APPEND /multiboot/menu/ku100464.cfg"  
 Delete "$BootDir\multiboot\menu\ku100464.cfg"

 ${ElseIf} $DistroName == "Xubuntu 10.04 x64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1004x64" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 10.04 x64" "APPEND /multiboot/menu/xu100464.cfg"  
 Delete "$BootDir\multiboot\menu\xu100464.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 10.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 10.10" "APPEND /multiboot/menu/ub1010.cfg"  
 Delete "$BootDir\multiboot\menu\ub1010.cfg"
 
 ${ElseIf} $DistroName == "Xubuntu 10.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R  "$BootDir\multiboot\xubuntu" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 10.10" "APPEND /multiboot/menu/xu1010.cfg"  
 Delete "$BootDir\multiboot\menu\xu1010.cfg" 
 
 ${ElseIf} $DistroName == "Ultimate Edition 3" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ultimateed"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ultimate Edition 3" "APPEND /multiboot/menu/ultimateed.cfg" 
 Delete "$BootDir\multiboot\menu\ultimateed.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 11.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1104"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 11.04" "APPEND /multiboot/menu/ub1104.cfg" 
 Delete "$BootDir\multiboot\menu\ub1104.cfg"  
 
 ${ElseIf} $DistroName == "KXStudio 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\KXStudio1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label KXStudio 12.04" "APPEND /multiboot/menu/kxstudio.cfg" 
 Delete "$BootDir\multiboot\menu\kxstudio.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 13.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1304"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 13.04" "APPEND /multiboot/menu/ub1304.cfg" 
 Delete "$BootDir\multiboot\menu\ub1304.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 13.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu130464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 13.04 amd64" "APPEND /multiboot/menu/u130464.cfg" 
 Delete "$BootDir\multiboot\menu\u130464.cfg"    
 
 ${ElseIf} $DistroName == "Ubuntu 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1210"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 12.10" "APPEND /multiboot/menu/ub1210.cfg" 
 Delete "$BootDir\multiboot\menu\ub1210.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu121064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 12.10 amd64" "APPEND /multiboot/menu/u121064.cfg" 
 Delete "$BootDir\multiboot\menu\u121064.cfg"

 ${ElseIf} $DistroName == "Ubuntu Secure Remix 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntusec1210"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Secure Remix 12.10" "APPEND /multiboot/menu/usec1210.cfg" 
 Delete "$BootDir\multiboot\menu\usec1210.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Secure Remix 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntusec121064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Secure Remix 12.10 amd64" "APPEND /multiboot/menu/ux121064.cfg" 
 Delete "$BootDir\multiboot\menu\ux121064.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu Server 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntuserv1210"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Server 12.10" "APPEND /multiboot/menu/usrv1210.cfg" 
 Delete "$BootDir\multiboot\menu\usrv1210.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Server 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntuserv121064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Server 12.10 amd64" "APPEND /multiboot/menu/us121064.cfg" 
 Delete "$BootDir\multiboot\menu\us121064.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Studio 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntustud1210" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Studio 12.10" "APPEND /multiboot/menu/ustu1210.cfg" 
 Delete "$BootDir\multiboot\menu\ustu1210.cfg"  

 ${ElseIf} $DistroName == "Ubuntu Studio 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntustud121064" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Studio 12.10 amd64" "APPEND /multiboot/menu/uo121064.cfg" 
 Delete "$BootDir\multiboot\menu\uo121064.cfg"   

 ${ElseIf} $DistroName == "Edubuntu 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu1210" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 12.10" "APPEND /multiboot/menu/edu1210.cfg" 
 Delete "$BootDir\multiboot\menu\edu1210.cfg"  

 ${ElseIf} $DistroName == "Edubuntu 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu121064" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 12.10 amd64" "APPEND /multiboot/menu/ed121064.cfg" 
 Delete "$BootDir\multiboot\menu\ed121064.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1210"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 12.10" "APPEND /multiboot/menu/ku1210.cfg"  
 Delete "$BootDir\multiboot\menu\ku1210.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu121064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 12.10 amd64" "APPEND /multiboot/menu/ku121064.cfg"  
 Delete "$BootDir\multiboot\menu\ku121064.cfg"  

 ${ElseIf} $DistroName == "Lubuntu 12.10" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu1210"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 12.10" "APPEND /multiboot/menu/lu1210.cfg"   
 Delete "$BootDir\multiboot\menu\lu1210.cfg" 
 
 ${ElseIf} $DistroName == "Lubuntu 12.10 amd64" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu121064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 12.10 amd64" "APPEND /multiboot/menu/lu121064.cfg"   
 Delete "$BootDir\multiboot\menu\lu121064.cfg"  

 ${ElseIf} $DistroName == "Xubuntu 12.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1210"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 12.10" "APPEND /multiboot/menu/xu1210.cfg"  
 Delete "$BootDir\multiboot\menu\xu1210.cfg"  

 ${ElseIf} $DistroName == "Xubuntu 12.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu121064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 12.10 amd64" "APPEND /multiboot/menu/xu121064.cfg"  
 Delete "$BootDir\multiboot\menu\xu121064.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 12.04" "APPEND /multiboot/menu/ub1204.cfg" 
 Delete "$BootDir\multiboot\menu\ub1204.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 12.04 DVD" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1204dvd"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 12.04 DVD" "APPEND /multiboot/menu/u1204dvd.cfg" 
 Delete "$BootDir\multiboot\menu\u1204dvd.cfg"  

 ${ElseIf} $DistroName == "Ubuntu 12.04 DVD amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1204dvd64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 12.04 DVD amd64" "APPEND /multiboot/menu/u1204d64.cfg" 
 Delete "$BootDir\multiboot\menu\u1204d64.cfg"   
 
 ${ElseIf} $DistroName == "Pear Linux 6" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pear"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Pear Linux" "APPEND /multiboot/menu/pear.cfg" 
 Delete "$BootDir\multiboot\menu\pear.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 11.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1110"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 11.10" "APPEND /multiboot/menu/ub1110.cfg" 
 Delete "$BootDir\multiboot\menu\ub1110.cfg"  

 ${ElseIf} $DistroName == "Ubuntu Server 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntuserv1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Server 12.04" "APPEND /multiboot/menu/usrv1204.cfg" 
 Delete "$BootDir\multiboot\menu\usrv1204.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Server 12.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntuserv120464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Server 12.04 amd64" "APPEND /multiboot/menu/us120464.cfg" 
 Delete "$BootDir\multiboot\menu\us120464.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu Server 11.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntuserv1110"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Server 11.10" "APPEND /multiboot/menu/usrv1110.cfg" 
 Delete "$BootDir\multiboot\menu\usrv1110.cfg"    
 
 ${ElseIf} $DistroName == "Xubuntu 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 12.04" "APPEND /multiboot/menu/xu1204.cfg"  
 Delete "$BootDir\multiboot\menu\xu1204.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 12.04" "APPEND /multiboot/menu/ku1204.cfg"  
 Delete "$BootDir\multiboot\menu\ku1204.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.04 DVD" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1204dvd"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 12.04 DVD" "APPEND /multiboot/menu/k1204dvd.cfg"  
 Delete "$BootDir\multiboot\menu\k1204dvd.cfg"  

 ${ElseIf} $DistroName == "Lubuntu 12.04" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 12.04" "APPEND /multiboot/menu/lu1204.cfg"   
 Delete "$BootDir\multiboot\menu\lu1204.cfg"  
 
 ${ElseIf} $DistroName == "Mythbuntu 12.04" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mythbuntu1204"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Mythbuntu 12.04" "APPEND /multiboot/menu/myth1204.cfg"   
 Delete "$BootDir\multiboot\menu\myth1204.cfg"   
 
 ${ElseIf} $DistroName == "Xubuntu 11.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1110"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 11.10" "APPEND /multiboot/menu/xu1110.cfg"  
 Delete "$BootDir\multiboot\menu\xu1110.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 11.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1110"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 11.10" "APPEND /multiboot/menu/ku1110.cfg"  
 Delete "$BootDir\multiboot\menu\ku1110.cfg" 

 ${ElseIf} $DistroName == "Lubuntu 11.10" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu1110"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 11.10" "APPEND /multiboot/menu/lu1110.cfg"   
 Delete "$BootDir\multiboot\menu\lu1110.cfg" 
 
 ${ElseIf} $DistroName == "Ubuntu 11.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu111064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 11.10 amd64" "APPEND /multiboot/menu/u111064.cfg" 
 Delete "$BootDir\multiboot\menu\u111064.cfg"  

 ${ElseIf} $DistroName == "Ubuntu 12.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu120464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 12.04 amd64" "APPEND /multiboot/menu/u120464.cfg" 
 Delete "$BootDir\multiboot\menu\u120464.cfg"  

 ${ElseIf} $DistroName == "Mythbuntu 12.04 amd64" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mythbuntu120464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Mythbuntu 12.04 amd64" "APPEND /multiboot/menu/my120464.cfg"   
 Delete "$BootDir\multiboot\menu\my120464.cfg"  

 ${ElseIf} $DistroName == "Lubuntu 12.04 amd64" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu120464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 12.04 amd64" "APPEND /multiboot/menu/lu120464.cfg"   
 Delete "$BootDir\multiboot\menu\lu120464.cfg" 

 ${ElseIf} $DistroName == "Xubuntu 12.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu120464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 12.04 amd64" "APPEND /multiboot/menu/xu120464.cfg"  
 Delete "$BootDir\multiboot\menu\xu120464.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu120464"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 12.04 amd64" "APPEND /multiboot/menu/ku120464.cfg"  
 Delete "$BootDir\multiboot\menu\ku120464.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.04 DVD amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1204dvd64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 12.04 DVD amd64" "APPEND /multiboot/menu/k1204dv64.cfg"  
 Delete "$BootDir\multiboot\menu\k1204dv64.cfg"    
 
 ${ElseIf} $DistroName == "Xubuntu 11.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu111064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 11.10 amd64" "APPEND /multiboot/menu/xu111064.cfg"  
 Delete "$BootDir\multiboot\menu\xu111064.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 11.10 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu111064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 11.10 amd64" "APPEND /multiboot/menu/ku111064.cfg"  
 Delete "$BootDir\multiboot\menu\ku111064.cfg" 

 ${ElseIf} $DistroName == "Lubuntu 11.10 amd64" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu111064"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 11.10 amd64" "APPEND /multiboot/menu/lu111064.cfg"   
 Delete "$BootDir\multiboot\menu\lu111064.cfg"  

 ${ElseIf} $DistroName == "Edubuntu 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu1204" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 12.04" "APPEND /multiboot/menu/edu1204.cfg" 
 Delete "$BootDir\multiboot\menu\edu1204.cfg"  

 ${ElseIf} $DistroName == "Edubuntu 12.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu120464" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 12.04 amd64" "APPEND /multiboot/menu/ed120464.cfg" 
 Delete "$BootDir\multiboot\menu\ed120464.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Studio 12.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntustud1204" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Studio 12.04" "APPEND /multiboot/menu/ustu1204.cfg" 
 Delete "$BootDir\multiboot\menu\ustu1204.cfg"  

 ${ElseIf} $DistroName == "Ubuntu Studio 12.04 amd64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntustud120464" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Studio 12.04 amd64" "APPEND /multiboot/menu/uo120464.cfg" 
 Delete "$BootDir\multiboot\menu\uo120464.cfg"    
 
 ${ElseIf} $DistroName == "Edubuntu 11.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu1110" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 11.10" "APPEND /multiboot/menu/edu1110.cfg" 
 Delete "$BootDir\multiboot\menu\edu1110.cfg"   
 
 ${ElseIf} $DistroName == "Xubuntu 11.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1104"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 11.04" "APPEND /multiboot/menu/xu1104.cfg"  
 Delete "$BootDir\multiboot\menu\xu1104.cfg"
 
 ${ElseIf} $DistroName == "Kubuntu 11.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1104"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 11.04" "APPEND /multiboot/menu/ku1104.cfg"  
 Delete "$BootDir\multiboot\menu\ku1104.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 11.04 x64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\ubuntu1104x64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu 11.04 x64" "APPEND /multiboot/menu/ub110464.cfg" 
 Delete "$BootDir\multiboot\menu\ub110464.cfg"  
 
 ${ElseIf} $DistroName == "Xubuntu 11.04 x64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xubuntu1104x64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Xubuntu 11.04 x64" "APPEND /multiboot/menu/xu110464.cfg"  
 Delete "$BootDir\multiboot\menu\xu110464.cfg"
 
 ${ElseIf} $DistroName == "Kubuntu 11.04 x64" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu1104x64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 11.04 x64" "APPEND /multiboot/menu/ku110464.cfg"  
 Delete "$BootDir\multiboot\menu\ku110464.cfg"  
 
 ${ElseIf} $DistroName == "Kubuntu 10.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kubuntu"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kubuntu 10.10" "APPEND /multiboot/menu/ku1010.cfg"  
 Delete "$BootDir\multiboot\menu\ku1010.cfg" 
 
 ${ElseIf} $DistroName == "Lubuntu 10.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 10.10" "APPEND /multiboot/menu/lu1010.cfg"   
 Delete "$BootDir\multiboot\menu\lu1010.cfg" 
 
 ${ElseIf} $DistroName == "Lubuntu 11.04" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\lubuntu1104"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Lubuntu 11.04" "APPEND /multiboot/menu/lu1104.cfg"   
 Delete "$BootDir\multiboot\menu\lu1104.cfg"  
 
 ${ElseIf} $DistroName == "Edubuntu 10.10" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 10.10" "APPEND /multiboot/menu/edu1010.cfg" 
 Delete "$BootDir\multiboot\menu\edu1010.cfg" 
 
 ${ElseIf} $DistroName == "Edubuntu 11.04" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\edubuntu1104" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Edubuntu 11.04" "APPEND /multiboot/menu/edu1104.cfg" 
 Delete "$BootDir\multiboot\menu\edu1104.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu Netbook Remix 10.10" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\netbookubuntu"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ubuntu Netbook Remix 10.10" "APPEND /multiboot/menu/netb1010.cfg"  
 Delete "$BootDir\multiboot\menu\netb1010.cfg" 

 ${ElseIf} $DistroName == "Linux Mint 10" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 10" "APPEND /multiboot/menu/mint10.cfg" 
 Delete "$BootDir\multiboot\menu\mint10.cfg"  
 
 ${ElseIf} $DistroName == "LMDE 201204 Mate/Cinnamon 32bit" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintdeb"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint Debian" "APPEND /multiboot/menu/mintdeb.cfg" 
 Delete "$BootDir\multiboot\menu\mintdeb.cfg"   
 
 ${ElseIf} $DistroName == "LMDE 201204 Mate/Cinnamon 64bit" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintdeb64"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint Debian 64bit" "APPEND /multiboot/menu/mdeb64.cfg" 
 Delete "$BootDir\multiboot\menu\mdeb64.cfg"   
 
 ${ElseIf} $DistroName == "LMDE 201204 XFCE 32bit" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintxfce"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint XFCE" "APPEND /multiboot/menu/mxfce.cfg" 
 Delete "$BootDir\multiboot\menu\mxfce.cfg"   

 ${ElseIf} $DistroName == "LMDE 201204 XFCE 64bit" ; 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintxfce64"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint XFCE 64bit" "APPEND /multiboot/menu/mxfce64.cfg" 
 Delete "$BootDir\multiboot\menu\mxfce64.cfg"    
 
 ${ElseIf} $DistroName == "Linux Mint 11 32bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1132"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 11 32bit" "APPEND /multiboot/menu/mint11.cfg" 
 Delete "$BootDir\multiboot\menu\mint11.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 11 64bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1164"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 11 64bit" "APPEND /multiboot/menu/mint1164.cfg" 
 Delete "$BootDir\multiboot\menu\mint1164.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 13 Mate 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintmate1332"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 13 Mate 32bit" "APPEND /multiboot/menu/mate13.cfg" 
 Delete "$BootDir\multiboot\menu\mate13.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 14 Mate 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintmate1432"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 14 Mate 32bit" "APPEND /multiboot/menu/mate14.cfg" 
 Delete "$BootDir\multiboot\menu\mate14.cfg" 

 ${ElseIf} $DistroName == "Linux Mint 14 Mate 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintmate1464"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 14 Mate 64bit" "APPEND /multiboot/menu/mate1464.cfg" 
 Delete "$BootDir\multiboot\menu\mate1464.cfg"   

 ${ElseIf} $DistroName == "Linux Mint 14 Cinnamon 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintcin1432"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint Cinnamon 14 32bit" "APPEND /multiboot/menu/mcin14.cfg" 
 Delete "$BootDir\multiboot\menu\mcin14.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 14 Cinnamon 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintcin1464"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint Cinnamon 14 64bit" "APPEND /multiboot/menu/mcin1464.cfg" 
 Delete "$BootDir\multiboot\menu\mcin1464.cfg" 

 ${ElseIf} $DistroName == "Linux Mint 14 KDE 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintkde1432"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 14 KDE 32bit" "APPEND /multiboot/menu/LMKDE14.cfg" 
 Delete "$BootDir\multiboot\menu\LMKDE14.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 14 XFCE 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintxfce1432"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 14 XFCE 32bit" "APPEND /multiboot/menu/LMXFCE14.cfg" 
 Delete "$BootDir\multiboot\menu\LMXFCE14.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 14 KDE 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintkde1464"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 14 KDE 64bit" "APPEND /multiboot/menu/LMK1464.cfg" 
 Delete "$BootDir\multiboot\menu\LMK1464.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 14 XFCE 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintxfce1464"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 14 XFCE 64bit" "APPEND /multiboot/menu/LMX1464.cfg" 
 Delete "$BootDir\multiboot\menu\LMX1464.cfg"    
 
 ${ElseIf} $DistroName == "Linux Mint 13 KDE 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintkde1332"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 13 KDE 32bit" "APPEND /multiboot/menu/LMKDE13.cfg" 
 Delete "$BootDir\multiboot\menu\LMKDE13.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 XFCE 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintxfce1332"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 13 XFCE 32bit" "APPEND /multiboot/menu/LMXFCE13.cfg" 
 Delete "$BootDir\multiboot\menu\LMXFCE13.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 KDE 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintkde1364"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 13 KDE 64bit" "APPEND /multiboot/menu/LMK1364.cfg" 
 Delete "$BootDir\multiboot\menu\LMK1364.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 XFCE 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintxfce1364"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 13 XFCE 64bit" "APPEND /multiboot/menu/LMXF1364.cfg" 
 Delete "$BootDir\multiboot\menu\LMXF1364.cfg"    
 
 ${ElseIf} $DistroName == "Linux Mint 13 Mate 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintmate1364"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 13 Mate 64bit" "APPEND /multiboot/menu/mate1364.cfg" 
 Delete "$BootDir\multiboot\menu\mate1364.cfg"   

 ${ElseIf} $DistroName == "Linux Mint 13 Cinnamon 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintcin1332"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint Cinnamon 13 32bit" "APPEND /multiboot/menu/mcin13.cfg" 
 Delete "$BootDir\multiboot\menu\mcin13.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 13 Cinnamon 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mintcin1364"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint Cinnamon 13 64bit" "APPEND /multiboot/menu/mcin1364.cfg" 
 Delete "$BootDir\multiboot\menu\mcin1364.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 12 Gnome 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1232"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 12 32bit" "APPEND /multiboot/menu/mint12.cfg" 
 Delete "$BootDir\multiboot\menu\mint12.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 12 Gnome 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1264"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 12 64bit" "APPEND /multiboot/menu/mint1264.cfg" 
 Delete "$BootDir\multiboot\menu\mint1264.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 12 KDE 32bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1232KDE"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 12 KDE 32bit" "APPEND /multiboot/menu/m12KDE.cfg" 
 Delete "$BootDir\multiboot\menu\m12KDE.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 12 KDE 64bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1264KDE"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 12 KDE 64bit" "APPEND /multiboot/menu/m1264KDE.cfg" 
 Delete "$BootDir\multiboot\menu\m1264KDE.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 12 LXDE 32bit"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mint1232LXDE"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Linux Mint 12 LXDE 32bit" "APPEND /multiboot/menu/m12LXDE.cfg" 
 Delete "$BootDir\multiboot\menu\m12LXDE.cfg"   

 ${ElseIf} $DistroName == "Peppermint One" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pmint"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Peppermint" "APPEND /multiboot/menu/pmint.cfg"  
 Delete "$BootDir\multiboot\menu\pmint.cfg"  
 
 ${ElseIf} $DistroName == "Peppermint Two" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pmint2"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Peppermint Two" "APPEND /multiboot/menu/pmint2.cfg"  
 Delete "$BootDir\multiboot\menu\pmint2.cfg" 

 ${ElseIf} $DistroName == "Peppermint Three" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pmint3"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Peppermint Three" "APPEND /multiboot/menu/pmint3.cfg"  
 Delete "$BootDir\multiboot\menu\pmint3.cfg"  

 ${ElseIf} $DistroName == "Peppermint Three 64bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pmint364"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Peppermint Three 64bit" "APPEND /multiboot/menu/pmint364.cfg"  
 Delete "$BootDir\multiboot\menu\pmint364.cfg"    

 ${ElseIf} $DistroName == "EasyPeasy (NetBook Distro)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\easypeasy"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label EasyPeasy (NetBook Distro)" "APPEND /multiboot/menu/easypeasy.cfg"  
 Delete "$BootDir\multiboot\menu\easypeasy.cfg"  

 ${ElseIf} $DistroName == "EEEBuntu (NetBook Distro)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\eeebuntu" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label EEEBuntu (NetBook Distro)" "APPEND /multiboot/menu/eeebuntu.cfg" 
 Delete "$BootDir\multiboot\menu\eeebuntu.cfg"  

 ${ElseIf} $DistroName == "xPUD (Netbook Distro)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xpud" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label xPUD (NetBook Distro)" "APPEND /multiboot/menu/xpud.cfg" 
 Delete "$BootDir\multiboot\menu\xpud.cfg"
 
 ${ElseIf} $DistroName == "Acronis Antimalware CD" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\acronis"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Acronis Antimalware" "APPEND /multiboot/menu/acronis.cfg"  
 Delete "$BootDir\multiboot\menu\acronis.cfg"
 
 ${ElseIf} $DistroName == "SLAX (Tiny Slackware Based Distro)"   
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\slax" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label SLAX" "APPEND /multiboot/menu/slax.cfg"  
 Delete "$BootDir\multiboot\menu\slax.cfg"
 
 ${ElseIf} $DistroName == "SLAX 64bit"   
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\slax64" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label SLAX 64bit" "APPEND /multiboot/menu/slax64.cfg"  
 Delete "$BootDir\multiboot\menu\slax64.cfg" 
 
 ${ElseIf} $DistroName == "WifiSlax"   
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\wifislax" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label WifiSlax" "APPEND /multiboot/menu/wifislax.cfg"  
 Delete "$BootDir\multiboot\menu\wifislax.cfg" 
 
 ${ElseIf} $DistroName == "Porteus"   
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\porteus" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Porteus" "APPEND /multiboot/menu/porteus.cfg"  
 Delete "$BootDir\multiboot\menu\porteus.cfg" 
 
 ${ElseIf} $DistroName == "Dreamlinux" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\dreamlinux" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Dreamlinux" "APPEND /multiboot/menu/dreamlinux.cfg"  
 Delete "$BootDir\multiboot\menu\dreamlinux.cfg"  
 
 ${ElseIf} $DistroName == "WifiWay 3.4" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\wifiway34" 
 RMDir /R "$BootDir\wifiway"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label WifiWay 3.4" "APPEND /multiboot/menu/wifiway34.cfg"   
 Delete "$BootDir\multiboot\menu\wifiway34.cfg"  
 
 ${ElseIf} $DistroName == "WifiWay 2" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\wifiway" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label WifiWay" "APPEND /multiboot/menu/wifiway.cfg"   
 Delete "$BootDir\multiboot\menu\wifiway.cfg" 
 
 ${ElseIf} $DistroName == "Parted Magic (Partition Tools)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\partedmagic"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Parted Magic (Partition Tools)" "APPEND /multiboot/menu/parted.cfg"  
 Delete "$BootDir\multiboot\menu\parted.cfg"
 
 ${ElseIf} $DistroName == "PCLinuxOS" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\pclos"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label PCLinuxOS" "APPEND /multiboot/menu/pclos.cfg" 
 Delete "$BootDir\multiboot\menu\pclos.cfg" 
 
 ${ElseIf} $DistroName == "GParted (Partition Tools)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\gparted" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label GParted (Partition Tools)" "APPEND /multiboot/menu/gparted.cfg"  
 Delete "$BootDir\multiboot\menu\gparted.cfg" 
 
 ${ElseIf} $DistroName == "Partition Wizard (Partition Tools)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\pwiz" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Partition Wizard (Partition Tools)" "APPEND /multiboot/menu/pwiz.cfg"   
 Delete "$BootDir\multiboot\menu\pwiz.cfg" 

 ${ElseIf} $DistroName == "Clonezilla (Backup + Clone Tool)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\clonezilla" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Clonezilla (Backup + Clone Tool)" "APPEND /multiboot/menu/clonezilla.cfg"  
 Delete "$BootDir\multiboot\menu\clonezilla.cfg" 
 
 ${ElseIf} $DistroName == "Redo Backup And Recovery (Recovery Tools)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\redobackup" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Redo Backup and Recovery (Recovery Tool)" "APPEND /multiboot/menu/redobackup.cfg"   
 Delete "$BootDir\multiboot\menu\redobackup.cfg" 
 
 ${ElseIf} $DistroName == "Kaspersky Rescue Disk (Antivirus Scanner)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\kav"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Kaspersky Rescue CD (Virus Scanner)" "APPEND /multiboot/menu/kav.cfg"  
 Delete "$BootDir\multiboot\menu\kav.cfg"  
 
 ${ElseIf} $DistroName == "AVG Rescue CD (Antivirus Scanner)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\avg" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label AVG Rescue CD (Antivirus Scanner)" "APPEND /multiboot/menu/avg.cfg"  
 Delete "$BootDir\multiboot\menu\avg.cfg"  
 
 ${ElseIf} $DistroName == "Bitdefender Rescue Disk (Antivirus Scanner)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\bitdefender" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Bitdefender Rescue Disk (Antivirus Scanner)" "APPEND /multiboot/menu/bitdefender.cfg"   
 Delete "$BootDir\multiboot\menu\bitdefender.cfg"  
 
 ${ElseIf} $DistroName == "Comodo Rescue Disk (Antivirus Scanner)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\comodo" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Comodo Rescue Disk (Antivirus Scanner)" "APPEND /multiboot/menu/comodo.cfg"   
 Delete "$BootDir\multiboot\menu\comodo.cfg"   
 
 ${ElseIf} $DistroName == "AVIRA AntiVir Rescue CD (Virus Scanner)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\avupdate"
 RMDir /R "$BootDir\antivir"
 RMDir /R "$BootDir\system" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label AVIRA AntiVir Rescue Disk (Antivirus Scanner)" "APPEND /multiboot/menu/avira.cfg"    
 Delete "$BootDir\multiboot\menu\avira.cfg"   
 
 ${ElseIf} $DistroName == "G Data (Virus Scanner)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\gdata"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label G Data (Antivirus Scanner)" "APPEND /multiboot/menu/gdata.cfg" 
 Delete "$BootDir\multiboot\menu\gdata.cfg"   
 
 ${ElseIf} $DistroName == "Jolicloud (NetBook Distro)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\jolicloud"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Jolicloud (NetBook Distro)" "APPEND /multiboot/menu/jolicloud.cfg"  
 Delete "$BootDir\multiboot\menu\jolicloud.cfg"  
 
 ${ElseIf} $DistroName == "EASEUS Disk Copy (Disk Cloning Tool)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\diskcopy" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label EASEUS Disk Copy (Disk Cloning Tool)" "APPEND /multiboot/menu/diskcopy.cfg"   
 Delete "$BootDir\multiboot\menu\diskcopy.cfg" 
  
 ${ElseIf} $DistroName == "BackTrack5 (Penetration Testing)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\bt-boot"
 RMDir /R "$BootDir\casper" 
 RMDir /R "$BootDir\multiboot\backtrack5\"
 Delete "$BootDir\boot.catalog" 
 Delete "$BootDir\md5sum.txt" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label BackTrack 5 (Penetration Testing)" "APPEND /multiboot/menu/bt5.cfg"   
 Delete "$BootDir\multiboot\menu\bt5.cfg" 

 ${ElseIf} $DistroName == "XBMC" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xbmc" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label XBMC" "APPEND /multiboot/menu/xbmc.cfg"   
 Delete "$BootDir\multiboot\menu\xbmc.cfg"  
 
 ${ElseIf} $DistroName == "XBMCbuntu" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\xbmcbuntu" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label XBMCbuntu" "APPEND /multiboot/menu/xbmcbunt.cfg"   
 Delete "$BootDir\multiboot\menu\xbmcbunt.cfg"  
 
 ${ElseIf} $DistroName == "Mandriva 2011" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\mandriva"
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Mandriva 2011" "APPEND /multiboot/menu/mand2011.cfg"   
 Delete "$BootDir\multiboot\menu\mand2011.cfg"  
 
 ${ElseIf} $DistroName == "System Rescue CD" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\systemrescuecd" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label System Rescue CD" "APPEND /multiboot/menu/sysrescu.cfg"   
 Delete "$BootDir\multiboot\menu\sysrescu.cfg"   
 
 ${ElseIf} $DistroName == "Dr.Web Live CD" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\boot\" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Dr.Web Live CD" "APPEND /multiboot/menu/drweb.cfg"   
 Delete "$BootDir\multiboot\menu\drweb.cfg" 
 ${AndIf} ${FileExists} $BootDir\boot\DrWebLiveCD-6.0.0.120204
 Delete "$BootDir\boot\DrWebLiveCD-6.0.0.120204" 
 ${AndIf} ${FileExists} $BootDir\boot\DrWebLiveCD-6.0.0.111009
 Delete "$BootDir\boot\DrWebLiveCD-6.0.0.111009"
 ${AndIf} ${FileExists} $BootDir\boot\DrWebLiveCD-6.0.0.111116
 Delete "$BootDir\boot\DrWebLiveCD-6.0.0.111116"
 
 ${ElseIf} $DistroName == "Trinity Rescue Kit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\TRK"
 RMDir /R "$BootDir\trk3" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Trinity Rescue Kit" "APPEND /multiboot/menu/trinity.cfg"  
 Delete "$BootDir\multiboot\menu\trinity.cfg"  
 
 ${ElseIf} $DistroName == "OpenSUSE 12.2 GNOME i686" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuse122" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 12.2 Gnome i686" "APPEND /multiboot/menu/suse122.cfg"    
 Delete "$BootDir\multiboot\menu\suse122.cfg" 

 ${ElseIf} $DistroName == "OpenSUSE 12.1 GNOME i686" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuse12" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 12.1 Gnome i686" "APPEND /multiboot/menu/suse12.cfg"    
 Delete "$BootDir\multiboot\menu\suse12.cfg"
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 GNOME x64" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuse6412" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 12.1 Gnome x64" "APPEND /multiboot/menu/suse6412.cfg"   
 Delete "$BootDir\multiboot\menu\suse6412.cfg"
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 KDE i686" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuseKDE12" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 12.1 KDE i686" "APPEND /multiboot/menu/suseK12.cfg"   
 Delete "$BootDir\multiboot\menu\suseK12.cfg"
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 KDE x64" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuseKDE6412" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 12.1 KDE x64" "APPEND /multiboot/menu/susK6412.cfg"   
 Delete "$BootDir\multiboot\menu\susK6412.cfg"

 ${ElseIf} $DistroName == "OpenSUSE 11.4 KDE i686" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuseKDE" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 11.4 KDE i686" "APPEND /multiboot/menu/suseKDE.cfg"   
 Delete "$BootDir\multiboot\menu\suseKDE.cfg"
 
 ${ElseIf} $DistroName == "OpenSUSE 11.4 KDE x64" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuseKDE64" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 11.4 KDE x64" "APPEND /multiboot/menu/suseK64.cfg"   
 Delete "$BootDir\multiboot\menu\suseK64.cfg"
 
 ${ElseIf} $DistroName == "OpenSUSE 11.4 GNOME i686" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuse" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 11.4 Gnome i686" "APPEND /multiboot/menu/suse.cfg"   
 Delete "$BootDir\multiboot\menu\suse.cfg"
 
 ${ElseIf} $DistroName == "OpenSUSE 11.4 GNOME x64" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\opensuse64" 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label OpenSUSE 11.4 Gnome x64" "APPEND /multiboot/menu/suse64.cfg"   
 Delete "$BootDir\multiboot\menu\suse64.cfg"
 
 ${ElseIf} $DistroName == "Zorin OS Core" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\zorin"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Zorin OS" "APPEND /multiboot/menu/zorin.cfg" 
 Delete "$BootDir\multiboot\menu\zorin.cfg"  
 
 ${ElseIf} $DistroName == "Zorin OS Core 64bit" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\zorin"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Zorin OS Lite 64bit" "APPEND /multiboot/menu/zorin64.cfg" 
 Delete "$BootDir\multiboot\menu\zorin64.cfg"   

 ${ElseIf} $DistroName == "F-Secure Rescue CD"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\fsecure"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label F-Secure Rescue CD" "APPEND /multiboot/menu/fsecure.cfg"  
 Delete "$BootDir\multiboot\menu\fsecure.cfg"  
 
 ${ElseIf} $DistroName == "Fuduntu"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\fuduntu"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Fuduntu" "APPEND /multiboot/menu/fuduntu.cfg"  
 Delete "$BootDir\multiboot\menu\fuduntu.cfg"   
 
 ${ElseIf} $DistroName == "Slacko Puppy"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\slacko53"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Slacko Puppy" "APPEND /multiboot/menu/slacko53.cfg"  
 Delete "$BootDir\multiboot\menu\slacko53.cfg" 

 ${ElseIf} $DistroName == "DPup Exprimo"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\multiboot\dpup"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label DPup Exprimo" "APPEND /multiboot/menu/dpup.cfg"  
 Delete "$BootDir\multiboot\menu\dpup.cfg"  
  
 ${ElseIf} $DistroName == "Hiren's Boot CD 15.X" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 RMDir /R "$BootDir\HBCD"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Hiren's Boot CD" "COM32 /multiboot/chain.c32 fs grldr=/HBCD/grldr"  ; to remove older version entry!
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Hiren's Boot CD 15.X" "COM32 /HBCD/Boot/chain.c32 fs grldr=/HBCD/grldr"   

 
 ${ElseIf} $DistroName == "Windows Vista/7/8 Installer" 
 RMDir /R "$BootDir\sources"  
 RMDir /R "$BootDir\boot" 
 RMDir /R "$BootDir\efi"  
 RMDir /R "$BootDir\support"  
 RMDir /R "$BootDir\upgrade" 
 Delete "$BootDir\bootmgr"
 Delete "$BootDir\autorun.inf"  
 Delete "$BootDir\setup.exe"   
 Delete "$BootDir\bootmgr.efi"  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Windows Vista/7/8 Installer" "COM32 /multiboot/chain.c32 fs ntldr=/bootmgr"  

 ${ElseIf} $DistroName == "Ultimate Boot CD (Diagnostics Tools)" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 Delete "$BootDir\multiboot\ISOS\ubcd.iso"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Ultimate Boot CD" "APPEND --config-file=/multiboot/menu/ubcd.lst"      
 Delete "$BootDir\multiboot\menu\ubcd.lst" 
 
 ${ElseIf} $DistroName == "HP SmartStart 8.60 x64" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\ss860_x64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP SmartStart 8.60 x64" "APPEND --config-file=/multiboot/menu/ss860.lst" 
 Delete "$BootDir\multiboot\menu\ss860.lst" 
 
 ${ElseIf} $DistroName == "HP SmartStart 8.60 x32" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\ss860_x32"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP SmartStart 8.60 x32" "APPEND --config-file=/multiboot/menu/ss86032.lst" 
 Delete "$BootDir\multiboot\menu\ss86032.lst"  
 
 ${ElseIf} $DistroName == "HP SmartStart 8.70 x64" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\ss870_x64"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP SmartStart 8.70 x64" "APPEND --config-file=/multiboot/menu/ss870.lst" 
 Delete "$BootDir\multiboot\menu\ss870.lst"  
 
 ${ElseIf} $DistroName == "HP SmartStart 8.70 x32" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\ss870_x32"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP SmartStart 8.70 x32" "APPEND --config-file=/multiboot/menu/ss87032.lst" 
 Delete "$BootDir\multiboot\menu\ss87032.lst"   
 
 ${ElseIf} $DistroName == "HP Firmware Maintenance 8.70 (CD)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\fwcd"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP Firmware Maintenance 8.70" "APPEND --config-file=/multiboot/menu/fw870.lst" 
 Delete "$BootDir\multiboot\menu\fw870.lst"   
 
 ${ElseIf} $DistroName == "HP Automatic Firmware Update 9.30 (DVD)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\fwdvd"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP Automatic Firmware Update 9.30" "APPEND --config-file=/multiboot/menu/fw930.lst" 
 Delete "$BootDir\multiboot\menu\fw930.lst"   
 
 ${ElseIf} $DistroName == "HP Automatic Firmware Update 10.10 (DVD)" ;
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 RMDir /R "$BootDir\multiboot\HP\fwdvd10"  
 ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label HP Automatic Firmware Update 10.10" "APPEND --config-file=/multiboot/menu/fw1010.lst" 
 Delete "$BootDir\multiboot\menu\fw1010.lst"   
  
; ##################################### ADD NEW DISTRO ######################################## 
 ${EndIf}
 
 DetailPrint "$DistroName and its menu entry were Removed!"
!macroend