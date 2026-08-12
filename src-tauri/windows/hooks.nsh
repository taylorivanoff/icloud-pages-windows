; Startup + icloud-pages:// protocol

!macro NSIS_HOOK_POSTINSTALL
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Pages" '"$INSTDIR\iCloud Pages.exe"'
  WriteRegStr HKCU "Software\Classes\icloud-pages" "" "URL:iCloud Pages"
  WriteRegStr HKCU "Software\Classes\icloud-pages" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-pages\shell\open\command" "" '"$INSTDIR\iCloud Pages.exe" "%1"'
!macroend

!macro NSIS_HOOK_PREUNINSTALL
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Pages"
  DeleteRegKey HKCU "Software\Classes\icloud-pages"
!macroend
