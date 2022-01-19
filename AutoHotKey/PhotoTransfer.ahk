#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

Source := "E:\DCIM\100NCD60\*.jpg"
ToType := "*"
ReDestination := "H:\Photographs"
ReName := "date-time"

; gui
Gui, +AlwaysOnTop +LabelPhotoTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x117 y167 w75 h23, % "Transfer"
Gui, Add, Button, x200 y167 w75 h23, % "Cancel"
Gui, Show, h200 w290, % "PhotoTransfer"

; text
Gui, Add, Text, x20 y10 w120 h20, % "Source"
Gui, Add, Text, x20 y40 w120 h20, % "Destination"
Gui, Add, Text, x20 y70 w120 h20, % "Name"
Gui, Add, Text, x20 y100 w120 h20, % "Convert to"

; inputs
Gui, Add, Edit, x100 y10 w174 h20 vSource, % Source
Gui, Add, Edit, x100 y40 w174 h20 vReDestination, % ReDestination
Gui, Add, Edit, x100 y70 w174 h20 vReName, % "date-time"
Gui, Add, Edit, x100 y100 w40 h20 vToType, % ToType

Return ; end of auto-execute

ButtonCancel:
GuiClose:
ExitApp

ButtonTransfer:
Gui, Submit

Loop, % Source {
  ; format time
  FileGetTime, DateAndTime, % Source, % "M"
  FormatTime, Date, % DateAndTime, % "yyyyMMdd"
  FormatTime, Time, % DateAndTime, % "HHmmss"
  FormatTime, Year, % DateAndTime, % "yyyy"
  FormatTime, Month, % DateAndTime, % "MM"

  ; read destination
  Destination := ReDestination "\" Year "\" Year "-" Month

  ; read name
  if (ReName = "date-time") {
    Name := Date "-" Time
  }
  else if (ReName = "date") {
    Name := Date
  }
  else {
    Name := ReName
  }

  ; create dir
  if (!FileExist(Destination)) {
    FileCreateDir, % Destination
  }

  ; move file
  File := Destination "\" Name "." ToType
  if (FileExist(File)) {
    Increment = 1

    Loop {
      File := Destination "\" Name " (" Increment ")." ToType

      if (FileExist(File)) {
        Increment++
      }
      else {
        FileMove, % Source, % File
        Break
      }
    }
  }
  else {
    FileMove, % Source, % File
  }
}

ExitApp
