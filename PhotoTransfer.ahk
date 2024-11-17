#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

Source := "D:\DCIM\100NCD60\*.jpg"
ToType := "*"
ReDestination := "E:\Photographs"
ReName := "date-time"

; gui
Gui, +AlwaysOnTop +LabelPhotoTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x117 y167 w75 h23, % "Transfer"
Gui, Add, Button, x200 y167 w75 h23, % "Cancel"

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

Gui, Show, w290 h200, % "PhotoTransfer"

Return ; end of auto-execute

ButtonCancel:
  ExitApp

GuiClose:
  ExitApp

ButtonTransfer:
  Gui, Submit

  ; run at maximum speed
  SetBatchLines, -1
  
  FileCount = 0
  
  ; get file count
  Loop, % Source {
    ; skip hidden, read-only and system files
    if A_LoopFileAttrib contains H,R,S
      continue
    FileCount += 1
  }
  
  ; progress bar gui
  Gui, New, +AlwaysOnTop +LabelPhotoTransferProgress +ToolWindow -MinimizeBox -SysMenu
  Gui, Add, Progress, x10 w200 h20 vProgressBar Range0-%FileCount%
  Gui, Add, Text, x10 y35 w200 h20 vProgressText, % "Preparing ..."
  Gui, Add, Button, x300 y70 w75 h23, % "Cancel"
  Gui, Show, w400 h108, % "PhotoTransfer in progress ..."
  
  Loop, % Source, 0, 1
    ; format time
    FileGetTime, DateAndTime, % Source, % "M"
    FormatTime, Date, % DateAndTime, % "yyyyMMdd"
    FormatTime, Time, % DateAndTime, % "HHmmss"
    FormatTime, Year, % DateAndTime, % "yyyy"
    FormatTime, Month, % DateAndTime, % "MM"
  
    ; read destination
    Destination := ReDestination ; "\" Year "\" Year "-" Month
  
    ; read name
    Name := Date "-" Time
    ;if (ReName = "date-time") {
    ;  Name := Date "-" Time
    ;}
    ;else if (ReName = "date") {
    ;  Name := Date
    ;}
    ;else {
    ;  Name := ReName
    ;}
  
    ; create dir
    ifNotExist, % Destination
      FileCreateDir, % Destination
  
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
  
    GuiControl,, ProgressBar, +1
    GuiControl,, ProgressText, % "Moving item " A_Index "/" FileCount

  Gui, Submit
  
  ; finished gui
  Gui, New, +AlwaysOnTop +LabelPhoyoTransferFinished +ToolWindow -MinimizeBox -SysMenu
  Gui, Add, Text, x10 w200 h20, % "PhotoTransfer complete."
  Gui, Add, Button, x120 y45 w75 h23, % "Close"
  Gui, Show, w220 h80, % "PhotoTransfer"
  
  Return

ButtonClose:
  ExitApp
