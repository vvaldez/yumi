; ------------ Install Distros Macro --------------

!macro Install_Distros  
 ${If} $DistroName == "PING (Partimg Is Not Ghost)"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\PING\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label PING (Partimg Is Not Ghost)$\r$\nmenu label PING (Partimg Is Not Ghost)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ping.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ping.cfg "Menu\ping.cfg"  
 CopyFiles "$PLUGINSDIR\ping.cfg" "$BootDir\multiboot\menu\ping.cfg"
 
 ${ElseIf} $DistroName == "Archlinux"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\archlinux\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Archlinux$\r$\nmenu label Archlinux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/archlinux.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\archlinux.cfg "Menu\archlinux.cfg"  
 CopyFiles "$PLUGINSDIR\archlinux.cfg" "$BootDir\multiboot\menu\archlinux.cfg"   
 
 ${ElseIf} $DistroName == "Bodhi"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\bodhi\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Bodhi$\r$\nmenu label Bodhi$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/bodhi.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\bodhi.cfg "Menu\bodhi.cfg"  
 CopyFiles "$PLUGINSDIR\bodhi.cfg" "$BootDir\multiboot\menu\bodhi.cfg"  
 
 ${ElseIf} $DistroName == "CAELinux (Computer Aided Engineering)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\caelinux\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label CAELinux (Computer Aided Engineering)$\r$\nmenu label CAELinux (Computer Aided Engineering)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/cae.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\cae.cfg "Menu\cae.cfg"  
 CopyFiles "$PLUGINSDIR\cae.cfg" "$BootDir\multiboot\menu\cae.cfg"   

 ${ElseIf} $DistroName == "Tails (Anonymous Browsing)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x!isolinux -x![BOOT] -o"$BootDir\multiboot\tails\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Tails (Anonymous Browsing)$\r$\nmenu label Tails (Anonymous Browsing)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/tails.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\tails.cfg "Menu\tails.cfg"  
 CopyFiles "$PLUGINSDIR\tails.cfg" "$BootDir\multiboot\menu\tails.cfg"   
 
 ${ElseIf} $DistroName == "Liberte (Anonymous Browsing)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x!isolinux -x![BOOT] -o"$BootDir\multiboot\liberte\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Liberte (Anonymous Browsing)$\r$\nmenu label Liberte (Anonymous Browsing)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/liberte.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\liberte.cfg "Menu\liberte.cfg"  
 CopyFiles "$PLUGINSDIR\liberte.cfg" "$BootDir\multiboot\menu\liberte.cfg"   
 
 ${ElseIf} $DistroName == "CentOS"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\centos\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label CentOS$\r$\nmenu label CentOS$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/centos.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\centos.cfg "Menu\centos.cfg"  
 CopyFiles "$PLUGINSDIR\centos.cfg" "$BootDir\multiboot\menu\centos.cfg"  
 
 ${ElseIf} $DistroName == "CentOS 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\centos64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label CentOS 64bit$\r$\nmenu label CentOS 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/centos64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\centos64.cfg "Menu\centos64.cfg"  
 CopyFiles "$PLUGINSDIR\centos64.cfg" "$BootDir\multiboot\menu\centos64.cfg"   
 
 ${ElseIf} $DistroName == "Rescatux"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\boot\boot-isos\*.iso" -o"$BootDir\multiboot\rescatux\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Rescatux$\r$\nmenu label Rescatux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/rescatux.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\rescatux.cfg "Menu\rescatux.cfg"  
 CopyFiles "$PLUGINSDIR\rescatux.cfg" "$BootDir\multiboot\menu\rescatux.cfg"   
 
 ${ElseIf} $DistroName == "Fedora 15 GNOME 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15$\r$\nmenu label Fedora 15$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15.cfg "Menu\fed15.cfg"  
 CopyFiles "$PLUGINSDIR\fed15.cfg" "$BootDir\multiboot\menu\fed15.cfg"  

 ${ElseIf} $DistroName == "Fedora 15 GNOME 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 64bit$\r$\nmenu label Fedora 15 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed1564.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed1564.cfg "Menu\fed1564.cfg"  
 CopyFiles "$PLUGINSDIR\fed1564.cfg" "$BootDir\multiboot\menu\fed1564.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 15 KDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 KDE$\r$\nmenu label Fedora 15 KDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15K.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15K.cfg "Menu\fed15K.cfg"  
 CopyFiles "$PLUGINSDIR\fed15K.cfg" "$BootDir\multiboot\menu\fed15K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 15 KDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 KDE 64bit$\r$\nmenu label Fedora 15 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15K64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15K64.cfg "Menu\fed15K64.cfg"  
 CopyFiles "$PLUGINSDIR\fed15K64.cfg" "$BootDir\multiboot\menu\fed15K64.cfg" 

 ${ElseIf} $DistroName == "Fedora 15 LXDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 LXDE$\r$\nmenu label Fedora 15 LXDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15L.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15L.cfg "Menu\fed15L.cfg"  
 CopyFiles "$PLUGINSDIR\fed15L.cfg" "$BootDir\multiboot\menu\fed15L.cfg" 

 ${ElseIf} $DistroName == "Fedora 15 LXDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 LXDE 64bit$\r$\nmenu label Fedora 15 LXDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15L64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15L64.cfg "Menu\fed15L64.cfg"  
 CopyFiles "$PLUGINSDIR\fed15L64.cfg" "$BootDir\multiboot\menu\fed15L64.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 15 XFCE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 XFCE$\r$\nmenu label Fedora 15 XFCE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15X.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15X.cfg "Menu\fed15X.cfg"  
 CopyFiles "$PLUGINSDIR\fed15X.cfg" "$BootDir\multiboot\menu\fed15X.cfg" 

 ${ElseIf} $DistroName == "Fedora 15 XFCE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 15 XFCE 64bit$\r$\nmenu label Fedora 15 XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed15X64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed15X64.cfg "Menu\fed15X64.cfg"  
 CopyFiles "$PLUGINSDIR\fed15X64.cfg" "$BootDir\multiboot\menu\fed15X64.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 16 GNOME 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora16\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16$\r$\nmenu label Fedora 16$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16.cfg "Menu\fed16.cfg"  
 CopyFiles "$PLUGINSDIR\fed16.cfg" "$BootDir\multiboot\menu\fed16.cfg"  

 ${ElseIf} $DistroName == "Fedora 16 GNOME 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora6416\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 64bit$\r$\nmenu label Fedora 16 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed1664.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed1664.cfg "Menu\fed1664.cfg"  
 CopyFiles "$PLUGINSDIR\fed1664.cfg" "$BootDir\multiboot\menu\fed1664.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 16 KDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE16\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 KDE$\r$\nmenu label Fedora 16 KDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16K.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16K.cfg "Menu\fed16K.cfg"  
 CopyFiles "$PLUGINSDIR\fed16K.cfg" "$BootDir\multiboot\menu\fed16K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 16 KDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE6416\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 KDE 64bit$\r$\nmenu label Fedora 16 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16K64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16K64.cfg "Menu\fed16K64.cfg"  
 CopyFiles "$PLUGINSDIR\fed16K64.cfg" "$BootDir\multiboot\menu\fed16K64.cfg" 

 ${ElseIf} $DistroName == "Fedora 16 LXDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE16\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 LXDE$\r$\nmenu label Fedora 16 LXDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16L.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16L.cfg "Menu\fed16L.cfg"  
 CopyFiles "$PLUGINSDIR\fed16L.cfg" "$BootDir\multiboot\menu\fed16L.cfg" 

 ${ElseIf} $DistroName == "Fedora 16 LXDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE6416\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 LXDE 64bit$\r$\nmenu label Fedora 16 LXDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16L64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16L64.cfg "Menu\fed16L64.cfg"  
 CopyFiles "$PLUGINSDIR\fed16L64.cfg" "$BootDir\multiboot\menu\fed16L64.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 16 XFCE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE16\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 XFCE$\r$\nmenu label Fedora 16 XFCE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16X.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16X.cfg "Menu\fed16X.cfg"  
 CopyFiles "$PLUGINSDIR\fed16X.cfg" "$BootDir\multiboot\menu\fed16X.cfg" 

 ${ElseIf} $DistroName == "Fedora 16 XFCE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE6416\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 16 XFCE 64bit$\r$\nmenu label Fedora 16 XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed16X64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed16X64.cfg "Menu\fed16X64.cfg"  
 CopyFiles "$PLUGINSDIR\fed16X64.cfg" "$BootDir\multiboot\menu\fed16X64.cfg"   
 
 ${ElseIf} $DistroName == "Fedora 17 GNOME 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora17\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17$\r$\nmenu label Fedora 17$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17.cfg "Menu\fed17.cfg"  
 CopyFiles "$PLUGINSDIR\fed17.cfg" "$BootDir\multiboot\menu\fed17.cfg"  

 ${ElseIf} $DistroName == "Fedora 17 GNOME 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora6417\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 64bit$\r$\nmenu label Fedora 17 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed1764.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed1764.cfg "Menu\fed1764.cfg"  
 CopyFiles "$PLUGINSDIR\fed1764.cfg" "$BootDir\multiboot\menu\fed1764.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 17 KDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE17\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 KDE$\r$\nmenu label Fedora 17 KDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17K.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17K.cfg "Menu\fed17K.cfg"  
 CopyFiles "$PLUGINSDIR\fed17K.cfg" "$BootDir\multiboot\menu\fed17K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 17 KDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE6417\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 KDE 64bit$\r$\nmenu label Fedora 17 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17K64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17K64.cfg "Menu\fed17K64.cfg"  
 CopyFiles "$PLUGINSDIR\fed17K64.cfg" "$BootDir\multiboot\menu\fed17K64.cfg" 

 ${ElseIf} $DistroName == "Fedora 17 LXDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE17\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 LXDE$\r$\nmenu label Fedora 17 LXDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17L.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17L.cfg "Menu\fed17L.cfg"  
 CopyFiles "$PLUGINSDIR\fed17L.cfg" "$BootDir\multiboot\menu\fed17L.cfg" 

 ${ElseIf} $DistroName == "Fedora 17 LXDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE6417\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 LXDE 64bit$\r$\nmenu label Fedora 17 LXDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17L64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17L64.cfg "Menu\fed17L64.cfg"  
 CopyFiles "$PLUGINSDIR\fed17L64.cfg" "$BootDir\multiboot\menu\fed17L64.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 17 XFCE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE17\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 XFCE$\r$\nmenu label Fedora 17 XFCE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17X.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17X.cfg "Menu\fed17X.cfg"  
 CopyFiles "$PLUGINSDIR\fed17X.cfg" "$BootDir\multiboot\menu\fed17X.cfg" 

 ${ElseIf} $DistroName == "Fedora 17 XFCE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE6417\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 17 XFCE 64bit$\r$\nmenu label Fedora 17 XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed17X64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed17X64.cfg "Menu\fed17X64.cfg"  
 CopyFiles "$PLUGINSDIR\fed17X64.cfg" "$BootDir\multiboot\menu\fed17X64.cfg" 

 ${ElseIf} $DistroName == "Fedora 18 GNOME 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora18\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18$\r$\nmenu label Fedora 18$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18.cfg "Menu\fed18.cfg"  
 CopyFiles "$PLUGINSDIR\fed18.cfg" "$BootDir\multiboot\menu\fed18.cfg"  

 ${ElseIf} $DistroName == "Fedora 18 GNOME 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedora6418\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 64bit$\r$\nmenu label Fedora 18 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed1864.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed1864.cfg "Menu\fed1864.cfg"  
 CopyFiles "$PLUGINSDIR\fed1864.cfg" "$BootDir\multiboot\menu\fed1864.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 18 KDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE18\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 KDE$\r$\nmenu label Fedora 18 KDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18K.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18K.cfg "Menu\fed18K.cfg"  
 CopyFiles "$PLUGINSDIR\fed18K.cfg" "$BootDir\multiboot\menu\fed18K.cfg"  
 
 ${ElseIf} $DistroName == "Fedora 18 KDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraKDE6418\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 KDE 64bit$\r$\nmenu label Fedora 18 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18K64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18K64.cfg "Menu\fed18K64.cfg"  
 CopyFiles "$PLUGINSDIR\fed18K64.cfg" "$BootDir\multiboot\menu\fed18K64.cfg" 

 ${ElseIf} $DistroName == "Fedora 18 LXDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE18\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 LXDE$\r$\nmenu label Fedora 18 LXDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18L.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18L.cfg "Menu\fed18L.cfg"  
 CopyFiles "$PLUGINSDIR\fed18L.cfg" "$BootDir\multiboot\menu\fed18L.cfg" 

 ${ElseIf} $DistroName == "Fedora 18 LXDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraLXDE6418\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 LXDE 64bit$\r$\nmenu label Fedora 18 LXDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18L64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18L64.cfg "Menu\fed18L64.cfg"  
 CopyFiles "$PLUGINSDIR\fed18L64.cfg" "$BootDir\multiboot\menu\fed18L64.cfg" 
 
 ${ElseIf} $DistroName == "Fedora 18 XFCE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE18\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 XFCE$\r$\nmenu label Fedora 18 XFCE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18X.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18X.cfg "Menu\fed18X.cfg"  
 CopyFiles "$PLUGINSDIR\fed18X.cfg" "$BootDir\multiboot\menu\fed18X.cfg" 

 ${ElseIf} $DistroName == "Fedora 18 XFCE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fedoraXFCE6418\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Fedora 18 XFCE 64bit$\r$\nmenu label Fedora 18 XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fed18X64.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fed18X64.cfg "Menu\fed18X64.cfg"  
 CopyFiles "$PLUGINSDIR\fed18X64.cfg" "$BootDir\multiboot\menu\fed18X64.cfg"    
 
 ${ElseIf} $DistroName == "Pinguy OS 11"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pinguy\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Pinguy OS 11.04$\r$\nmenu label Pinguy OS 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pguy1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pguy1104.cfg "Menu\pguy1104.cfg"  
 CopyFiles "$PLUGINSDIR\pguy1104.cfg" "$BootDir\multiboot\menu\pguy1104.cfg" 
 
 ${ElseIf} $DistroName == "Pinguy OS 12.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pinguy1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Pinguy OS 12.04$\r$\nmenu label Pinguy OS 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pguy1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pguy1204.cfg "Menu\pguy1204.cfg"  
 CopyFiles "$PLUGINSDIR\pguy1204.cfg" "$BootDir\multiboot\menu\pguy1204.cfg"  

 ${ElseIf} $DistroName == "Sn0wL1nuX 11"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\snowlinux\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Snowlinux 11.04$\r$\nmenu label Snowlinux 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/snow1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\snow1104.cfg "Menu\snow1104.cfg"  
 CopyFiles "$PLUGINSDIR\snow1104.cfg" "$BootDir\multiboot\menu\snow1104.cfg"

 ${ElseIf} $DistroName == "Sn0wL1nuX 11 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\snowlinux64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Snowlinux 11.04 64bit$\r$\nmenu label Snowlinux 11.04 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/snow1164.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\snow1164.cfg "Menu\snow1164.cfg"  
 CopyFiles "$PLUGINSDIR\snow1164.cfg" "$BootDir\multiboot\menu\snow1164.cfg" 
 
 ${ElseIf} $DistroName == "KNOPPIX 6.7.1 CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\knoppix6\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label KNOPPIX 6$\r$\nmenu label KNOPPIX 6$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/knoppix6.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\knoppix6.cfg "Menu\knoppix6.cfg"  
 CopyFiles "$PLUGINSDIR\knoppix6.cfg" "$BootDir\multiboot\menu\knoppix6.cfg"   
 
 ${ElseIf} $DistroName == "KNOPPIX 7"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\knoppix\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label KNOPPIX$\r$\nmenu label KNOPPIX$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/knoppix.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\knoppix.cfg "Menu\knoppix.cfg"  
 CopyFiles "$PLUGINSDIR\knoppix.cfg" "$BootDir\multiboot\menu\knoppix.cfg"  
 
 ${ElseIf} $DistroName == "Crunchbang"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\crunchbang\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Crunchbang$\r$\nmenu label Crunchbang$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/crunchbang.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\crunchbang.cfg "Menu\crunchbang.cfg"  
 CopyFiles "$PLUGINSDIR\crunchbang.cfg" "$BootDir\multiboot\menu\crunchbang.cfg" 
  ReadEnvStr $R0 COMSPEC ; grab commandline
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\crunchbang\pool\main\l\linux-kernel-di-i386-2.6\*.ude *.udeb" ; rename broken udeb files    
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\crunchbang\pool\main\l\linux-kernel-di-i386-2.6\*.u *.udeb" ; rename broken udeb files 
  
 ${ElseIf} $DistroName == "Web Converger (Web Kiosk)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\webcon\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Web Converger$\r$\nmenu label Web Converger$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/webcon.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\webcon.cfg "Menu\webcon.cfg"  
 CopyFiles "$PLUGINSDIR\webcon.cfg" "$BootDir\multiboot\menu\webcon.cfg"  
 
 ${ElseIf} $DistroName == "Semplice Linux"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\semplice\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Semplice$\r$\nmenu label Semplice$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/semplice.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\semplice.cfg "Menu\semplice.cfg"  
 CopyFiles "$PLUGINSDIR\semplice.cfg" "$BootDir\multiboot\menu\semplice.cfg"  
 
 ${ElseIf} $DistroName == "AntiX"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\antix\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label AntiX$\r$\nmenu label AntiX$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/antix.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\antix.cfg "Menu\antix.cfg"  
 CopyFiles "$PLUGINSDIR\antix.cfg" "$BootDir\multiboot\menu\antix.cfg" 

 ${ElseIf} $DistroName == "Boot Repair Disk"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\bootrepair\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Boot Repair Disk$\r$\nmenu label Boot Repair Disk$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/bootrepair.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\bootrepair.cfg "Menu\bootrepair.cfg"  
 CopyFiles "$PLUGINSDIR\bootrepair.cfg" "$BootDir\multiboot\menu\bootrepair.cfg"  
 
 ${ElseIf} $DistroName == "GRML (system rescue)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\grml\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label GRML$\r$\nmenu label GRML$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/grml/boot/isolinux/syslinux.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\grml.cfg "Menu\grml.cfg"  
 CopyFiles "$PLUGINSDIR\grml.cfg" "$BootDir\multiboot\grml\boot\isolinux\syslinux.cfg"  
 
 ${ElseIf} $DistroName == "Debian Live 6 Gnome 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debian\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live$\r$\nmenu label Debian Live$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debian.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debian.cfg "Menu\debian.cfg"  
 CopyFiles "$PLUGINSDIR\debian.cfg" "$BootDir\multiboot\menu\debian.cfg" 
 
 ${ElseIf} $DistroName == "Debian Live 6 KDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debiankde\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live KDE$\r$\nmenu label Debian Live KDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debkde.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debkde.cfg "Menu\debkde.cfg"  
 CopyFiles "$PLUGINSDIR\debkde.cfg" "$BootDir\multiboot\menu\debkde.cfg" 

 ${ElseIf} $DistroName == "Debian Live 6 LXDE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debianlxde\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live LXDE$\r$\nmenu label Debian Live LXDE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/deblxde.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\deblxde.cfg "Menu\deblxde.cfg"  
 CopyFiles "$PLUGINSDIR\deblxde.cfg" "$BootDir\multiboot\menu\deblxde.cfg" 
 
 ${ElseIf} $DistroName == "Debian Live 6 XFCE 32bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debianxfce\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live XFCE$\r$\nmenu label Debian Live XFCE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debxfce.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debxfce.cfg "Menu\debxfce.cfg"  
 CopyFiles "$PLUGINSDIR\debxfce.cfg" "$BootDir\multiboot\menu\debxfce.cfg"  
 
 ${ElseIf} $DistroName == "Debian Live 6 Gnome 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debian64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live 64$\r$\nmenu label Debian Live 64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debian64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debian64.cfg "Menu\debian64.cfg"  
 CopyFiles "$PLUGINSDIR\debian64.cfg" "$BootDir\multiboot\menu\debian64.cfg" 
 
 ${ElseIf} $DistroName == "Debian Live 6 KDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debiankde64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live KDE 64$\r$\nmenu label Debian Live KDE 64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debk64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debk64.cfg "Menu\debk64.cfg"  
 CopyFiles "$PLUGINSDIR\debk64.cfg" "$BootDir\multiboot\menu\debk64.cfg" 

 ${ElseIf} $DistroName == "Debian Live 6 LXDE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debianlxde64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live LXDE 64$\r$\nmenu label Debian Live LXDE 64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debl64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debl64.cfg "Menu\debl64.cfg"  
 CopyFiles "$PLUGINSDIR\debl64.cfg" "$BootDir\multiboot\menu\debl64.cfg" 
 
 ${ElseIf} $DistroName == "Debian Live 6 XFCE 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\debianxfce64\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Debian Live XFCE 64$\r$\nmenu label Debian Live XFCE 64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/debx64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\debx64.cfg "Menu\debx64.cfg"  
 CopyFiles "$PLUGINSDIR\debx64.cfg" "$BootDir\multiboot\menu\debx64.cfg"  
 
 ${ElseIf} $DistroName == "AOSS (Malware Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label AOSS$\r$\nmenu label AOSS$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/aoss.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\aoss.cfg "Menu\aoss.cfg"  
 CopyFiles "$PLUGINSDIR\aoss.cfg" "$BootDir\multiboot\menu\aoss.cfg"  

 ${ElseIf} $DistroName == "GDATA Rescue CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\gdata\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label GDATA Rescue CD$\r$\nmenu label GDATA Rescue CD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/gdata.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\gdata.cfg "Menu\gdata.cfg"  
 CopyFiles "$PLUGINSDIR\gdata.cfg" "$BootDir\multiboot\menu\gdata.cfg"  
 
 ${ElseIf} $DistroName == "Panda SafeCD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\panda\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Panda Safe CD (Antivirus)$\r$\nmenu label Panda Safe CD (Antivirus)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/panda.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\panda.cfg "Menu\panda.cfg"  
 CopyFiles "$PLUGINSDIR\panda.cfg" "$BootDir\multiboot\menu\panda.cfg"  
 
 ${ElseIf} $DistroName == "Sugar on a Stick"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\sos\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Sugar on a Stick$\r$\nmenu label Sugar on a Stick$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/sugar.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\sugar.cfg "Menu\sugar.cfg"  
 CopyFiles "$PLUGINSDIR\sugar.cfg" "$BootDir\multiboot\menu\sugar.cfg"  
 
 ${ElseIf} $DistroName == "gpxe (Net Bootable Distros)"
 CopyFiles $ISOFile "$BootDir\$PathName"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label GPXE$\r$\nmenu label GPXE$\r$\nMENU INDENT 1$\r$\nkernel /multiboot/gpxe.lkrn" $R0
 
 ${ElseIf} $DistroName == "Kon-Boot Floppy Image"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -pkon-boot -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\kon-boot-all\FD0-konboot-v1.1-2in1.zip" -ir!FD0-konboot-v1.1-2in1 -o"$BootDir\multiboot\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 CopyFiles $BootDir\multiboot\FD0-konboot-v1.1-2in1\FD0-konboot-v1.1-2in1.img "$BootDir\multiboot\konboot.img"
 RMDir /R "$BootDir\multiboot\FD0-konboot-v1.1-2in1"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Konboot$\r$\nmenu label Konboot$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/konboot.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\konboot.cfg "Menu\konboot.cfg"  
 CopyFiles "$PLUGINSDIR\konboot.cfg" "$BootDir\multiboot\menu\konboot.cfg" 

 ${ElseIf} $DistroName == "Linux Live Tools for OCZ"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\ocz*.iso" -o"$BootDir\multiboot\ocz\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label OCZ Tools$\r$\nmenu label OCZ Tools$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ocz.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ocz.cfg "Menu\ocz.cfg"  
 CopyFiles "$PLUGINSDIR\ocz.cfg" "$BootDir\multiboot\menu\ocz.cfg"   

 ${ElseIf} $DistroName == "Memtest86+ (Memory Testing Tool)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$BootDir\multiboot\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Memtest86+ (Memory Testing Tool)$\r$\nmenu label Memtest86+ (Memory Testing Tool)$\r$\nMENU INDENT 1$\r$\nLINUX /multiboot/memtest.bin" $R0 
 
 ${ElseIf} $DistroName == "HDT (Hardware Detection Tool)"
 #nsExec::ExecToLog '"xcopy" "echo F|$ISOFile" /f/y "$BootDir\$PathName"'
 CopyFiles $ISOFile "$BootDir\$PathName"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label HDT (Hardware Detection Tool)$\r$\nmenu label HDT (Hardware Detection Tool)$\r$\nMENU INDENT 1$\r$\nLINUX /multiboot/memdisk$\r$\nINITRD /multiboot/hdt.img" $R0 
 
 ${ElseIf} $DistroName == "FreeDOS (Balder img)"
 CopyFiles $ISOFile "$BootDir\$PathName"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Balder DOS image (FreeDOS)$\r$\nmenu label Balder DOS image (FreeDOS)$\r$\nMENU INDENT 1$\r$\nkernel /multiboot/memdisk$\r$\nappend initrd=/multiboot/balder10.img" $R0 
 
 ${ElseIf} $DistroName == "DBAN (Hard Drive Nuker)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$BootDir\multiboot\DBAN\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label DBAN (Hard Drive Nuker)$\r$\nmenu label DBAN (Hard Drive Nuker)$\r$\nMENU INDENT 1$\r$\nCONFIG /multiboot/menu/DBAN.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\DBAN.cfg "Menu\DBAN.cfg"  
 CopyFiles "$PLUGINSDIR\DBAN.cfg" "$BootDir\multiboot\menu\DBAN.cfg" 

 ${ElseIf} $DistroName == "DRBL (Diskless Remote Boot in Linux)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$BootDir\multiboot\DRBL\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label DRBL (Diskless Remote Boot in Linux)$\r$\nmenu label DRBL (Diskless Remote Boot in Linux)$\r$\nMENU INDENT 1$\r$\nCONFIG /multiboot/menu/DRBL.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\DRBL.cfg "Menu\DRBL.cfg"  
 CopyFiles "$PLUGINSDIR\DRBL.cfg" "$BootDir\multiboot\menu\DRBL.cfg" 
  
 ${ElseIf} $DistroName == "Offline NT Password & Registry Editor"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$BootDir\multiboot\offnt\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$BootDir\multiboot\offnt\cd110511.iso" -x![BOOT] -o"$BootDir\multiboot\offnt\" -y' 
 Delete "$BootDir\multiboot\offnt\cd110511.iso"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
 ${WriteToFile} "label Offline NT Password & Registry Editor$\r$\nmenu label Offline NT Password & Registry Editor$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/offnt.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\offnt.cfg "Menu\offnt.cfg"  
 CopyFiles "$PLUGINSDIR\offnt.cfg" "$BootDir\multiboot\menu\offnt.cfg" 
 
 ${ElseIf} $DistroName == "TinyCore (A Tiny Linux Distribution)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!cde -o"$BootDir\multiboot\tinycore\" -y'  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!cde -o"$BootDir\" -y'   
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Tinycore$\r$\nmenu label Tinycore$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/tinycore.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\tinycore.cfg "Menu\tinycore.cfg"  
 CopyFiles "$PLUGINSDIR\tinycore.cfg" "$BootDir\multiboot\menu\tinycore.cfg" 
 
 ${ElseIf} $DistroName == "MultiCore"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\multicore\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Multicore$\r$\nmenu label Multicore$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/multicore.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\multicore.cfg "Menu\multicore.cfg"  
 CopyFiles "$PLUGINSDIR\multicore.cfg" "$BootDir\multiboot\menu\multicore.cfg"  
 
 ${ElseIf} $DistroName == "Slitaz (Another Tiny Distro)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\slitaz\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label SliTaz 4.0$\r$\nmenu label SliTaz 4.0$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/slitaz.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\slitaz.cfg "Menu\slitaz.cfg"  
 CopyFiles "$PLUGINSDIR\slitaz.cfg" "$BootDir\multiboot\menu\slitaz.cfg" 
 
 ${ElseIf} $DistroName == "Lucid Puppy Linux" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\puppy\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Puppy$\r$\nmenu label Puppy$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/puppy.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\puppy.cfg "Menu\puppy.cfg"  
 CopyFiles "$PLUGINSDIR\puppy.cfg" "$BootDir\multiboot\menu\puppy.cfg" 

 ${ElseIf} $DistroName == "Precise Puppy Linux" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\precisepuppy\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Precise Puppy$\r$\nmenu label Precise Puppy$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ppuppy.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ppuppy.cfg "Menu\ppuppy.cfg"  
 CopyFiles "$PLUGINSDIR\ppuppy.cfg" "$BootDir\multiboot\menu\ppuppy.cfg"   
 
 ${ElseIf} $DistroName == "Fatdog64 (Firefox)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fatdogff\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Fatdog64 Firefox$\r$\nmenu label Fatdog64 Firefox$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fatdogff.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fatdogff.cfg "Menu\fatdogff.cfg"  
 CopyFiles "$PLUGINSDIR\fatdogff.cfg" "$BootDir\multiboot\menu\fatdogff.cfg"    
 
 ${ElseIf} $DistroName == "Fatdog64 (Seamonkey)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fatdogsm\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Fatdog64 Seamonkey$\r$\nmenu label Fatdog64 Seamonkey$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fatdogsm.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fatdogsm.cfg "Menu\fatdogsm.cfg"  
 CopyFiles "$PLUGINSDIR\fatdogsm.cfg" "$BootDir\multiboot\menu\fatdogsm.cfg"   
 
 ${ElseIf} $DistroName == "Wary Puppy Linux" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\warypuppy\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Wary Puppy$\r$\nmenu label Wary Puppy$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/warypup.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\warypup.cfg "Menu\warypup.cfg"  
 CopyFiles "$PLUGINSDIR\warypup.cfg" "$BootDir\multiboot\menu\warypup.cfg"  
 
 ${ElseIf} $DistroName == "Racy Puppy Linux" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\racypuppy\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Racy Puppy$\r$\nmenu label Racy Puppy$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/racypuppy.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\racypuppy.cfg "Menu\racypuppy.cfg"  
 CopyFiles "$PLUGINSDIR\racypuppy.cfg" "$BootDir\multiboot\menu\racypuppy.cfg"   

 ${ElseIf} $DistroName == "Damn Small Linux (DSL)"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\dsl\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label DSL 4.4.10$\r$\nmenu label DSL 4.4.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/dsl.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\dsl.cfg "Menu\dsl.cfg"  
 CopyFiles "$PLUGINSDIR\dsl.cfg" "$BootDir\multiboot\menu\dsl.cfg"   
 
 ${ElseIf} $DistroName == "Rip Linux (Recovery Distro)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\rip\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label RIP Linux$\r$\nmenu label RIP Linux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/rip.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\rip.cfg "Menu\rip.cfg"  
 CopyFiles "$PLUGINSDIR\rip.cfg" "$BootDir\multiboot\menu\rip.cfg"

 ${ElseIf} $DistroName == "Ophcrack (no tables)"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!tables -o"$BootDir\multiboot\ophcracknt\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!tables -o"$BootDir\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ophcrack$\r$\nmenu label Ophcrack$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ophcracknt.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ophcracknt.cfg "Menu\ophcracknt.cfg"
 CopyFiles "$PLUGINSDIR\ophcracknt.cfg" "$BootDir\multiboot\menu\ophcracknt.cfg"  
 
 ${ElseIf} $DistroName == "Ophcrack XP (Password Finder)"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!tables -o"$BootDir\multiboot\ophcrack\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!tables -o"$BootDir\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ophcrack XP$\r$\nmenu label Ophcrack XP$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ophcrack.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ophcrack.cfg "Menu\ophcrack.cfg"
 CopyFiles "$PLUGINSDIR\ophcrack.cfg" "$BootDir\multiboot\menu\ophcrack.cfg" 
 
 ${ElseIf} $DistroName == "Ophcrack Vista/7 (Password Finder)"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!tables -o"$BootDir\multiboot\ophcrackvista\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!tables -o"$BootDir\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ophcrack Vista$\r$\nmenu label Ophcrack Vista$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ophvista.cfg" $R0 
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ophvista.cfg "Menu\ophvista.cfg"
 CopyFiles "$PLUGINSDIR\ophvista.cfg" "$BootDir\multiboot\menu\ophvista.cfg"  
 
 ${ElseIf} $DistroName == "Scientific Linux CERN 6.3"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\slc63\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Scientific Linux CERN 6.3$\r$\nmenu label Scientific Linux CERN 6.3$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/slc63.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\slc63.cfg "Menu\slc63.cfg"  
 CopyFiles "$PLUGINSDIR\slc63.cfg" "$BootDir\multiboot\menu\slc63.cfg"   

 ${ElseIf} $DistroName == "Calculate Linux Desktop"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\cld\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Calculate Linux Desktop$\r$\nmenu label Calculate Linux Desktop$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/cld.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\cld.cfg "Menu\cld.cfg"  
 CopyFiles "$PLUGINSDIR\cld.cfg" "$BootDir\multiboot\menu\cld.cfg"  
 
