﻿#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

; gui
Gui, +AlwaysOnTop +LabelPhotoTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x200 y250 w75 h23, % "Close"
Gui, Show, h283 w290, % "AutoHotKey Master"

; texts
Gui, Add, Text, x20 y10 w120 h20, % "Shortcuts"
Gui, Add, Text, x20 y40 w120 h20, % "Chars"
Gui, Add, Text, x20 y70 w120 h20, % "CaseConverter"
Gui, Add, Text, x20 y100 w120 h20, % "PhotoTransfer" 
Gui, Add, Text, x20 y130 w120 h20, % "LapseTransfer" 
Gui, Add, Text, x20 y160 w120 h20, % "AutoStart" 

; buttons
Gui, Add, Button, x200 y10 w75 h20 gRunShortcuts, % "Run"
Gui, Add, Button, x200 y40 w75 h20 gRunChars, % "Run"
Gui, Add, Button, x200 y70 w75 h20  gRunCaseConverter, % "Run"
Gui, Add, Button, x200 y100 w75 h20 gRunPhotoTransfer, % "Run"
Gui, Add, Button, x200 y130 w75 h20 gRunLapseTransfer, % "Run"
Gui, Add, Button, x200 y160 w75 h20 gRunAutoStart, % "Run"

Return ; end of auto-execute

ButtonClose:
  ExitApp
  
GuiClose:
  ExitApp

RunShortcuts:
  Run, % "Shortcuts.ahk"
  Return

RunChars:
  Run, % "Chars.ahk"
  Return

RunCaseConverter:
  Run, % "CaseConverter.ahk"
  Return

RunPhotoTransfer:
  Run, % "PhotoTransfer.ahk"
  Return

RunLapseTransfer:
  Run, % "LapseTransfer.ahk"
  Return

RunAutoStart:
  Run, % "AutoStart.ahk"
  Return
