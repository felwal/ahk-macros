#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;^F12:: ChangeResolution(1280, 720) Return
;!F12:: ChangeResolution(1920, 1080) Return

ChangeResolution(Screen_Width := 1920, Screen_Height := 1080, Color_Depth := 32) {
  VarSetCapacity(Device_Mode,156,0)
  NumPut(156,Device_Mode,36)
  DllCall( "EnumDisplaySettingsA", UInt,0, UInt,-1, UInt,&Device_Mode )
  NumPut(0x5c0000,Device_Mode,40) NumPut(Color_Depth,Device_Mode,104)
  NumPut(Screen_Width,Device_Mode,108) NumPut(Screen_Height,Device_Mode,112)
  Return DllCall( "ChangeDisplaySettingsA", UInt,&Device_Mode, UInt,0 )
}

Return
