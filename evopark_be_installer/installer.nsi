!include "MUI2.nsh"
!include "nsDialogs.nsh"
!include "LogicLib.nsh"

!define APPNAME "EvoPark Backend Installer"
!define COMPANYNAME "ZainLabs"
!define APPDIR "C:\EvoParkBE"
!define REGKEY "Software\${COMPANYNAME}\EvoParkBE"

SetCompressor /SOLID lzma

Name "${APPNAME}"
OutFile "EvoParkInstaller.exe"
InstallDir "${APPDIR}"
InstallDirRegKey HKCU "${REGKEY}" "InstallPath"
RequestExecutionLevel admin

Icon "installer-assets\evo.ico"
UninstallIcon "installer-assets\evo.ico"

!define MUI_ABORTWARNING

Var USER_NAME

Page custom PageInputUser PageLeaveInputUser
Page custom Page_installBE Leave_installBE
Page custom Page_installDB Leave_installDB
Page custom Page_initDB Leave_initDB
Page custom Page_startPostgres Leave_startPostgres
Page custom Page_settingDB Leave_settingDB
Page custom Page_importDB Leave_importDB
Page custom Page_startServer Leave_startServer

!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_LANGUAGE "English"

###########################################
# ====== Halaman 1: Input User ===========
###########################################

Function PageInputUser
  nsDialogs::Create 1018
  Pop $0
  ${If} $0 == error
    Abort
  ${EndIf}

  ${NSD_CreateLabel} 0u 10u 100% 12u "Masukkan nama pengguna:"
  Pop $1

  ${NSD_CreateText} 0u 30u 100% 12u ""
  Pop $USER_NAME

  nsDialogs::Show
FunctionEnd

Function PageLeaveInputUser
  ${NSD_GetText} $USER_NAME $0
  ${If} "$0" == ""
    MessageBox MB_OK "Nama tidak boleh kosong!"
    Abort
  ${Else}
    StrCpy $USER_NAME "$0"
    WriteRegStr HKCU "${REGKEY}" "UserName" "$USER_NAME"
  ${EndIf}
FunctionEnd

###########################################
# ====== Halaman 2 - 8: Jalankan .bat ====
###########################################

!macro RunStepPage NAME FILE
  Function Page_${NAME}
    nsDialogs::Create 1018
    Pop $0
    ${If} $0 == error
      Abort
    ${EndIf}
    ${NSD_CreateLabel} 0u 20u 100% 20u "Langkah: ${NAME}. Klik Next untuk melanjutkan."
    Pop $1
    nsDialogs::Show
  FunctionEnd

  Function Leave_${NAME}
    DetailPrint "🚀 Menjalankan ${FILE}..."
    ExecWait '"$INSTDIR\${FILE}"' $0
    ${If} $0 != 0
      MessageBox MB_OK|MB_ICONSTOP "${FILE} gagal dijalankan! Exit code: $0"
      Abort
    ${EndIf}
  FunctionEnd
!macroend

!insertmacro RunStepPage "installBE" "installBE.bat"
!insertmacro RunStepPage "installDB" "installDB.bat"
!insertmacro RunStepPage "initDB" "initDB.bat"
!insertmacro RunStepPage "startPostgres" "StartPostgres.bat"
!insertmacro RunStepPage "settingDB" "settingDB.bat"
!insertmacro RunStepPage "importDB" "importDB.bat"
!insertmacro RunStepPage "startServer" "startServer.bat"

###########################################
# ========== Section Install =============
###########################################

Section "Install"
  SetOutPath "$INSTDIR"

  ; Salin semua .bat ke $INSTDIR
  File "..\installBE.bat"
  File "..\installDB.bat"
  File "..\initDB.bat"
  File "..\StartPostgres.bat"
  File "..\settingDB.bat"
  File "..\importDB.bat"
  File "..\startServer.bat"

  ; Simpan lokasi ke registry
  WriteRegStr HKCU "${REGKEY}" "InstallPath" "$INSTDIR"

  ; Buat uninstall
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\installBE.bat"
  Delete "$INSTDIR\installDB.bat"
  Delete "$INSTDIR\initDB.bat"
  Delete "$INSTDIR\StartPostgres.bat"
  Delete "$INSTDIR\settingDB.bat"
  Delete "$INSTDIR\importDB.bat"
  Delete "$INSTDIR\startServer.bat"
  Delete "$INSTDIR\Uninstall.exe"
  RMDir /r "$INSTDIR"
  DeleteRegKey HKCU "${REGKEY}"
SectionEnd
