;
; Maya Plug-in Self-Installer for Windows
; (NifTools - http://niftools.sourceforge.net) 
; (NSIS - http://nsis.sourceforge.net)
;
; Copyright (c) 2005-2014, NIF File Format Library and Tools
; All rights reserved.
; 
; Redistribution and use in source and binary forms, with or without
; modification, are permitted provided that the following conditions are
; met:
; 
;     * Redistributions of source code must retain the above copyright
;       notice, this list of conditions and the following disclaimer.
;     * Redistributions in binary form must reproduce the above copyright
;       notice, this list of conditions and the following disclaimer in the
;       documentation ; and/or other materials provided with the
;       distribution.
;     * Neither the name of the NIF File Format Library and Tools project
;       nor the names of its contributors may be used to endorse or promote
;       products derived from this software without specific prior written
;       permission.
; 
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
; IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
; THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
; PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
; CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
; EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
; PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
; LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
; NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 

!include "MUI.nsh"

!define VERSION "0.7.0a"
!define FULL_NAME "Nif for Maya ${VERSION}"
!define MED_NAME "Nif for Maya"
!define REGKEY_UNINSTALLER "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MED_NAME}"
!define REGKEY_INSTALLER "Software\NifTools\${MED_NAME}"
!define MODULE_FILE "$DOCUMENTS\maya\modules\nif.mod"

Name "${MED_NAME}"

; define installer pages
!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_NOAUTOCLOSE

!define MUI_WELCOMEPAGE_TEXT  "This wizard will guide you through the installation of ${FULL_NAME}.\r\n\r\nAdministrative privileges are required on Windows 2000 and Windows XP."
!insertmacro MUI_PAGE_WELCOME

!insertmacro MUI_PAGE_LICENSE ..\license.txt

!define MUI_DIRECTORYPAGE_TEXT_TOP "To specify a different installation folder, type a new name or use the Browse button to select an existing folder."
!define MUI_DIRECTORYPAGE_TEXT_DESTINATION "Installation Folder"
!define MUI_DIRECTORYPAGE_VARIABLE $INSTDIR
!insertmacro MUI_PAGE_DIRECTORY

!insertmacro MUI_PAGE_INSTFILES

;!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\Maya_nif_exporter.chm"
!define MUI_FINISHPAGE_LINK "Visit us at http://niftools.sourceforge.net"
!define MUI_FINISHPAGE_LINK_LOCATION "http://niftools.sourceforge.net"
!insertmacro MUI_PAGE_FINISH

!define MUI_WELCOMEPAGE_TEXT  "This wizard will guide you through the uninstallation of ${FULL_NAME}.\r\n\r\nBefore starting the uninstallation, make sure Maya is not running."
!insertmacro MUI_UNPAGE_WELCOME
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

;--------------------------------
; Languages
 
!insertmacro MUI_LANGUAGE "English"
    
;--------------------------------
;Language Strings

;Description
LangString DESC_SecCopyUI ${LANG_ENGLISH} "Copy all required files to the installation and user application folders."

;--------------------------------
; Data

OutFile "nif-maya-${VERSION}.exe"
InstallDir "$PROGRAMFILES\NifTools\maya"
BrandingText "http://niftools.sourceforge.net/"
Icon inst.ico
UninstallIcon inst.ico
ShowInstDetails show
ShowUninstDetails show

;--------------------------------
; Functions

Section
  SectionIn RO
  SetOutPath "$INSTDIR"

  File /r ..\maya\Release\2012
  File /r ..\maya\Release\2012-x64
  File /r ..\maya\Release\2013
  File /r ..\maya\Release\2013-x64
  File /r ..\maya\Release\2014-x64
  File /r ..\maya\Release\2015-x64

  CreateDirectory "$DOCUMENTS\maya\modules"
  FileOpen $0 "${MODULE_FILE}" w

  FileWrite $0 "+ MAYAVERSION:2012 PLATFORM:win32 nif 1.0 $INSTDIR/2012$\r$\n"
  FileWrite $0 "PATH += $INSTDIR/2012$\r$\n"

  FileWrite $0 "+ MAYAVERSION:2012-x64 PLATFORM:win64 nif 1.0 $INSTDIR/2012-x64$\r$\n"
  FileWrite $0 "PATH += $INSTDIR/2012-x64$\r$\n"

  FileWrite $0 "+ MAYAVERSION:2013 PLATFORM:win32 nif 1.0 $INSTDIR/2013$\r$\n"
  FileWrite $0 "PATH += $INSTDIR/2013$\r$\n"

  FileWrite $0 "+ MAYAVERSION:2013-x64 PLATFORM:win64 nif 1.0 $INSTDIR/2013-x64$\r$\n"
  FileWrite $0 "PATH += $INSTDIR/2013-x64$\r$\n"

  FileWrite $0 "+ MAYAVERSION:2014 PLATFORM:win64 nif 1.0 $INSTDIR/2014-x64$\r$\n"
  FileWrite $0 "PATH += $INSTDIR/2014-x64$\r$\n"

  FileWrite $0 "+ MAYAVERSION:2015 PLATFORM:win64 nif 1.0 $INSTDIR/2015-x64$\r$\n"
  FileWrite $0 "PATH += $INSTDIR/2015-x64$\r$\n"

  FileClose $0

  ;File ..\CHM\Maya_nif_exporter.chm
  
  ; Install shortcuts
  CreateDirectory "$SMPROGRAMS\NifTools\${MED_NAME}\"
  ;CreateShortCut "$SMPROGRAMS\NifTools\${MED_NAME}\Maya nif exporter Help.lnk" "$INSTDIR\Maya_nif_exporter.chm"
 
  CreateShortCut "$SMPROGRAMS\NifTools\${MED_NAME}\Support.lnk" "http://www.niftools.org/forum/viewforum.php?f=23"
  CreateShortCut "$SMPROGRAMS\NifTools\${MED_NAME}\Uninstall.lnk" "$INSTDIR\uninstall.exe"

  ; Write the installation path into the registry
  WriteRegStr HKLM "${REGKEY_INSTALLER}" "InstallDir" "$INSTDIR"
  WriteRegStr HKLM "${REGKEY_INSTALLER}" "ModuleFile" "${MODULE_FILE}"

  ; Write the uninstall keys & uninstaller for Windows
  WriteRegStr HKLM "${REGKEY_UNINSTALLER}" "DisplayName" "${MED_NAME}"
  WriteRegStr HKLM "${REGKEY_UNINSTALLER}" "UninstallString" "$INSTDIR\uninstall.exe"
  SetOutPath "$INSTDIR"
  WriteUninstaller "uninstall.exe"
SectionEnd

Section "Uninstall"
  SetShellVarContext all
  SetAutoClose false

  ReadRegStr $0 HKLM "${REGKEY_INSTALLER}" "InstallDir"
  ReadRegStr $1 HKLM "${REGKEY_INSTALLER}" "ModuleFile"

  RMDir /r "$0"
  Delete "$1"

  DeleteRegKey HKLM "${REGKEY_INSTALLER}"
  DeleteRegKey HKLM "${REGKEY_UNINSTALLER}"
SectionEnd