; ${ElseIf} $DistroName == "Ubuntu Rescue Remix (System Rescue)" 
; ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
; ${WriteToFile} "title Ubuntu Rescue Remix 10.04 (Recovery Tools)$\r$\nfind --set-root /ubuntu-rescue-remix-10-04.iso$\r$\nmap /ubuntu-rescue-remix-10-04.iso (0xff)$\r$\nmap --hook$\r$\nroot (0xff)$\r$\nkernel /casper/vmlinuz file=/cdrom/preseed/ubuntu.seed boot=casper iso-scan/filename=/ubuntu-rescue-remix-10-04.iso floppy.allowed_drive_mask=0 splash$\r$\ninitrd /casper/initrd.lz" $R0  
 
; ${ElseIf} $DistroName == "Samurai-WTF"
; ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\samurai\" -y'  
; ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
; ${WriteToFile} "label Samurai Web Testing Framework$\r$\nmenu label Samurai Web Testing Framework$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/samurai.cfg" $R0
; SetShellVarContext all
; InitPluginsDir
; File /oname=$PLUGINSDIR\samurai.cfg "Menu\samurai.cfg"  
; CopyFiles "$PLUGINSDIR\samurai.cfg" "$BootDir\multiboot\menu\samurai.cfg" 

 ${ElseIf} $DistroName == "SalineOS"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\saline\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label SalineOS$\r$\nmenu label SalineOS$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/saline.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\saline.cfg "Menu\saline.cfg"  
 CopyFiles "$PLUGINSDIR\saline.cfg" "$BootDir\multiboot\menu\saline.cfg"

 ${ElseIf} $DistroName == "BackBox (Penetration Testing)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\backbox\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label BackBox$\r$\nmenu label BackBox$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/backbox.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\backbox.cfg "Menu\backbox.cfg"  
 CopyFiles "$PLUGINSDIR\backbox.cfg" "$BootDir\multiboot\menu\backbox.cfg" 
 
 ${ElseIf} $DistroName == "Netrunner"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\netrunner\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Netrunner$\r$\nmenu label Netrunner$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/netrunner.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\netrunner.cfg "Menu\netrunner.cfg"  
 CopyFiles "$PLUGINSDIR\netrunner.cfg" "$BootDir\multiboot\menu\netrunner.cfg" 
 
 ${ElseIf} $DistroName == "OSGeo Live"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\osgeo\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OSGeo Live$\r$\nmenu label OSGeo Live$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/osgeo.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\osgeo.cfg "Menu\osgeo.cfg"  
 CopyFiles "$PLUGINSDIR\osgeo.cfg" "$BootDir\multiboot\menu\osgeo.cfg"  
 
 ${ElseIf} $DistroName == "Deft 7 (Forensics)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\deft\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Deft 7$\r$\nmenu label Deft 7$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/deft.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\deft.cfg "Menu\deft.cfg"  
 CopyFiles "$PLUGINSDIR\deft.cfg" "$BootDir\multiboot\menu\deft.cfg" 
 
 ${ElseIf} $DistroName == "Matriux (Penetration Testing)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\matriux\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Matriux$\r$\nmenu label Matriux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/matriux.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\matriux.cfg "Menu\matriux.cfg"  
 CopyFiles "$PLUGINSDIR\matriux.cfg" "$BootDir\multiboot\menu\matriux.cfg"  
 
 ${ElseIf} $DistroName == "Terralinux"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\terralinux\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Terralinux$\r$\nmenu label Terralinux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/terra.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\terra.cfg "Menu\terra.cfg"  
 CopyFiles "$PLUGINSDIR\terra.cfg" "$BootDir\multiboot\menu\terra.cfg"   
 
 ${ElseIf} $DistroName == "Dreamlinux"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\dreamlinux\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Dreamlinux$\r$\nmenu label Dreamlinux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/dreamlinux.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\dreamlinux.cfg "Menu\dreamlinux.cfg"  
 CopyFiles "$PLUGINSDIR\dreamlinux.cfg" "$BootDir\multiboot\menu\dreamlinux.cfg"    
 
 ${ElseIf} $DistroName == "Ubuntu 10.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1004\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 10.04$\r$\nmenu label Ubuntu 10.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1004.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1004.cfg "Menu\ub1004.cfg"  
 CopyFiles "$PLUGINSDIR\ub1004.cfg" "$BootDir\multiboot\menu\ub1004.cfg"
 
 ${ElseIf} $DistroName == "Xubuntu 10.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1004\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 10.04$\r$\nmenu label Xubuntu 10.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu1004.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu1004.cfg "Menu\xu1004.cfg"  
 CopyFiles "$PLUGINSDIR\xu1004.cfg" "$BootDir\multiboot\menu\xu1004.cfg"  
 
 ${ElseIf} $DistroName == "Kubuntu 10.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1004\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 10.04$\r$\nmenu label Kubuntu 10.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku1004.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku1004.cfg "Menu\ku1004.cfg"  
 CopyFiles "$PLUGINSDIR\ku1004.cfg" "$BootDir\multiboot\menu\ku1004.cfg"   

 ${ElseIf} $DistroName == "Ubuntu 10.04 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1004x64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 10.04 x64$\r$\nmenu label Ubuntu 10.04 x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub100464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub100464.cfg "Menu\ub100464.cfg"  
 CopyFiles "$PLUGINSDIR\ub100464.cfg" "$BootDir\multiboot\menu\ub100464.cfg"
 
 ${ElseIf} $DistroName == "Xubuntu 10.04 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1004x64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 10.04 x64$\r$\nmenu label Xubuntu 10.04 x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu100464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu100464.cfg "Menu\xu100464.cfg"  
 CopyFiles "$PLUGINSDIR\xu100464.cfg" "$BootDir\multiboot\menu\xu100464.cfg"  
 
 ${ElseIf} $DistroName == "Kubuntu 10.04 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1004x64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 10.04 x64$\r$\nmenu label Kubuntu 10.04 x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku100464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku100464.cfg "Menu\ku100464.cfg"  
 CopyFiles "$PLUGINSDIR\ku100464.cfg" "$BootDir\multiboot\menu\ku100464.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 10.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 10.10$\r$\nmenu label Ubuntu 10.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1010.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1010.cfg "Menu\ub1010.cfg"  
 CopyFiles "$PLUGINSDIR\ub1010.cfg" "$BootDir\multiboot\menu\ub1010.cfg"
 
 ${ElseIf} $DistroName == "Ultimate Edition 3"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ultimateed\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ultimate Edition 3$\r$\nmenu label Ultimate Edition 3$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ultimateed.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ultimateed.cfg "Menu\ultimateed.cfg"  
 CopyFiles "$PLUGINSDIR\ultimateed.cfg" "$BootDir\multiboot\menu\ultimateed.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 11.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1104\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 11.04$\r$\nmenu label Ubuntu 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1104.cfg "Menu\ub1104.cfg"  
 CopyFiles "$PLUGINSDIR\ub1104.cfg" "$BootDir\multiboot\menu\ub1104.cfg" 
 
 ${ElseIf} $DistroName == "Xubuntu 11.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1104\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 11.04$\r$\nmenu label Xubuntu 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu1104.cfg "Menu\xu1104.cfg"  
 CopyFiles "$PLUGINSDIR\xu1104.cfg" "$BootDir\multiboot\menu\xu1104.cfg"
 
 ${ElseIf} $DistroName == "Kubuntu 11.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1104\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 11.04$\r$\nmenu label Kubuntu 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku1104.cfg "Menu\ku1104.cfg"  
 CopyFiles "$PLUGINSDIR\ku1104.cfg" "$BootDir\multiboot\menu\ku1104.cfg" 

 ${ElseIf} $DistroName == "Ubuntu 11.04 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1104x64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 11.04 x64$\r$\nmenu label Ubuntu 11.04 x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub110464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub110464.cfg "Menu\ub110464.cfg"  
 CopyFiles "$PLUGINSDIR\ub110464.cfg" "$BootDir\multiboot\menu\ub110464.cfg" 
 
 ${ElseIf} $DistroName == "Xubuntu 11.04 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1104x64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 11.04 x64$\r$\nmenu label Xubuntu 11.04 x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu110464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu110464.cfg "Menu\xu110464.cfg"  
 CopyFiles "$PLUGINSDIR\xu110464.cfg" "$BootDir\multiboot\menu\xu110464.cfg"
 
 ${ElseIf} $DistroName == "Kubuntu 11.04 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1104x64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 11.04 x64$\r$\nmenu label Kubuntu 11.04 x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku110464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku110464.cfg "Menu\ku110464.cfg"  
 CopyFiles "$PLUGINSDIR\ku110464.cfg" "$BootDir\multiboot\menu\ku110464.cfg"    
 
 ${ElseIf} $DistroName == "Xubuntu 10.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 10.10$\r$\nmenu label Xubuntu 10.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu1010.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu1010.cfg "Menu\xu1010.cfg"  
 CopyFiles "$PLUGINSDIR\xu1010.cfg" "$BootDir\multiboot\menu\xu1010.cfg"  
 
 ${ElseIf} $DistroName == "Kubuntu 10.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 10.10$\r$\nmenu label Kubuntu 10.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku1010.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku1010.cfg "Menu\ku1010.cfg"  
 CopyFiles "$PLUGINSDIR\ku1010.cfg" "$BootDir\multiboot\menu\ku1010.cfg" 
 
 ${ElseIf} $DistroName == "Lubuntu 10.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 10.10$\r$\nmenu label Lubuntu 10.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu1010.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu1010.cfg "Menu\lu1010.cfg"  
 CopyFiles "$PLUGINSDIR\lu1010.cfg" "$BootDir\multiboot\menu\lu1010.cfg" 
 
 ${ElseIf} $DistroName == "Lubuntu 11.04" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu1104\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 11.04$\r$\nmenu label Lubuntu 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu1104.cfg "Menu\lu1104.cfg"  
 CopyFiles "$PLUGINSDIR\lu1104.cfg" "$BootDir\multiboot\menu\lu1104.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 13.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1304\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 13.04$\r$\nmenu label Ubuntu 13.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1304.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1304.cfg "Menu\ub1304.cfg"  
 CopyFiles "$PLUGINSDIR\ub1304.cfg" "$BootDir\multiboot\menu\ub1304.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 13.04 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 13.04 amd64$\r$\nmenu label Ubuntu 13.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/u130464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\u130464.cfg "Menu\u130464.cfg"  
 CopyFiles "$PLUGINSDIR\u130464.cfg" "$BootDir\multiboot\menu\u130464.cfg"  

 ${ElseIf} $DistroName == "Ubuntu 12.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 12.10$\r$\nmenu label Ubuntu 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1210.cfg "Menu\ub1210.cfg"  
 CopyFiles "$PLUGINSDIR\ub1210.cfg" "$BootDir\multiboot\menu\ub1210.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 12.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 12.10 amd64$\r$\nmenu label Ubuntu 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/u121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\u121064.cfg "Menu\u121064.cfg"  
 CopyFiles "$PLUGINSDIR\u121064.cfg" "$BootDir\multiboot\menu\u121064.cfg" 
 
 ${ElseIf} $DistroName == "Ubuntu Server 12.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntuserv1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Server 12.10$\r$\nmenu label Ubuntu Server 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/usrv1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\usrv1210.cfg "Menu\usrv1210.cfg"  
 CopyFiles "$PLUGINSDIR\usrv1210.cfg" "$BootDir\multiboot\menu\usrv1210.cfg"
  ReadEnvStr $R0 COMSPEC ; grab commandline
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\ubuntuserv1210\pool\main\l\linux\*.ude *.udeb" ; rename broken udeb files   
 
 ${ElseIf} $DistroName == "Ubuntu Server 12.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntuserv121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Server 12.10 amd64$\r$\nmenu label Ubuntu Server 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/us121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\us121064.cfg "Menu\us121064.cfg"  
 CopyFiles "$PLUGINSDIR\us121064.cfg" "$BootDir\multiboot\menu\us121064.cfg" 
  ReadEnvStr $R0 COMSPEC ; grab commandline
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\ubuntuserv121064\pool\main\l\linux\*.ude *.udeb" ; rename broken udeb files  
  
 ${ElseIf} $DistroName == "Ubuntu Secure Remix 12.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntusec1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Secure Remix 12.10$\r$\nmenu label Ubuntu Secure Remix 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/usec1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\usec1210.cfg "Menu\usec1210.cfg"  
 CopyFiles "$PLUGINSDIR\usec1210.cfg" "$BootDir\multiboot\menu\usec1210.cfg" 
 
 ${ElseIf} $DistroName == "Ubuntu Secure Remix 12.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntusec121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Secure Remix 12.10 amd64$\r$\nmenu label Ubuntu Secure Remix 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ux121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ux121064.cfg "Menu\ux121064.cfg"  
 CopyFiles "$PLUGINSDIR\ux121064.cfg" "$BootDir\multiboot\menu\ux121064.cfg"   
  
 ${ElseIf} $DistroName == "Ubuntu Studio 12.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntustud1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Studio 12.10$\r$\nmenu label Ubuntu Studio 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ustu1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ustu1210.cfg "Menu\ustu1210.cfg"  
 CopyFiles "$PLUGINSDIR\ustu1210.cfg" "$BootDir\multiboot\menu\ustu1210.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Studio 12.10 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntustud121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Studio 12.10 amd64$\r$\nmenu label Ubuntu Studio 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/uo121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\uo121064.cfg "Menu\uo121064.cfg"  
 CopyFiles "$PLUGINSDIR\uo121064.cfg" "$BootDir\multiboot\menu\uo121064.cfg"     

 ${ElseIf} $DistroName == "Edubuntu 12.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 12.10$\r$\nmenu label Edubuntu 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/edu1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\edu1210.cfg "Menu\edu1210.cfg"  
 CopyFiles "$PLUGINSDIR\edu1210.cfg" "$BootDir\multiboot\menu\edu1210.cfg" 
 
 ${ElseIf} $DistroName == "Edubuntu 12.10 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 12.10 amd64$\r$\nmenu label Edubuntu 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ed121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ed121064.cfg "Menu\ed121064.cfg"   
 CopyFiles "$PLUGINSDIR\ed121064.cfg" "$BootDir\multiboot\menu\ed121064.cfg"  

 ${ElseIf} $DistroName == "Kubuntu 12.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 12.10$\r$\nmenu label Kubuntu 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku1210.cfg "Menu\ku1210.cfg"  
 CopyFiles "$PLUGINSDIR\ku1210.cfg" "$BootDir\multiboot\menu\ku1210.cfg" 

 ${ElseIf} $DistroName == "Kubuntu 12.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 12.10 amd64$\r$\nmenu label Kubuntu 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku121064.cfg "Menu\ku121064.cfg"  
 CopyFiles "$PLUGINSDIR\ku121064.cfg" "$BootDir\multiboot\menu\ku121064.cfg"   
 
 ${ElseIf} $DistroName == "Lubuntu 12.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 12.10$\r$\nmenu label Lubuntu 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu1210.cfg "Menu\lu1210.cfg"  
 CopyFiles "$PLUGINSDIR\lu1210.cfg" "$BootDir\multiboot\menu\lu1210.cfg"  

 ${ElseIf} $DistroName == "Lubuntu 12.10 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 12.10 amd64$\r$\nmenu label Lubuntu 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu121064.cfg "Menu\lu121064.cfg"  
 CopyFiles "$PLUGINSDIR\lu121064.cfg" "$BootDir\multiboot\menu\lu121064.cfg" 

 ${ElseIf} $DistroName == "Xubuntu 12.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1210\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 12.10$\r$\nmenu label Xubuntu 12.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu1210.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu1210.cfg "Menu\xu1210.cfg"  
 CopyFiles "$PLUGINSDIR\xu1210.cfg" "$BootDir\multiboot\menu\xu1210.cfg" 
 
 ${ElseIf} $DistroName == "Xubuntu 12.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu121064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 12.10 amd64$\r$\nmenu label Xubuntu 12.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu121064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu121064.cfg "Menu\xu121064.cfg"  
 CopyFiles "$PLUGINSDIR\xu121064.cfg" "$BootDir\multiboot\menu\xu121064.cfg" 
 
 ${ElseIf} $DistroName == "Ubuntu 12.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 12.04$\r$\nmenu label Ubuntu 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1204.cfg "Menu\ub1204.cfg"  
 CopyFiles "$PLUGINSDIR\ub1204.cfg" "$BootDir\multiboot\menu\ub1204.cfg" 

 ${ElseIf} $DistroName == "Ubuntu 12.04 DVD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1204dvd\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 12.04 DVD$\r$\nmenu label Ubuntu 12.04 DVD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/u1204dvd.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\u1204dvd.cfg "Menu\u1204dvd.cfg"  
 CopyFiles "$PLUGINSDIR\u1204dvd.cfg" "$BootDir\multiboot\menu\u1204dvd.cfg"   
 
 ${ElseIf} $DistroName == "Ubuntu 12.04 DVD amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1204dvd64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 12.04 DVD amd64$\r$\nmenu label Ubuntu 12.04 DVD amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/u1204d64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\u1204d64.cfg "Menu\u1204d64.cfg"  
 CopyFiles "$PLUGINSDIR\u1204d64.cfg" "$BootDir\multiboot\menu\u1204d64.cfg"    
 
 ${ElseIf} $DistroName == "Ubuntu 11.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu1110\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 11.10$\r$\nmenu label Ubuntu 11.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ub1110.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ub1110.cfg "Menu\ub1110.cfg"  
 CopyFiles "$PLUGINSDIR\ub1110.cfg" "$BootDir\multiboot\menu\ub1110.cfg" 
 
 ${ElseIf} $DistroName == "Fuduntu"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fuduntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Fuduntu$\r$\nmenu label Fuduntu$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fuduntu.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fuduntu.cfg "Menu\fuduntu.cfg"  
 CopyFiles "$PLUGINSDIR\fuduntu.cfg" "$BootDir\multiboot\menu\fuduntu.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu Server 11.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntuserv1110\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Server 11.10$\r$\nmenu label Ubuntu Server 11.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/usrv1110.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\usrv1110.cfg "Menu\usrv1110.cfg"  
 CopyFiles "$PLUGINSDIR\usrv1110.cfg" "$BootDir\multiboot\menu\usrv1110.cfg"  
  ReadEnvStr $R0 COMSPEC ; grab commandline
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\ubuntuserv1110\pool\main\l\linux\*.ude *.udeb" ; rename broken udeb files   
  
 ${ElseIf} $DistroName == "Ubuntu Server 12.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntuserv1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Server 12.04$\r$\nmenu label Ubuntu Server 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/usrv1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\usrv1204.cfg "Menu\usrv1204.cfg"  
 CopyFiles "$PLUGINSDIR\usrv1204.cfg" "$BootDir\multiboot\menu\usrv1204.cfg"
  ReadEnvStr $R0 COMSPEC ; grab commandline
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\ubuntuserv1204\pool\main\l\linux\*.ude *.udeb" ; rename broken udeb files   
 
 ${ElseIf} $DistroName == "Ubuntu Server 12.04 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntuserv120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Server 12.04 amd64$\r$\nmenu label Ubuntu Server 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/us120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\us120464.cfg "Menu\us120464.cfg"  
 CopyFiles "$PLUGINSDIR\us120464.cfg" "$BootDir\multiboot\menu\us120464.cfg" 
  ReadEnvStr $R0 COMSPEC ; grab commandline
  nsExec::Exec "$R0 /C Rename $BootDir\multiboot\ubuntuserv120464\pool\main\l\linux\*.ude *.udeb" ; rename broken udeb files 
 
 ${ElseIf} $DistroName == "Xubuntu 12.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 12.04$\r$\nmenu label Xubuntu 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu1204.cfg "Menu\xu1204.cfg"  
 CopyFiles "$PLUGINSDIR\xu1204.cfg" "$BootDir\multiboot\menu\xu1204.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 12.04$\r$\nmenu label Kubuntu 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku1204.cfg "Menu\ku1204.cfg"  
 CopyFiles "$PLUGINSDIR\ku1204.cfg" "$BootDir\multiboot\menu\ku1204.cfg"  
 
 ${ElseIf} $DistroName == "Kubuntu 12.04 DVD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1204dvd\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 12.04 DVD$\r$\nmenu label Kubuntu 12.04 DVD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/k1204dvd.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\k1204dvd.cfg "Menu\k1204dvd.cfg"  
 CopyFiles "$PLUGINSDIR\k1204dvd.cfg" "$BootDir\multiboot\menu\k1204dvd.cfg"   
 
 ${ElseIf} $DistroName == "Lubuntu 12.04" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 12.04$\r$\nmenu label Lubuntu 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu1204.cfg "Menu\lu1204.cfg"  
 CopyFiles "$PLUGINSDIR\lu1204.cfg" "$BootDir\multiboot\menu\lu1204.cfg"   
 
 ${ElseIf} $DistroName == "Mythbuntu 12.04" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mythbuntu1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Mythbuntu 12.04$\r$\nmenu label Mythbuntu 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/myth1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\myth1204.cfg "Menu\myth1204.cfg"  
 CopyFiles "$PLUGINSDIR\myth1204.cfg" "$BootDir\multiboot\menu\myth1204.cfg"   
 
 ${ElseIf} $DistroName == "Xubuntu 11.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu1110\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 11.10$\r$\nmenu label Xubuntu 11.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu1110.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu1110.cfg "Menu\xu1110.cfg"  
 CopyFiles "$PLUGINSDIR\xu1110.cfg" "$BootDir\multiboot\menu\xu1110.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 11.10"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1110\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 11.10$\r$\nmenu label Kubuntu 11.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku1110.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku1110.cfg "Menu\ku1110.cfg"  
 CopyFiles "$PLUGINSDIR\ku1110.cfg" "$BootDir\multiboot\menu\ku1110.cfg"  
 
 ${ElseIf} $DistroName == "Lubuntu 11.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu1110\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 11.10$\r$\nmenu label Lubuntu 11.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu1110.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu1110.cfg "Menu\lu1110.cfg"  
 CopyFiles "$PLUGINSDIR\lu1110.cfg" "$BootDir\multiboot\menu\lu1110.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu 12.04 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 12.04 amd64$\r$\nmenu label Ubuntu 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/u120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\u120464.cfg "Menu\u120464.cfg"  
 CopyFiles "$PLUGINSDIR\u120464.cfg" "$BootDir\multiboot\menu\u120464.cfg"   
 
 ${ElseIf} $DistroName == "Mythbuntu 12.04 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mythbuntu120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Mythbuntu 12.04 amd64$\r$\nmenu label Mythbuntu 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/my120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\my120464.cfg "Menu\my120464.cfg"  
 CopyFiles "$PLUGINSDIR\my120464.cfg" "$BootDir\multiboot\menu\my120464.cfg"    
 
 ${ElseIf} $DistroName == "Xubuntu 12.04 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 12.04 amd64$\r$\nmenu label Xubuntu 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu120464.cfg "Menu\xu120464.cfg"  
 CopyFiles "$PLUGINSDIR\xu120464.cfg" "$BootDir\multiboot\menu\xu120464.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 12.04 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 12.04 amd64$\r$\nmenu label Kubuntu 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku120464.cfg "Menu\ku120464.cfg"  
 CopyFiles "$PLUGINSDIR\ku120464.cfg" "$BootDir\multiboot\menu\ku120464.cfg" 

 ${ElseIf} $DistroName == "Kubuntu 12.04 DVD amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu1204dvd64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 12.04 DVD amd64$\r$\nmenu label Kubuntu 12.04 DVD amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/k1204dv64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\k1204dv64.cfg "Menu\k1204dv64.cfg"  
 CopyFiles "$PLUGINSDIR\k1204dv64.cfg" "$BootDir\multiboot\menu\k1204dv64.cfg" 
 
 ${ElseIf} $DistroName == "Lubuntu 12.04 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 12.04 amd64$\r$\nmenu label Lubuntu 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu120464.cfg "Menu\lu120464.cfg"  
 CopyFiles "$PLUGINSDIR\lu120464.cfg" "$BootDir\multiboot\menu\lu120464.cfg"    
 
 
 ${ElseIf} $DistroName == "Ubuntu 11.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntu111064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu 11.10 amd64$\r$\nmenu label Ubuntu 11.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/u111064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\u111064.cfg "Menu\u111064.cfg"  
 CopyFiles "$PLUGINSDIR\u111064.cfg" "$BootDir\multiboot\menu\u111064.cfg" 
 
 ${ElseIf} $DistroName == "Xubuntu 11.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xubuntu111064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Xubuntu 11.10 amd64$\r$\nmenu label Xubuntu 11.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xu111064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xu111064.cfg "Menu\xu111064.cfg"  
 CopyFiles "$PLUGINSDIR\xu111064.cfg" "$BootDir\multiboot\menu\xu111064.cfg" 
 
 ${ElseIf} $DistroName == "Kubuntu 11.10 amd64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kubuntu111064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kubuntu 11.10 amd64$\r$\nmenu label Kubuntu 11.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ku111064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ku111064.cfg "Menu\ku111064.cfg"  
 CopyFiles "$PLUGINSDIR\ku111064.cfg" "$BootDir\multiboot\menu\ku111064.cfg"  
 
 ${ElseIf} $DistroName == "Lubuntu 11.10 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\lubuntu111064\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Lubuntu 11.10 amd64$\r$\nmenu label Lubuntu 11.10 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/lu111064.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\lu111064.cfg "Menu\lu111064.cfg"  
 CopyFiles "$PLUGINSDIR\lu111064.cfg" "$BootDir\multiboot\menu\lu111064.cfg"   
 
 ${ElseIf} $DistroName == "Edubuntu 12.04" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 12.04$\r$\nmenu label Edubuntu 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/edu1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\edu1204.cfg "Menu\edu1204.cfg"  
 CopyFiles "$PLUGINSDIR\edu1204.cfg" "$BootDir\multiboot\menu\edu1204.cfg" 
 
 ${ElseIf} $DistroName == "Edubuntu 12.04 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 12.04 amd64$\r$\nmenu label Edubuntu 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ed120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ed120464.cfg "Menu\ed120464.cfg"   
 CopyFiles "$PLUGINSDIR\ed120464.cfg" "$BootDir\multiboot\menu\ed120464.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu Studio 12.04" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntustud1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Studio 12.04$\r$\nmenu label Ubuntu Studio 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/ustu1204.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ustu1204.cfg "Menu\ustu1204.cfg"  
 CopyFiles "$PLUGINSDIR\ustu1204.cfg" "$BootDir\multiboot\menu\ustu1204.cfg" 

 ${ElseIf} $DistroName == "Ubuntu Studio 12.04 amd64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\ubuntustud120464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Studio 12.04 amd64$\r$\nmenu label Ubuntu Studio 12.04 amd64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/uo120464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\uo120464.cfg "Menu\uo120464.cfg"  
 CopyFiles "$PLUGINSDIR\uo120464.cfg" "$BootDir\multiboot\menu\uo120464.cfg"   
 
 ${ElseIf} $DistroName == "Edubuntu 11.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu1110\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 11.10$\r$\nmenu label Edubuntu 11.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/edu1110.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\edu1110.cfg "Menu\edu1110.cfg"  
 CopyFiles "$PLUGINSDIR\edu1110.cfg" "$BootDir\multiboot\menu\edu1110.cfg"   
 
 ${ElseIf} $DistroName == "Edubuntu 10.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 10.10$\r$\nmenu label Edubuntu 10.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/edu1010.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\edu1010.cfg "Menu\edu1010.cfg"  
 CopyFiles "$PLUGINSDIR\edu1010.cfg" "$BootDir\multiboot\menu\edu1010.cfg" 
 
 ${ElseIf} $DistroName == "Edubuntu 11.04" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\edubuntu1104\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Edubuntu 11.04$\r$\nmenu label Edubuntu 11.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/edu1104.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\edu1104.cfg "Menu\edu1104.cfg"  
 CopyFiles "$PLUGINSDIR\edu1104.cfg" "$BootDir\multiboot\menu\edu1104.cfg"  
 
 ${ElseIf} $DistroName == "Ubuntu Netbook Remix 10.10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\netbookubuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ubuntu Netbook Remix 10.10$\r$\nmenu label Ubuntu Netbook Remix 10.10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/netb1010.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\netb1010.cfg "Menu\netb1010.cfg"  
 CopyFiles "$PLUGINSDIR\netb1010.cfg" "$BootDir\multiboot\menu\netb1010.cfg" 
 
 ${ElseIf} $DistroName == "KXStudio 12.04"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\KXStudio1204\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label KXStudio 12.04$\r$\nmenu label KXStudio 12.04$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/kxstudio.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\kxstudio.cfg "Menu\kxstudio.cfg"  
 CopyFiles "$PLUGINSDIR\kxstudio.cfg" "$BootDir\multiboot\menu\kxstudio.cfg"  

 ${ElseIf} $DistroName == "Linux Mint 10" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 10$\r$\nmenu label Linux Mint 10$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mint10.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mint10.cfg "Menu\mint10.cfg"  
 CopyFiles "$PLUGINSDIR\mint10.cfg" "$BootDir\multiboot\menu\mint10.cfg"  
 
 ${ElseIf} $DistroName == "LMDE 201204 Mate/Cinnamon 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintdeb\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint Debian$\r$\nmenu label Linux Mint Debian$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mintdeb.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mintdeb.cfg "Menu\mintdeb.cfg"  
 CopyFiles "$PLUGINSDIR\mintdeb.cfg" "$BootDir\multiboot\menu\mintdeb.cfg"  
 
 ${ElseIf} $DistroName == "LMDE 201204 Mate/Cinnamon 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintdeb64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint Debian 64bit$\r$\nmenu label Linux Mint Debian 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mdeb64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mdeb64.cfg "Menu\mdeb64.cfg"  
 CopyFiles "$PLUGINSDIR\mdeb64.cfg" "$BootDir\multiboot\menu\mdeb64.cfg"   
 
 ${ElseIf} $DistroName == "LMDE 201204 XFCE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintxfce\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint XFCE$\r$\nmenu label Linux Mint XFCE$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mxfce.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mxfce.cfg "Menu\mxfce.cfg"  
 CopyFiles "$PLUGINSDIR\mxfce.cfg" "$BootDir\multiboot\menu\mxfce.cfg"  
 
 ${ElseIf} $DistroName == "LMDE 201204 XFCE 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintxfce64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint XFCE 64bit$\r$\nmenu label Linux Mint XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mxfce64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mxfce64.cfg "Menu\mxfce64.cfg"  
 CopyFiles "$PLUGINSDIR\mxfce64.cfg" "$BootDir\multiboot\menu\mxfce64.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 11 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1132\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 11 32bit$\r$\nmenu label Linux Mint 11 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mint11.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mint11.cfg "Menu\mint11.cfg"  
 CopyFiles "$PLUGINSDIR\mint11.cfg" "$BootDir\multiboot\menu\mint11.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 11 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1164\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 11 64bit$\r$\nmenu label Linux Mint 11 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mint1164.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mint1164.cfg "Menu\mint1164.cfg"  
 CopyFiles "$PLUGINSDIR\mint1164.cfg" "$BootDir\multiboot\menu\mint1164.cfg"

 ${ElseIf} $DistroName == "Linux Mint 14 Mate 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintmate1432\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 14 Mate 32bit$\r$\nmenu label Linux Mint 14 Mate 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mate14.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mate14.cfg "Menu\mate14.cfg"  
 CopyFiles "$PLUGINSDIR\mate14.cfg" "$BootDir\multiboot\menu\mate14.cfg" 

 ${ElseIf} $DistroName == "Linux Mint 14 Mate 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintmate1464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 14 Mate 64bit$\r$\nmenu label Linux Mint 14 Mate 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mate1464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mate1464.cfg "Menu\mate1464.cfg"  
 CopyFiles "$PLUGINSDIR\mate1464.cfg" "$BootDir\multiboot\menu\mate1464.cfg"   

 ${ElseIf} $DistroName == "Linux Mint 14 Cinnamon 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintcin1432\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint Cinnamon 14 32bit$\r$\nmenu label Linux Mint Cinnamon 14 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mcin14.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mcin14.cfg "Menu\mcin14.cfg"  
 CopyFiles "$PLUGINSDIR\mcin14.cfg" "$BootDir\multiboot\menu\mcin14.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 14 Cinnamon 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintcin1464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint Cinnamon 14 64bit$\r$\nmenu label Linux Mint Cinnamon 14 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mcin1464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mcin1464.cfg "Menu\mcin1464.cfg"  
 CopyFiles "$PLUGINSDIR\mcin1464.cfg" "$BootDir\multiboot\menu\mcin1464.cfg"  

 ${ElseIf} $DistroName == "Linux Mint 14 KDE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintkde1432\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 14 KDE 32bit$\r$\nmenu label Linux Mint 14 KDE 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMKDE14.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMKDE14.cfg "Menu\LMKDE14.cfg"  
 CopyFiles "$PLUGINSDIR\LMKDE14.cfg" "$BootDir\multiboot\menu\LMKDE14.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 14 KDE 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintkde1464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 14 KDE 64bit$\r$\nmenu label Linux Mint 14 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMK1464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMK1464.cfg "Menu\LMK1464.cfg"  
 CopyFiles "$PLUGINSDIR\LMK1464.cfg" "$BootDir\multiboot\menu\LMK1464.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 14 XFCE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintxfce1432\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 14 XFCE 32bit$\r$\nmenu label Linux Mint 14 XFCE 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMXFCE14.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMXFCE14.cfg "Menu\LMXFCE14.cfg"  
 CopyFiles "$PLUGINSDIR\LMXFCE14.cfg" "$BootDir\multiboot\menu\LMXFCE14.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 14 XFCE 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintxfce1464\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 14 XFCE 64bit$\r$\nmenu label Linux Mint 14 XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMX1464.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMX1464.cfg "Menu\LMX1464.cfg"  
 CopyFiles "$PLUGINSDIR\LMX1464.cfg" "$BootDir\multiboot\menu\LMX1464.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 Mate 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintmate1332\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 13 Mate 32bit$\r$\nmenu label Linux Mint 13 Mate 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mate13.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mate13.cfg "Menu\mate13.cfg"  
 CopyFiles "$PLUGINSDIR\mate13.cfg" "$BootDir\multiboot\menu\mate13.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 13 KDE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintkde1332\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 13 KDE 32bit$\r$\nmenu label Linux Mint 13 KDE 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMKDE13.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMKDE13.cfg "Menu\LMKDE13.cfg"  
 CopyFiles "$PLUGINSDIR\LMKDE13.cfg" "$BootDir\multiboot\menu\LMKDE13.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 XFCE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintxfce1332\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 13 XFCE 32bit$\r$\nmenu label Linux Mint 13 XFCE 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMXFCE13.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMXFCE13.cfg "Menu\LMXFCE13.cfg"  
 CopyFiles "$PLUGINSDIR\LMXFCE13.cfg" "$BootDir\multiboot\menu\LMXFCE13.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 13 KDE 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintkde1364\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 13 KDE 64bit$\r$\nmenu label Linux Mint 13 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMK1364.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMK1364.cfg "Menu\LMK1364.cfg"  
 CopyFiles "$PLUGINSDIR\LMK1364.cfg" "$BootDir\multiboot\menu\LMK1364.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 XFCE 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintxfce1364\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 13 XFCE 64bit$\r$\nmenu label Linux Mint 13 XFCE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/LMXF1364.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\LMXF1364.cfg "Menu\LMXF1364.cfg"  
 CopyFiles "$PLUGINSDIR\LMXF1364.cfg" "$BootDir\multiboot\menu\LMXF1364.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 13 Mate 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintmate1364\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 13 Mate 64bit$\r$\nmenu label Linux Mint 13 Mate 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mate1364.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mate1364.cfg "Menu\mate1364.cfg"  
 CopyFiles "$PLUGINSDIR\mate1364.cfg" "$BootDir\multiboot\menu\mate1364.cfg"   

 ${ElseIf} $DistroName == "Linux Mint 13 Cinnamon 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintcin1332\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint Cinnamon 13 32bit$\r$\nmenu label Linux Mint Cinnamon 13 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mcin13.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mcin13.cfg "Menu\mcin13.cfg"  
 CopyFiles "$PLUGINSDIR\mcin13.cfg" "$BootDir\multiboot\menu\mcin13.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 13 Cinnamon 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mintcin1364\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint Cinnamon 13 64bit$\r$\nmenu label Linux Mint Cinnamon 13 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mcin1364.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mcin1364.cfg "Menu\mcin1364.cfg"  
 CopyFiles "$PLUGINSDIR\mcin1364.cfg" "$BootDir\multiboot\menu\mcin1364.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 12 Gnome 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1232\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 12 32bit$\r$\nmenu label Linux Mint 12 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mint12.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mint12.cfg "Menu\mint12.cfg"  
 CopyFiles "$PLUGINSDIR\mint12.cfg" "$BootDir\multiboot\menu\mint12.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 12 Gnome 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1264\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 12 64bit$\r$\nmenu label Linux Mint 12 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mint1264.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mint1264.cfg "Menu\mint1264.cfg"  
 CopyFiles "$PLUGINSDIR\mint1264.cfg" "$BootDir\multiboot\menu\mint1264.cfg"   
 
 ${ElseIf} $DistroName == "Linux Mint 12 KDE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1232KDE\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 12 KDE 32bit$\r$\nmenu label Linux Mint 12 KDE 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/m12KDE.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\m12KDE.cfg "Menu\m12KDE.cfg"  
 CopyFiles "$PLUGINSDIR\m12KDE.cfg" "$BootDir\multiboot\menu\m12KDE.cfg"  
 
 ${ElseIf} $DistroName == "Linux Mint 12 KDE 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1264KDE\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 12 KDE 64bit$\r$\nmenu label Linux Mint 12 KDE 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/m1264KDE.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mint1264KDE.cfg "Menu\m1264KDE.cfg"  
 CopyFiles "$PLUGINSDIR\m1264KDE.cfg" "$BootDir\multiboot\menu\m1264KDE.cfg"    
 
 ${ElseIf} $DistroName == "Linux Mint 12 LXDE 32bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mint1232LXDE\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Linux Mint 12 LXDE 32bit$\r$\nmenu label Linux Mint 12 LXDE 32bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/m12LXDE.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\m12LXDE.cfg "Menu\m12LXDE.cfg"  
 CopyFiles "$PLUGINSDIR\m12LXDE.cfg" "$BootDir\multiboot\menu\m12LXDE.cfg"   

 ${ElseIf} $DistroName == "Pear Linux 6" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pear\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Pear Linux$\r$\nmenu label Pear Linux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pear.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pear.cfg "Menu\pear.cfg"  
 CopyFiles "$PLUGINSDIR\pear.cfg" "$BootDir\multiboot\menu\pear.cfg"  
 
 ${ElseIf} $DistroName == "Peppermint One" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pmint\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Peppermint$\r$\nmenu label Peppermint$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pmint.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pmint.cfg "Menu\pmint.cfg"  
 CopyFiles "$PLUGINSDIR\pmint.cfg" "$BootDir\multiboot\menu\pmint.cfg"  
 
 ${ElseIf} $DistroName == "Peppermint Two" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pmint2\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Peppermint Two$\r$\nmenu label Peppermint Two$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pmint2.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pmint2.cfg "Menu\pmint2.cfg" 
 CopyFiles "$PLUGINSDIR\pmint2.cfg" "$BootDir\multiboot\menu\pmint2.cfg"  

 ${ElseIf} $DistroName == "Peppermint Three" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pmint3\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Peppermint Three$\r$\nmenu label Peppermint Three$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pmint3.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pmint3.cfg "Menu\pmint3.cfg" 
 CopyFiles "$PLUGINSDIR\pmint3.cfg" "$BootDir\multiboot\menu\pmint3.cfg" 

 ${ElseIf} $DistroName == "Peppermint Three 64bit" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pmint364\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Peppermint Three 64bit$\r$\nmenu label Peppermint Three 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pmint364.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pmint364.cfg "Menu\pmint364.cfg" 
 CopyFiles "$PLUGINSDIR\pmint364.cfg" "$BootDir\multiboot\menu\pmint364.cfg"   

 ${ElseIf} $DistroName == "EasyPeasy (NetBook Distro)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\easypeasy\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label EasyPeasy (NetBook Distro)$\r$\nmenu label EasyPeasy (NetBook Distro)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/easypeasy.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\easypeasy.cfg "Menu\easypeasy.cfg"  
 CopyFiles "$PLUGINSDIR\easypeasy.cfg" "$BootDir\multiboot\menu\easypeasy.cfg"  

 ${ElseIf} $DistroName == "EEEBuntu (NetBook Distro)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\eeebuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label EEEBuntu (NetBook Distro)$\r$\nmenu label EEEBuntu (NetBook Distro)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/eeebuntu.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\eeebuntu.cfg "Menu\eeebuntu.cfg"  
 CopyFiles "$PLUGINSDIR\eeebuntu.cfg" "$BootDir\multiboot\menu\eeebuntu.cfg"  

 ${ElseIf} $DistroName == "xPUD (Netbook Distro)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xpud\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label xPUD (NetBook Distro)$\r$\nmenu label xPUD (NetBook Distro)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xpud.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xpud.cfg "Menu\xpud.cfg"  
 CopyFiles "$PLUGINSDIR\xpud.cfg" "$BootDir\multiboot\menu\xpud.cfg"
 
 ${ElseIf} $DistroName == "Acronis Antimalware CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\acronis\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Acronis Antimalware$\r$\nmenu label Acronis Antimalware$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/acronis.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\acronis.cfg "Menu\acronis.cfg"  
 CopyFiles "$PLUGINSDIR\acronis.cfg" "$BootDir\multiboot\menu\acronis.cfg"
 
 ${ElseIf} $DistroName == "SLAX (Tiny Slackware Based Distro)"   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label SLAX$\r$\nmenu label SLAX$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/slax.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\slax.cfg "Menu\slax.cfg"  
 CopyFiles "$PLUGINSDIR\slax.cfg" "$BootDir\multiboot\menu\slax.cfg"
 
 ${ElseIf} $DistroName == "SLAX 64bit"   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!slax -o"$BootDir\multiboot\slaxtemp" -y' 
 Rename "$BootDir\multiboot\slaxtemp\slax" "$BootDir\multiboot\slax64" 
 Delete "$BootDir\multiboot\slaxtemp"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label SLAX 64bit$\r$\nmenu label SLAX 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/slax64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\slax64.cfg "Menu\slax64.cfg"  
 CopyFiles "$PLUGINSDIR\slax64.cfg" "$BootDir\multiboot\menu\slax64.cfg" 
 
 ${ElseIf} $DistroName == "WifiSlax"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!boot -o"$BootDir\" -y'  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!boot -o"$BootDir\wifislax\" -y'   
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label WifiSlax$\r$\nmenu label WifiSlax$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/wifislax.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\wifislax.cfg "Menu\wifislax.cfg"  
 CopyFiles "$PLUGINSDIR\wifislax.cfg" "$BootDir\multiboot\menu\wifislax.cfg" 
 
 ${ElseIf} $DistroName == "Porteus"   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\porteus\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Porteus$\r$\nmenu label Porteus$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/porteus.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\porteus.cfg "Menu\porteus.cfg"  
 CopyFiles "$PLUGINSDIR\porteus.cfg" "$BootDir\multiboot\menu\porteus.cfg" 
 
 ${ElseIf} $DistroName == "Dreamlinux"   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\dreamlinux\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Dreamlinux$\r$\nmenu label Dreamlinux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/dreamlinux.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\dreamlinux.cfg "Menu\dreamlinux.cfg"  
 CopyFiles "$PLUGINSDIR\dreamlinux.cfg" "$BootDir\multiboot\menu\dreamlinux.cfg"  
 
 ${ElseIf} $DistroName == "WifiWay 3.4"   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!boot -o"$BootDir\multiboot\wifiway34\" -y'   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!wifiway -o"$BootDir\" -y'   
 ;ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\wifiway34\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label WifiWay 3.4$\r$\nmenu label WifiWay 3.4$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/wifiway34.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\wifiway34.cfg "Menu\wifiway34.cfg"  
 CopyFiles "$PLUGINSDIR\wifiway34.cfg" "$BootDir\multiboot\menu\wifiway34.cfg" 
 
 ${ElseIf} $DistroName == "WifiWay 2"   
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\wifiway\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label WifiWay$\r$\nmenu label WifiWay$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/wifiway.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\wifiway.cfg "Menu\wifiway.cfg"  
 CopyFiles "$PLUGINSDIR\wifiway.cfg" "$BootDir\multiboot\menu\wifiway.cfg" 
 
 ${ElseIf} $DistroName == "Parted Magic (Partition Tools)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\partedmagic\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Parted Magic (Partition Tools)$\r$\nmenu label Parted Magic (Partition Tools)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/parted.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\parted.cfg "Menu\parted.cfg"  
 CopyFiles "$PLUGINSDIR\parted.cfg" "$BootDir\multiboot\menu\parted.cfg"
 
 ${ElseIf} $DistroName == "PCLinuxOS" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pclos\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label PCLinuxOS$\r$\nmenu label PCLinuxOS$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pclos.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pclos.cfg "Menu\pclos.cfg"  
 CopyFiles "$PLUGINSDIR\pclos.cfg" "$BootDir\multiboot\menu\pclos.cfg" 
 
 ${ElseIf} $DistroName == "GParted (Partition Tools)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\gparted\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label GParted (Partition Tools)$\r$\nmenu label GParted (Partition Tools)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/gparted.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\gparted.cfg "Menu\gparted.cfg"  
 CopyFiles "$PLUGINSDIR\gparted.cfg" "$BootDir\multiboot\menu\gparted.cfg" 
 
 ${ElseIf} $DistroName == "Partition Wizard (Partition Tools)"  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\pwiz\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Partition Wizard (Partition Tools)$\r$\nmenu label Partition Wizard (Partition Tools)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/pwiz.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\pwiz.cfg "Menu\pwiz.cfg"  
 CopyFiles "$PLUGINSDIR\pwiz.cfg" "$BootDir\multiboot\menu\pwiz.cfg" 

 ${ElseIf} $DistroName == "Clonezilla (Backup + Clone Tool)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\clonezilla\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Clonezilla (Backup + Clone Tool)$\r$\nmenu label Clonezilla (Backup + Clone Tool)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/clonezilla.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\clonezilla.cfg "Menu\clonezilla.cfg"  
 CopyFiles "$PLUGINSDIR\clonezilla.cfg" "$BootDir\multiboot\menu\clonezilla.cfg" 
 
 ${ElseIf} $DistroName == "Redo Backup And Recovery (Recovery Tools)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\redobackup\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Redo Backup and Recovery (Recovery Tool)$\r$\nmenu label Redo Backup and Recovery (Recovery Tool)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/redobackup.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\redobackup.cfg "Menu\redobackup.cfg"  
 CopyFiles "$PLUGINSDIR\redobackup.cfg" "$BootDir\multiboot\menu\redobackup.cfg" 
 
 ${ElseIf} $DistroName == "Kaspersky Rescue Disk (Antivirus Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\kav\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Kaspersky Rescue CD (Virus Scanner)$\r$\nmenu label Kaspersky Rescue CD (Virus Scanner)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/kav.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\kav.cfg "Menu\kav.cfg"  
 CopyFiles "$PLUGINSDIR\kav.cfg" "$BootDir\multiboot\menu\kav.cfg"  
 
 ${ElseIf} $DistroName == "AVG Rescue CD (Antivirus Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\avg\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label AVG Rescue CD (Antivirus Scanner)$\r$\nmenu label AVG Rescue CD (Antivirus Scanner)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/avg.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\avg.cfg "Menu\avg.cfg"  
 CopyFiles "$PLUGINSDIR\avg.cfg" "$BootDir\multiboot\menu\avg.cfg"  
 
 ${ElseIf} $DistroName == "Bitdefender Rescue Disk (Antivirus Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\bitdefender\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Bitdefender Rescue Disk (Antivirus Scanner)$\r$\nmenu label Bitdefender Rescue Disk (Antivirus Scanner)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/bitdefender.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\bitdefender.cfg "Menu\bitdefender.cfg"  
 CopyFiles "$PLUGINSDIR\bitdefender.cfg" "$BootDir\multiboot\menu\bitdefender.cfg"  
 
 ${ElseIf} $DistroName == "Comodo Rescue Disk (Antivirus Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\comodo\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Comodo Rescue Disk (Antivirus Scanner)$\r$\nmenu label Comodo Rescue Disk (Antivirus Scanner)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/comodo.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\comodo.cfg "Menu\comodo.cfg"  
 CopyFiles "$PLUGINSDIR\comodo.cfg" "$BootDir\multiboot\menu\comodo.cfg"   
 
 ${ElseIf} $DistroName == "AVIRA AntiVir Rescue CD (Virus Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!avupdate -o"$BootDir\" -y'  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!antivir -o"$BootDir\" -y'  
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!system -o"$BootDir\" -y'
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!avupdate -x!antivir -x!system -o"$BootDir\antivir\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label AVIRA AntiVir Rescue Disk (Antivirus Scanner)$\r$\nmenu label AVIRA AntiVir Rescue Disk (Antivirus Scanner)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/avira.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\avira.cfg "Menu\avira.cfg"  
 CopyFiles "$PLUGINSDIR\avira.cfg" "$BootDir\multiboot\menu\avira.cfg"   
 
 ${ElseIf} $DistroName == "G Data (Virus Scanner)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\gdata\" -y'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label G Data (Antivirus Scanner)$\r$\nmenu label G Data (Antivirus Scanner)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/gdata.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\gdata.cfg "Menu\gdata.cfg"  
 CopyFiles "$PLUGINSDIR\gdata.cfg" "$BootDir\multiboot\menu\gdata.cfg"   
 
 ${ElseIf} $DistroName == "Jolicloud (NetBook Distro)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\jolicloud\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Jolicloud (NetBook Distro)$\r$\nmenu label Jolicloud (NetBook Distro)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/jolicloud.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\jolicloud.cfg "Menu\jolicloud.cfg"  
 CopyFiles "$PLUGINSDIR\jolicloud.cfg" "$BootDir\multiboot\menu\jolicloud.cfg"  
 
 ${ElseIf} $DistroName == "EASEUS Disk Copy (Disk Cloning Tool)" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\diskcopy\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label EASEUS Disk Copy (Disk Cloning Tool)$\r$\nmenu label EASEUS Disk Copy (Disk Cloning Tool)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/diskcopy.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\diskcopy.cfg "Menu\diskcopy.cfg"  
 CopyFiles "$PLUGINSDIR\diskcopy.cfg" "$BootDir\multiboot\menu\diskcopy.cfg" 
  
 ${ElseIf} $DistroName == "BackTrack5 (Penetration Testing)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\backtrack5\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label BackTrack 5 (Penetration Testing)$\r$\nmenu label BackTrack 5 (Penetration Testing)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/bt5.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\bt5.cfg "Menu\bt5.cfg"  
 CopyFiles "$PLUGINSDIR\bt5.cfg" "$BootDir\multiboot\menu\bt5.cfg"  
 
 ${ElseIf} $DistroName == "Caine (Forensics)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\caine\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Caine (Forensics)$\r$\nmenu label Caine (Forensics)$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/caine.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\caine.cfg "Menu\caine.cfg"  
 CopyFiles "$PLUGINSDIR\caine.cfg" "$BootDir\multiboot\menu\caine.cfg"    
 
 ${ElseIf} $DistroName == "XBMCbuntu"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\xbmcbuntu\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label XBMCbuntu$\r$\nmenu label XBMCbuntu$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/xbmcbunt.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\xbmcbunt.cfg "Menu\xbmcbunt.cfg"  
 CopyFiles "$PLUGINSDIR\xbmcbunt.cfg" "$BootDir\multiboot\menu\xbmcbunt.cfg"  

 ${ElseIf} $DistroName == "Mageia Live CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mageia\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Mageia CD$\r$\nmenu label Mageia CD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mageia.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mageia.cfg "Menu\mageia.cfg"  
 CopyFiles "$PLUGINSDIR\mageia.cfg" "$BootDir\multiboot\menu\mageia.cfg"   
 
 ${ElseIf} $DistroName == "Mandriva 2011"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\mandriva\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Mandriva 2011$\r$\nmenu label Mandriva 2011$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/mand2011.cfg" $R0
 Rename "$BootDir\multiboot\mandriva\isolinux\initrd0.img" "$BootDir\multiboot\mandriva\isolinux\initrd.img"
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\mand2011.cfg "Menu\mand2011.cfg"  
 CopyFiles "$PLUGINSDIR\mand2011.cfg" "$BootDir\multiboot\menu\mand2011.cfg"  
 
 ${ElseIf} $DistroName == "System Rescue CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\systemrescuecd\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label System Rescue CD$\r$\nmenu label System Rescue CD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/sysrescu.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\sysrescu.cfg "Menu\sysrescu.cfg"  
 CopyFiles "$PLUGINSDIR\sysrescu.cfg" "$BootDir\multiboot\menu\sysrescu.cfg"  

 ${ElseIf} $DistroName == "Dr.Web Live CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Dr.Web Live CD$\r$\nmenu label Dr.Web Live CD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/drweb.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\drweb.cfg "Menu\drweb.cfg"  
 File /oname=$PLUGINSDIR\drwebconfig "Menu\drwebconfig"  
 Rename "BootDir\boot\config" "BootDir\boot\oldconfig"
 CopyFiles "$PLUGINSDIR\drweb.cfg" "$BootDir\multiboot\menu\drweb.cfg" 
 CopyFiles "$PLUGINSDIR\drwebconfig" "$BootDir\boot\config" 
 
 ${ElseIf} $DistroName == "Trinity Rescue Kit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!trk3 -o"$BootDir\TRK\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!trk3 -o"$BootDir\" -y' 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Trinity Rescue Kit$\r$\nmenu label Trinity Rescue Kit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/trinity.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\trinity.cfg "Menu\trinity.cfg"  
 CopyFiles "$PLUGINSDIR\trinity.cfg" "$BootDir\multiboot\menu\trinity.cfg"  
 
 ${ElseIf} $DistroName == "OpenSUSE 12.2 GNOME i686" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuse122\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 12.2 Gnome i686$\r$\nmenu label OpenSUSE 12.2 Gnome i686$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suse122.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuse122\boot\i386\loader\" "$BootDir\multiboot\opensuse122\boot\syslinux\"
 File /oname=$PLUGINSDIR\suse122.cfg "Menu\suse122.cfg" 
 File /oname=$PLUGINSDIR\config122.isoclient "Menu\config122.isoclient" 
 File /oname=$PLUGINSDIR\mbrid "mbrid"  
 Rename "$BootDir\multiboot\opensuse122\config.isoclient" "$BootDir\multiboot\opensuse122\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\config122.isoclient" "$BootDir\multiboot\opensuse122\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suse122.cfg" "$BootDir\multiboot\menu\suse122.cfg" 
 CopyFiles "$PLUGINSDIR\mbrid" "$BootDir\multiboot\opensuse122\boot\grub\mbrid"
 StrCpy $SUSEDIR "opensuse122"
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuse122\boot\grub\mbrid" "$BootDir\boot\grub\mbrid" 
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 GNOME i686" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuse12\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 12.1 Gnome i686$\r$\nmenu label OpenSUSE 12.1 Gnome i686$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suse12.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuse12\boot\i386\loader\" "$BootDir\multiboot\opensuse12\boot\syslinux\"
 File /oname=$PLUGINSDIR\suse12.cfg "Menu\suse12.cfg" 
 File /oname=$PLUGINSDIR\config12.isoclient "Menu\config12.isoclient" 
 Rename "$BootDir\multiboot\opensuse12\config.isoclient" "$BootDir\multiboot\opensuse12\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\config12.isoclient" "$BootDir\multiboot\opensuse12\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suse12.cfg" "$BootDir\multiboot\menu\suse12.cfg" 
 StrCpy $SUSEDIR "opensuse12"
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuse12\boot\grub\mbrid" "$BootDir\boot\grub\mbrid"
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 GNOME x64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuse6412\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 12.1 Gnome x64$\r$\nmenu label OpenSUSE 12.1 Gnome x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suse6412.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuse6412\boot\x86_64\loader\" "$BootDir\multiboot\opensuse6412\boot\syslinux\"
 File /oname=$PLUGINSDIR\suse6412.cfg "Menu\suse6412.cfg" 
 File /oname=$PLUGINSDIR\config6412.isoclient "Menu\config6412.isoclient"  
 Rename "$BootDir\multiboot\opensuse6412\config.isoclient" "$BootDir\multiboot\opensuse6412\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\config6412.isoclient" "$BootDir\multiboot\opensuse6412\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suse6412.cfg" "$BootDir\multiboot\menu\suse6412.cfg" 
 StrCpy $SUSEDIR "opensuse6412" 
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuse6412\boot\grub\mbrid" "$BootDir\boot\grub\mbrid"
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 KDE i686" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuseKDE12\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 12.1 KDE i686$\r$\nmenu label OpenSUSE 12.1 KDE i686$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suseK12.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuseKDE12\boot\i386\loader\" "$BootDir\multiboot\opensuseKDE12\boot\syslinux\"
 File /oname=$PLUGINSDIR\suseK12.cfg "Menu\suseK12.cfg" 
 File /oname=$PLUGINSDIR\configKDE12.isoclient "Menu\configKDE12.isoclient" 
 Rename "$BootDir\multiboot\opensuseKDE12\config.isoclient" "$BootDir\multiboot\opensuseKDE12\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\configKDE12.isoclient" "$BootDir\multiboot\opensuseKDE12\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suseK12.cfg" "$BootDir\multiboot\menu\suseK12.cfg" 
 StrCpy $SUSEDIR "opensuseKDE12"
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuseKDE12\boot\grub\mbrid" "$BootDir\boot\grub\mbrid"
 
 ${ElseIf} $DistroName == "OpenSUSE 12.1 KDE x64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuseKDE6412\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 12.1 KDE x64$\r$\nmenu label OpenSUSE 12.1 KDE x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/susK6412.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuseKDE6412\boot\x86_64\loader\" "$BootDir\multiboot\opensuseKDE6412\boot\syslinux\"
 File /oname=$PLUGINSDIR\susK6412.cfg "Menu\susK6412.cfg" 
 File /oname=$PLUGINSDIR\configKDE6412.isoclient "Menu\configKDE6412.isoclient"  
 Rename "$BootDir\multiboot\opensuseKDE6412\config.isoclient" "$BootDir\multiboot\opensuseKDE6412\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\configKDE6412.isoclient" "$BootDir\multiboot\opensuseKDE6412\config.isoclient" 
 CopyFiles "$PLUGINSDIR\susK6412.cfg" "$BootDir\multiboot\menu\susK6412.cfg" 
 StrCpy $SUSEDIR "opensuseKDE6412" 
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuseKDE6412\boot\grub\mbrid" "$BootDir\boot\grub\mbrid" 
 

 ${ElseIf} $DistroName == "OpenSUSE 11.4 GNOME i686" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuse\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 11.4 Gnome i686$\r$\nmenu label OpenSUSE 11.4 Gnome i686$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suse.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuse\boot\i386\loader\" "$BootDir\multiboot\opensuse\boot\syslinux\"
 File /oname=$PLUGINSDIR\suse.cfg "Menu\suse.cfg" 
 File /oname=$PLUGINSDIR\config.isoclient "Menu\config.isoclient" 
 Rename "$BootDir\multiboot\opensuse\config.isoclient" "$BootDir\multiboot\opensuse\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\config.isoclient" "$BootDir\multiboot\opensuse\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suse.cfg" "$BootDir\multiboot\menu\suse.cfg" 
 StrCpy $SUSEDIR "opensuse"
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuse\boot\grub\mbrid" "$BootDir\boot\grub\mbrid"
 
 ${ElseIf} $DistroName == "OpenSUSE 11.4 GNOME x64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuse64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 11.4 Gnome x64$\r$\nmenu label OpenSUSE 11.4 Gnome x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suse64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuse64\boot\x86_64\loader\" "$BootDir\multiboot\opensuse64\boot\syslinux\"
 File /oname=$PLUGINSDIR\suse64.cfg "Menu\suse64.cfg" 
 File /oname=$PLUGINSDIR\config64.isoclient "Menu\config64.isoclient"  
 Rename "$BootDir\multiboot\opensuse64\config.isoclient" "$BootDir\multiboot\opensuse64\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\config64.isoclient" "$BootDir\multiboot\opensuse64\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suse64.cfg" "$BootDir\multiboot\menu\suse64.cfg" 
 StrCpy $SUSEDIR "opensuse64" 
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuse64\boot\grub\mbrid" "$BootDir\boot\grub\mbrid"
 
 ${ElseIf} $DistroName == "OpenSUSE 11.4 KDE i686" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuseKDE\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 11.4 KDE i686$\r$\nmenu label OpenSUSE 11.4 KDE i686$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suseKDE.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuseKDE\boot\i386\loader\" "$BootDir\multiboot\opensuseKDE\boot\syslinux\"
 File /oname=$PLUGINSDIR\suseKDE.cfg "Menu\suseKDE.cfg" 
 File /oname=$PLUGINSDIR\configKDE.isoclient "Menu\configKDE.isoclient" 
 Rename "$BootDir\multiboot\opensuseKDE\config.isoclient" "$BootDir\multiboot\opensuseKDE\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\configKDE.isoclient" "$BootDir\multiboot\opensuseKDE\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suseKDE.cfg" "$BootDir\multiboot\menu\suseKDE.cfg" 
 StrCpy $SUSEDIR "opensuseKDE"
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuseKDE\boot\grub\mbrid" "$BootDir\boot\grub\mbrid"
 
 ${ElseIf} $DistroName == "OpenSUSE 11.4 KDE x64" 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\opensuseKDE64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label OpenSUSE 11.4 KDE x64$\r$\nmenu label OpenSUSE 11.4 KDE x64$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/suseK64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 Rename "$BootDir\multiboot\opensuseKDE64\boot\x86_64\loader\" "$BootDir\multiboot\opensuseKDE64\boot\syslinux\"
 File /oname=$PLUGINSDIR\suseK64.cfg "Menu\suseK64.cfg" 
 File /oname=$PLUGINSDIR\configKDE64.isoclient "Menu\configKDE64.isoclient"  
 Rename "$BootDir\multiboot\opensuseKDE64\config.isoclient" "$BootDir\multiboot\opensuseKDE64\oldconfig.isoclient"
 CopyFiles "$PLUGINSDIR\configKDE64.isoclient" "$BootDir\multiboot\opensuseKDE64\config.isoclient" 
 CopyFiles "$PLUGINSDIR\suseK64.cfg" "$BootDir\multiboot\menu\suseK64.cfg" 
 StrCpy $SUSEDIR "opensuseKDE64" 
 Call MBRID 
 CopyFiles "$BootDir\multiboot\opensuseKDE64\boot\grub\mbrid" "$BootDir\boot\grub\mbrid" 
 
 ${ElseIf} $DistroName == "Zorin OS Core"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\zorin\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Zorin OS$\r$\nmenu label Zorin OS$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/zorin.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\zorin.cfg "Menu\zorin.cfg"  
 CopyFiles "$PLUGINSDIR\zorin.cfg" "$BootDir\multiboot\menu\zorin.cfg" 
 
 ${ElseIf} $DistroName == "Zorin OS Core 64bit"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\zorin64\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Zorin OS 64bit$\r$\nmenu label Zorin OS 64bit$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/zorin64.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\zorin64.cfg "Menu\zorin64.cfg"  
 CopyFiles "$PLUGINSDIR\zorin64.cfg" "$BootDir\multiboot\menu\zorin64.cfg"  
 
 ${ElseIf} $DistroName == "F-Secure Rescue CD"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\fsecure\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label F-Secure Rescue CD$\r$\nmenu label F-Secure Rescue CD$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/fsecure.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fsecure.cfg "Menu\fsecure.cfg"  
 CopyFiles "$PLUGINSDIR\fsecure.cfg" "$BootDir\multiboot\menu\fsecure.cfg"  
 CreateDirectory "$BootDir\fsecure\rescuecd"
 
 ${ElseIf} $DistroName == "Hiren's Boot CD 15.X"
 ;ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ;ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\Hiren*.iso" -ir!HBCD -o"$BootDir\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!HBCD -o"$BootDir\" -y' 
 ;RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Hiren's Boot CD 15.X$\r$\nmenu label Hiren's Boot CD 15.X$\r$\nMENU INDENT 1$\r$\nCOM32 /HBCD/Boot/chain.c32 ntldr=/HBCD/grldr" $R0
 ;${WriteToFile} "label Hiren's Boot CD 15.X$\r$\nmenu label Hiren's Boot CD 15.X$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/HBCD/menu.lst" $R0 
 
 ${ElseIf} $DistroName == "HP SmartStart 8.60 x32"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\SS860*x86.iso" -o"$BootDir\multiboot\HP\ss860_x32\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP SmartStart 8.60 x32$\r$\nmenu label HP SmartStart 8.60 x32$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/ss86032.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\ss86032.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ss86032.lst "Menu\ss86032.lst"  
 CopyFiles "$PLUGINSDIR\ss86032.lst" "$BootDir\multiboot\menu\ss86032.lst"   
 
 ${ElseIf} $DistroName == "HP SmartStart 8.60 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\SS860*x64.iso" -o"$BootDir\multiboot\HP\ss860_x64\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP SmartStart 8.60 x64$\r$\nmenu label HP SmartStart 8.60 x64$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/ss860.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\ss860.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ss860.lst "Menu\ss860.lst"  
 CopyFiles "$PLUGINSDIR\ss860.lst" "$BootDir\multiboot\menu\ss860.lst"  
 
 ${ElseIf} $DistroName == "HP SmartStart 8.70 x32"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\SS870*x86.iso" -o"$BootDir\multiboot\HP\ss870_x32\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP SmartStart 8.70 x32$\r$\nmenu label HP SmartStart 8.70 x32$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/ss87032.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\ss87032.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ss87032.lst "Menu\ss87032.lst"  
 CopyFiles "$PLUGINSDIR\ss87032.lst" "$BootDir\multiboot\menu\ss87032.lst"   
 
 ${ElseIf} $DistroName == "HP SmartStart 8.70 x64"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\SS870*x64.iso" -o"$BootDir\multiboot\HP\ss870_x64\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP SmartStart 8.70 x64$\r$\nmenu label HP SmartStart 8.70 x64$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/ss870.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\ss870.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ss870.lst "Menu\ss870.lst"  
 CopyFiles "$PLUGINSDIR\ss870.lst" "$BootDir\multiboot\menu\ss870.lst"  

 ${ElseIf} $DistroName == "HP Firmware Maintenance 8.70 (CD)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\FW870*.iso" -o"$BootDir\multiboot\HP\fwcd\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP Firmware Maintenance 8.70$\r$\nmenu label HP Firmware Maintenance 8.70$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/fw870.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\fw870.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fw870.lst "Menu\fw870.lst"  
 CopyFiles "$PLUGINSDIR\fw870.lst" "$BootDir\multiboot\menu\fw870.lst"   
 
 ${ElseIf} $DistroName == "HP Automatic Firmware Update 9.30 (DVD)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\FW930*.iso" -o"$BootDir\multiboot\HP\fwdvd\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP Automatic Firmware Update 9.30$\r$\nmenu label HP Automatic Firmware Update 9.30$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/fw930.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\fw930.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fw930.lst "Menu\fw930.lst"  
 CopyFiles "$PLUGINSDIR\fw930.lst" "$BootDir\multiboot\menu\fw930.lst"  
 
 ${ElseIf} $DistroName == "HP Automatic Firmware Update 10.10 (DVD)"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$EXEDIR\TEMPYUMI" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$EXEDIR\TEMPYUMI\FW10*.iso" -o"$BootDir\multiboot\HP\fwdvd10\" -y' 
 RMDir /R "$EXEDIR\TEMPYUMI"
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label HP Automatic Firmware Update 10.10$\r$\nmenu label HP Automatic Firmware Update 10.10$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/fw1010.lst" $R0
 ${AndIfNot} ${FileExists} $BootDir\multiboot\menu\fw1010.lst
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\fw1010.lst "Menu\fw1010.lst"  
 CopyFiles "$PLUGINSDIR\fw1010.lst" "$BootDir\multiboot\menu\fw1010.lst"   
 
 ${ElseIf} $DistroName == "Slacko Puppy"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\slacko53\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Slacko Puppy$\r$\nmenu label Slacko Puppy$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/slacko53.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\slacko53.cfg "Menu\slacko53.cfg"  
 CopyFiles "$PLUGINSDIR\slacko53.cfg" "$BootDir\multiboot\menu\slacko53.cfg"   
 
 ${ElseIf} $DistroName == "DPup Exprimo"
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\dpup\" -y'  
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label DPup Exprimo$\r$\nmenu label DPup Exprimo$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c32$\r$\nAPPEND /multiboot/menu/dpup.cfg" $R0
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\dpup.cfg "Menu\dpup.cfg"  
 CopyFiles "$PLUGINSDIR\dpup.cfg" "$BootDir\multiboot\menu\dpup.cfg"    
 
 ${ElseIf} $DistroName == "Windows Vista/7/8 Installer"
 #ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!autorun.inf -x!setup.exe -x!bootmgr -x!bootmgr.efi -o"$BootDir\" -y' 
 #ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!bootmgr -o"$BootDir\multiboot\Win7\" -y' 
 ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -o"$BootDir\" -y -x![BOOT]*'
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Windows Vista/7/8 Installer$\r$\nmenu label Windows Vista/7/8 Installer$\r$\nMENU INDENT 1$\r$\nCOM32 /multiboot/chain.c32 fs ntldr=/bootmgr" $R0
 
 #${ElseIf} $DistroName == "Windows Vista Installer"
 #ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -x!autorun.inf -x!setup.exe -x!bootmgr -o"$BootDir\" -y' 
 #ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -ir!bootmgr -o"$BootDir\multiboot\Vista\" -y' 
 #${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 #${WriteToFile} "label Windows Vista Installer$\r$\nmenu label Windows Vista Installer$\r$\nMENU INDENT 1$\r$\nCOM32 /multiboot/chain.c32 fs ntldr=/multiboot/Vista/bootmgr" $R0 
 
 ${ElseIf} $DistroName == "Ultimate Boot CD (Diagnostics Tools)"  
 CopyFiles $ISOFile "$BootDir\$PathName" 
 ${AndIf} ${FileExists} $BootDir\$SomeFile2Check 
 ${WriteToFile} "label Ultimate Boot CD$\r$\nmenu label Ultimate Boot CD$\r$\nMENU INDENT 1$\r$\nKERNEL /multiboot/grub.exe$\r$\nAPPEND --config-file=/multiboot/menu/ubcd.lst" $R0   
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\ubcd.lst "Menu\ubcd.lst"  
 CopyFiles "$PLUGINSDIR\ubcd.lst" "$BootDir\multiboot\menu\ubcd.lst"   
 
 ${ElseIf} $DistroName == "Windows XP Installer" 
 CopyFiles $ISOFile "$BootDir\multiboot\ISOS\$NameThatISO"
 ${AndIf} ${FileExists} $BootDir\multiboot\ISOS\$NameThatISO 
 ${WriteToFile} "title Begin Install of Windows XP from $NameThatISO (Stage 1)$\r$\nfind --set-root /multiboot/ISOS/$NameThatISO$\r$\nmap (hd0) (hd1)$\r$\nmap (hd1) (hd0)$\r$\nmap --mem /multiboot/ISOS/firadisk.img (fd0)$\r$\nmap --mem /multiboot/ISOS/firadisk.img (fd1)$\r$\nmap --mem /multiboot/ISOS/$NameThatISO (0xff)$\r$\nmap --hook$\r$\nchainloader (0xff)/I386/SETUPLDR.BIN$\r$\n$\r$\ntitle Continue Windows XP Install from $NameThatISO (Stage 2)$\r$\nfind --set-root /multiboot/ISOS/$NameThatISO$\r$\nmap (hd0) (hd1)$\r$\nmap (hd1) (hd0)$\r$\nmap --mem /multiboot/ISOS/$NameThatISO (0xff)$\r$\nmap --hook$\r$\nchainloader (hd0)+1$\r$\n$\r$\ntitle Boot Windows XP - If fails, reboot with USB removed (Stage 3)$\r$\nmap (hd1) (hd0)$\r$\nmap (hd0) (hd1)$\r$\nroot (hd1,0)$\r$\nfind --set-root /ntldr$\r$\nchainloader /ntldr" $R0  
 SetShellVarContext all
 InitPluginsDir
 File /oname=$PLUGINSDIR\firadisk.img "firadisk.img"  
 CopyFiles "$PLUGINSDIR\firadisk.img" "$BootDir\multiboot\ISOS\firadisk.img"   
 
