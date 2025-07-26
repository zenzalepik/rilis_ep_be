!include "MUI2.nsh"

!define APPNAME "EvoParkBE"
#!define APPDIR "$PROGRAMFILES64\EvoPark"
!define APPDIR "C:\EvoParkBE"

SetCompressor /SOLID lzma

Name "${APPNAME} Installer"
OutFile "EvoParkBEInstaller.exe"
InstallDir "${APPDIR}"
Icon "${__FILEDIR__}\installer-assets\evo.ico"
UninstallIcon "${__FILEDIR__}\installer-assets\evo.ico"

InstallDirRegKey HKCU "Software\EvoParkBE" "InstallPath"
RequestExecutionLevel admin

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

Section "Install"
  SetOutPath "$INSTDIR"

  # ==============================================
  # Copy Semua File .bat dan .ps1 dari folder root
  # ==============================================
  File /r "..\SetupAll.bat"
  File /r "..\SetupAll.ps1"
  File /r "..\StartPostgres.bat"
  File /r "..\StartPostgres.ps1"
  File /r "..\StatusPostgres.bat"
  File /r "..\StatusPostgres.ps1"
  File /r "..\startServer.bat"
  File /r "..\startServer.ps1"
  File /r "..\installBE.bat"
  File /r "..\installBE.ps1"
  File /r "..\installDB.bat"
  File /r "..\installDB.ps1"
  File /r "..\initDB.bat"
  File /r "..\initDB.ps1"
  File /r "..\importDB.bat"
  File /r "..\importDB.ps1"
  File /r "..\settingDB.bat"
  File /r "..\settingDB.ps1"

  # ==============================================
  # Jalankan SetupAll.ps1 via PowerShell
  # ==============================================
  DetailPrint "Menjalankan proses instalasi backend EvoParkBE..."
  ExecWait 'powershell -ExecutionPolicy Bypass -NoProfile -File "$INSTDIR\SetupAll.ps1"'

  DetailPrint "Instalasi selesai."

  # Buat file uninstall
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\*.ps1"
  Delete "$INSTDIR\*.bat"
  Delete "$INSTDIR\Uninstall.exe"
  RMDir /r "$INSTDIR"
  DeleteRegKey HKCU "Software\EvoParkBE"
SectionEnd
