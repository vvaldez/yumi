#!/bin/env python
#

# Data in  RemoveDistro.nsh

# ${ElseIf} $DistroName == "Archlinux" ;
# ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
# RMDir /R "$BootDir\multiboot\archlinux"
# ${DeleteMenuEntry} "$BootDir\multiboot\menu\$Config2Use" "label Archlinux" "APPEND /multiboot/menu/archlinux.cfg"
# Delete "$BootDir\multiboot\menu\archlinux.cfg"


# Data in  InstallDistro.nsh

# ${ElseIf} $DistroName == "Archlinux"
# ExecWait '"$PLUGINSDIR\7zG.exe" x "$ISOFile" -x![BOOT] -o"$BootDir\multiboot\archlinux\" -y'
# ${AndIf} ${FileExists} $BootDir\$SomeFile2Check
# ${WriteToFile} "label Archlinux$\r$\nmenu label Archlinux$\r$\nMENU INDENT 1$\r$\nkernel vesamenu.c45$\r$\nAPPEND /multiboot/menu/archlinux.cfg" $R0
# SetShellVarContext all
# InitPluginsDir
# File /oname=$PLUGINSDIR\archlinux.cfg "Menu\archlinux.cfg"
# CopyFiles "$PLUGINSDIR\archlinux.cfg" "$BootDir\multiboot\menu\archlinux.cfg"


# Data in YUMI.nsi

# !insertmacro FileNames "Archlinux" multiboot\archlinux\arch\boot\i686\archiso.img

# !insertmacro SetISOFileNames "Archlinux" archlinux-2011.08.19-core-dual.iso "http://mirrors.us.kernel.org/archlinux/iso/2011.08.19/archlinux-2011.08.19-core-dual.iso" archlinux-2011.08.19-core-dual.iso "673" linux.cfg multiboot\archlinux\arch\boot\i686\archiso.img "http://www.archlinux.org" "Archlinux"

import sys, string, os, re 

p1 = re.compile('.*DistroName.*"(.*)".*')
p2 = re.compile('.*"label (.*)" .*')
p3 = re.compile('.*label (.*)\$.*\$.*menu label (.*)\$.*\$.*MENU INDENT.*')
p4 = re.compile('\!insertmacro FileNames "(.+)" ("?.+"?)+')
p4 = re.compile(r'\!insertmacro FileNames \"(.+?)\" ');
p5 = re.compile(r'\!insertmacro SetISOFileNames \"(.+?)\" ');

ydistros   = []
isodistros = []
idistros   = []
ildistros  = []
rdistros   = []
rldistros  = []

in_file = open("YUMI.nsi","r")
for in_line in in_file.readlines():
  in_line = string.strip(in_line[:-1])
  if (len(in_line) < 2):   continue
  if (in_line[0] == ";"): continue
  if (in_line[0] == "#"): continue
  m4 = p4.match(in_line)
  if m4:
    s = p4.split(in_line)
    if (len(s[2]) < 5): continue
    ydistros.append(s[1])
  m5 = p5.match(in_line)
  if m5:
    s = p5.split(in_line)
    isodistros.append(s[1])
#    pieces = [i.strip('"').strip("'") for i in re.split(r'(\s+|(?<!\\)".*?(?<!\\)"|(?<!\\)\'.*?(?<!\\)\')', in_line) if i.strip()]
#    pieces = [p for p in re.split("( |\\\".*?\\\"|'.*?')", in_line) if p.strip()]
#    print pieces
in_file.close()

print "\nChecking YUMI.nsi"
print "\nMenu Item Distros not in SetISOFileNames\n"
for x in ydistros:
  cnt = isodistros.count(x)
  if (cnt == 0): print "    %s" % (x)

print "\nSetISOFileNames Distros not in Menu Item Distros\n"
for x in isodistros:
  cnt = ydistros.count(x)
  if (cnt == 0): print "    %s" % (x)

print "\nDone checking YUMI.nsi\n"

print "\nChecking InstallDistro.nsh\n"
print "\nLabel vs Menu Label [Mismatches]\n"
in_file = open("InstallDistro.nsh","r")
for in_line in in_file.readlines():
  in_line = string.strip(in_line[:-1])
  if (len(in_line) < 2):   continue
  if (in_line[0] == ";"): continue
  if (in_line[0] == "#"): continue
  m1 = p1.match(in_line)
  if m1:
    s = p1.split(in_line)
    idistros.append(s[1])
    idist = s[1]
  m3 = p3.match(in_line)
  if m3:
    s = p3.split(in_line)
    if (s[1] != s[2]): print "    %-45s %-45s" % (s[1],s[2])
    ildistros.append(s[1])
#   if (s[2] != idist): print "    %-45s != %-45s" % (distro,s[2])
in_file.close()

print "\nChecking RemoveDistro.nsh"
print "\nRemove Distros [DistroName != Label]\n"
in_file = open("RemoveDistro.nsh","r")
rdist = ""
for in_line in in_file.readlines():
  in_line = string.strip(in_line[:-1])
  if (len(in_line) < 2):   continue
  if (in_line[0] == ";"): continue
  if (in_line[0] == "#"): continue
  m1 = p1.match(in_line)
  if m1:
    s = p1.split(in_line)
    rdistros.append(s[1])
    rdist = s[1]
  m2 = p2.match(in_line)
  if m2:
    s = p2.split(in_line)
    if (s[1] != rdist): print "    %-45s %-45s" % (rdist,s[1])
    rldistros.append(s[1])
in_file.close()

print "\nDistros in Remove not in Install\n"
for x in rdistros:
  cnt = idistros.count(x)
  if (cnt == 0): print "    %s" % (x)

print "\nDistros in Install not in Remove\n"
for x in idistros:
  cnt = rdistros.count(x)
  if (cnt == 0): print "    %s" % (x)

print "\nLabels in Install not found in Remove\n"
for x in ildistros:
  cnt = rldistros.count(x)
  if (cnt == 0): print "    %s" % (x)

print "\nLabels in Remove not found in Install\n"
for x in rldistros:
  cnt = ildistros.count(x)
  if (cnt == 0): print "    %s" % (x)