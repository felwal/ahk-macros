#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

source = E:\DCIM\100NCD60\*.jpg
toType = *
reDestination = H:\Photographs\year\year-month
reName = date-time

; gui
Gui, +AlwaysOnTop +LabelPhotoTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x200 y167 w75 h23,  Cancel
Gui, Add, Button, x117 y167 w75 h23,  Transfer
Gui, Show, h200 w290,            Photo Transfer

; text
Gui, Add, Text, x20 y10 w120 h20,  Source
Gui, Add, Text, x20 y40 w120 h20,  Destination
Gui, Add, Text, x20 y70 w120 h20,  Name
Gui, Add, Text, x20 y100 w120 h20,  Convert to

; inputs
Gui, Add, Edit, x100 y10 w174 h20 vsource,      %source%
Gui, Add, Edit, x100 y40 w174 h20 vreDestination,  %reDestination%
Gui, Add, Edit, x100 y70 w174 h20 vreName,      date-time
Gui, Add, Edit, x100 y100 w40 h20 vtoType,      %toType%

;Gui, Add, DropDownList, x100 y10 w174 h100 vsource,       %source%
;Gui, Add, DropDownList, x100 y40 w174 h100 vreDestination,  %reDestination%
;Gui, Add, DropDownList, x100 y70 w174 h100 vreName,       date-time|date
;Gui, Add, DropDownList, x100 y100 w56 h100 vtoType,       jpg|NEF|png|pdn

Return ; end of auto-execute

ButtonCancel:
GuiClose:
ExitApp

ButtonTransfer:
Gui, Submit
Loop, %source% {
  ; format time
  FileGetTime,      dateAndTime,  %source%, M
  FormatTime, date,   %dateAndTime%, yyyyMMdd
  FormatTime, time,   %dateAndTime%, HHmmss
  FormatTime, year,   %dateAndTime%, yyyy
  FormatTime, month,  %dateAndTime%, MM

  ; read inputs
  if reDestination = H:\Photographs\year\year-month {
    destination = H:\Photographs\%year%\%year%-%month%
  }
  else {
    destination = %reDestination%
  }

  ; set name
  if reName = date-time {
    name = %date%-%time%
  }
  else if reName = date {
    name = %date%
  }
  else {
    name = %rename%
  }

  ; create dir
  ifNotExist, %destination% {
    FileCreateDir, %destination%
  }

  ; move file
  ifExist, %destination%\%name%.%toType% {
    increment = 1
    Loop {
      ifExist %destination%\%name% (%increment%).%toType% {
        increment++
      }
      else {
        FileMove, %source%, %destination%\%name% (%increment%).%toType%
        Break
      }
    }
  }
  else {
    FileMove, %source%, %destination%\%name%.%toType%
  }
}

ExitApp
