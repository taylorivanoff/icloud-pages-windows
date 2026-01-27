!macro customInstall
  ; Add to Windows startup
  WriteRegStr HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Pages" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  ; Register protocol handler
  WriteRegStr HKCU "Software\Classes\icloud-pages" "" "URL:iCloud Pages"
  WriteRegStr HKCU "Software\Classes\icloud-pages" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\icloud-pages\shell\open\command" "" '"$INSTDIR\${APP_EXECUTABLE_FILENAME}" "%1"'
!macroend

!macro customUnInstall
  ; Remove startup entry
  DeleteRegValue HKCU "Software\Microsoft\Windows\CurrentVersion\Run" "iCloud Pages"
  ; Remove protocol handler
  DeleteRegKey HKCU "Software\Classes\icloud-pages"
!macroend
