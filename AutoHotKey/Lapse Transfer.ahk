#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

source = H:\Timeshots
type = jpg
destination = H:\Timeshots\new
prefix = moln
digits = 3

; Gui
Gui, +AlwaysOnTop +LabelPhotoTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x200 y167 w75 h23,   Cancel
Gui, Add, Button, x117 y167 w75 h23,   Transfer
Gui, Show, h200 w290,                  File Transfer

Gui, Add, Text, x20 y10 w120 h20,   Source
Gui, Add, Text, x20 y40 w120 h20,   Destination
Gui, Add, Text, x20 y70 w120 h20,   Prefix
Gui, Add, Text, x20 y100 w120 h20,  Digits
Gui, Add, Text, x20 y130 w120 h20,  Type

Gui, Add, Edit, x100 y10 w174 h20 vsource,       %source%
Gui, Add, Edit, x100 y40 w174 h20 vdestination,  %destination%
Gui, Add, Edit, x100 y70 w174 h20 vprefix,       %prefix%
Gui, Add, Edit, x100 y100 w40 h20 vdigits,       %digits%
Gui, Add, Edit, x100 y130 w40 h20 vtype,         %type%
Return

ButtonCancel:
GuiClose:
ExitApp

ButtonTransfer:
Gui, Submit

ifNotExist, %destination%
   FileCreateDir, %destination%

i = 1
file = %source%\*.%type%
Loop, %file%
{
   postfix := i
   zeros := digits - StrLen(i)
   Loop, %zeros%
   {
      postfix = 0%postfix%
   }

   FileMove, %file%, %destination%\%prefix%-%postfix%.*
   i++
}

ExitApp