; Windows Defender Offline entry submitted by Vinny Valdez 
 ${ElseIf} $DistroName == "Windows Defender Offline (32-bit)"
 CopyFiles $ISOFile "$BootDir\multiboot\ISOS\$NameThatISO"
 ${AndIf} ${FileExists} $BootDir\multiboot\ISOS\$NameThatISO 
 ${WriteToFile} "label Windows Defender Offline (32-bit)$\r$\nmenu label Windows Defender Offline (32-bit)$\r$\nMENU INDENT 1$\r$\nLINUX /multiboot/grub.exe$\r$\nAPPEND --config-file=$\"ls /multiboot/ISOS/$NameThatISO || find --set-root /multiboot/ISOS/$NameThatISO;map --heads=0 --sectors-per-track=0 /multiboot/ISOS/$NameThatISO (0xff) || map --heads=0 --sectors-per-track=0 --mem /multiboot/ISOS/$NameThatISO (0xff);map --hook;chainloader (0xff)$\"" $R0

 ${ElseIf} $DistroName == "Windows Defender Offline (64-bit)"
 CopyFiles $ISOFile "$BootDir\multiboot\ISOS\$NameThatISO"
 ${AndIf} ${FileExists} $BootDir\multiboot\ISOS\$NameThatISO 
 ${WriteToFile} "label Windows Defender Offline (64-bit)$\r$\nmenu label Windows Defender Offline (64-bit)$\r$\nMENU INDENT 1$\r$\nLINUX /multiboot/grub.exe$\r$\nAPPEND --config-file=$\"ls /multiboot/ISOS/$NameThatISO || find --set-root /multiboot/ISOS/$NameThatISO;map --heads=0 --sectors-per-track=0 /multiboot/ISOS/$NameThatISO (0xff) || map --heads=0 --sectors-per-track=0 --mem /multiboot/ISOS/$NameThatISO (0xff);map --hook;chainloader (0xff)$\"" $R0
 
