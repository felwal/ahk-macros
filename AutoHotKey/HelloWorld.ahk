#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::
  Send, Hello World
Return

^k::
  MsgBox, Hello World
Return

esc::
  MsgBox, Escape!
Return

::btw::
  MsgBox, You typed "btw".
Return

^b::
  Send, {ctrl down}c{ctrl up}
  SendInput, [b]{ctrl down}v{ctrl up}[/b]
Return
