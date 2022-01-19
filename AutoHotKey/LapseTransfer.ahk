#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

Source := "E:\Timeshots"
Type := "jpg"
Destination := "E:\Timeshots\new"
Prefix := "moln"
Digits := 3
StartDigit := 1

; gui
Gui, +AlwaysOnTop +LabelPhotoTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x200 y197 w75 h23, % "Cancel"
Gui, Add, Button, x117 y197 w75 h23, % "Transfer"
Gui, Show, h230 w290, % "LapseTransfer"

; text
Gui, Add, Text, x20 y10 w120 h20, % "Source"
Gui, Add, Text, x20 y40 w120 h20, % "Destination"
Gui, Add, Text, x20 y70 w120 h20, % "Prefix"
Gui, Add, Text, x20 y100 w120 h20, % "Digits"
Gui, Add, Text, x20 y130 w120 h20, % "Start digit"
Gui, Add, Text, x20 y160 w120 h20, % "Type"

; inputs
Gui, Add, Edit, x100 y10 w174 h20 vSource, % Source
Gui, Add, Edit, x100 y40 w174 h20 vDestination, % Destination
Gui, Add, Edit, x100 y70 w174 h20 vPrefix, % Prefix
Gui, Add, Edit, x100 y100 w40 h20 vDigits, % Digits
Gui, Add, Edit, x100 y130 w40 h20 vStartDigit, % StartDigit
Gui, Add, Edit, x100 y160 w40 h20 vType, % Type

Return ; end of auto-execute

ButtonCancel:
GuiClose:
ExitApp

ButtonTransfer:
Gui, Submit

; create dir
ifNotExist, % Destination
  FileCreateDir, % destination

File := Source "\*." Type
Iterator := StartDigit

Loop, % File {
  Postfix := Iterator
  Zeros := Digits - StrLen(Iterator)

  Loop, % Zeros {
    Postfix := "0" Postfix
  }

  ; move
  FileMove, % File, % Destination "\" Prefix "-" Postfix ".*"
  Iterator++
}

ExitApp