; ##################################### ADD NEW DISTRO ########################################
  
 ${ElseIf} $DistroName == "Try an Unlisted ISO" 
 CopyFiles $ISOFile "$BootDir\multiboot\ISOS\$NameThatISO"
 ${AndIf} ${FileExists} $BootDir\multiboot\ISOS\$NameThatISO 
 ${WriteToFile} "# Modify the following entry if it does not boot$\r$\ntitle Boot $NameThatISO$\r$\nfind --set-root --ignore-floppies --ignore-cd /multiboot/ISOS/$NameThatISO$\r$\nmap --heads=0 --sectors-per-track=0 /multiboot/ISOS/$NameThatISO (hd32)$\r$\nmap --hook$\r$\nchainloader (hd32)" $R0 
 
 ${ElseIf} $DistroName == "Try an Unlisted ISO (Run from RAM)" 
 CopyFiles $ISOFile "$BootDir\multiboot\ISOS\$NameThatISO"
 ${AndIf} ${FileExists} $BootDir\multiboot\ISOS\$NameThatISO 
 ${WriteToFile} "# Modify the following memory based entry if it does not boot$\r$\ntitle Boot $NameThatISO from Memory$\r$\nfind --set-root --ignore-floppies --ignore-cd /multiboot/ISOS/$NameThatISO$\r$\nmap --heads=0 --sectors-per-track=0 --mem /multiboot/ISOS/$NameThatISO (hd32)$\r$\nmap --hook$\r$\nroot (hd32)$\r$\nchainloader (hd32)" $R0
 ${EndIf}  
 
 DetailPrint "$DistroName and its menu entry were added!"
!macroend