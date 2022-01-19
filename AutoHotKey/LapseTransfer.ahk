#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

Source := "E:\Timeshots"
Type := "jpg"
Destination := "E:\Timeshots\new"
Prefix := "moln"
StartDigit := 1

; gui
Gui, +AlwaysOnTop +LabelLapseTransfer +ToolWindow -MinimizeBox -SysMenu
Gui, Color, White
Gui, Font,, Segoe UI
Gui, Add, Button, x117 y167 w75 h23, % "Transfer"
Gui, Add, Button, x200 y167 w75 h23, % "Cancel"

; text
Gui, Add, Text, x20 y10 w120 h20, % "Source"
Gui, Add, Text, x20 y40 w120 h20, % "Destination"
Gui, Add, Text, x20 y70 w120 h20, % "Prefix"
Gui, Add, Text, x20 y100 w120 h20, % "Start digit"
Gui, Add, Text, x20 y130 w120 h20, % "Type"

; inputs
Gui, Add, Edit, x100 y10 w174 h20 vSource, % Source
Gui, Add, Edit, x100 y40 w174 h20 vDestination, % Destination
Gui, Add, Edit, x100 y70 w174 h20 vPrefix, % Prefix
Gui, Add, Edit, x100 y100 w40 h20 vStartDigit, % StartDigit
Gui, Add, Edit, x100 y130 w40 h20 vType, % Type

Gui, Show, w290 h200, % "LapseTransfer"

Return ; end of auto-execute

ButtonCancel:
GuiClose:
ExitApp

ButtonTransfer:
Gui, Submit

; run at maximum speed
SetBatchLines, -1

File := Source "\*." Type
FileCount = 0

; get file count
Loop, % File {
  ; skip hidden, read-only and system files
  if A_LoopFileAttrib contains H,R,S || A_LoopFileExt != %Type%
    continue
  FileCount += 1
}

; progress bar gui
Gui, New, +AlwaysOnTop +LabelLapseTransferProgress +ToolWindow -MinimizeBox -SysMenu
Gui, Add, Progress, x10 w200 h20 vProgressBar Range0-%FileCount%
Gui, Add, Text, x10 y35 w200 h20 vProgressText, % "Preparing ..."
Gui, Add, Button, x300 y70 w75 h23, % "Cancel"
Gui, Show, w400 h108, % "LapseTransfer in progress ..."

; create dir
ifNotExist, % Destination
  FileCreateDir, % destination

Digits := StrLen(FileCount + StartDigit)
Iterator := StartDigit

; move and rename files
Loop, % File {
  Postfix := Iterator
  Zeros := Digits - StrLen(Iterator)

  Loop, % Zeros {
    Postfix := "0" Postfix
  }

  ; move
  FileMove, % File, % Destination "\" Prefix "-" Postfix ".*"
  Iterator++
  GuiControl,, ProgressBar, +1
  GuiControl,, ProgressText, % "Moving item " A_Index "/" FileCount
}

Gui, Submit

; finished gui
Gui, New, +AlwaysOnTop +LabelLapseTransferFinished +ToolWindow -MinimizeBox -SysMenu
Gui, Add, Text, x10 w200 h20, % "LapseTransfer complete."
Gui, Add, Button, x120 y45 w75 h23, % "Close"
Gui, Show, w220 h80, % "LapseTransfer"

Return

ButtonClose:
ExitApp
