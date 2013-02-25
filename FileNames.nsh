; ------------ Filenames Macro --------------
!macro FileNames Distro2Check ISO2Check
 ${If} $Removal == "Yes"
 ${AndIf} ${FileExists} $BootDir\${ISO2Check}
 ${NSD_LB_AddString} $Distro "${Distro2Check}" 
 
 ${ElseIf} $Removal != "Yes" 
 ${AndIf} $FormatMe != "Yes"
 ${AndIfNot} ${FileExists} $BootDir\${ISO2Check}
 ${NSD_LB_AddString} $Distro "${Distro2Check}"
 
 ${ElseIf} $Removal != "Yes"  
 ${AndIf} $FormatMe == "Yes"
 ${NSD_LB_AddString} $Distro "${Distro2Check}" 
 ${EndIf}
!macroend

!macro SetISOFileNames Distro2Check ISO2Check2 Download2Get Path2Name GimmeSize Write2File File2Check Homepage OfficialName
 ${If} $DistroName == "${Distro2Check}" 
 StrCpy $ISOFileName "${ISO2Check2}"
 StrCpy $DownLink "${Download2Get}"  
 StrCpy $PathName "${Path2Name}"  
 StrCpy $SizeOfDistro "${GimmeSize}"
 StrCpy $Config2Use "${Write2File}"
 StrCpy $SomeFile2Check "${File2Check}"
 StrCpy $Homepage "${Homepage}" ; Linux Distro Homepage
 StrCpy $OfficialName "${OfficialName}" ; Linux Distro Name for Home Page Anchor
 ${EndIf}
!macroend