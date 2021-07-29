#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

; run shortcuts in autostart folder

Folder := "autostart"
File := Folder "\*.lnk"

Loop, % File {
  Run, % A_LoopFileName, % Folder
}

Return ; end of auto-execute

; hotkeys

#a::
  Reload
Return
