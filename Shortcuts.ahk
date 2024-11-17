#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

; hotskeys

; toggle script
F1::
  Suspend, Toggle
  Return

; disable insert
Insert::
  Return

; hotstrings

;
::ide::idé
:*:ideer::idéer

;
::js::javascript
::anst::android studio
::ciq::connect iq
::giq::garmin iq
::gciq::garmin connect iq

; xml
:*b0:<!::--  -->{Left 4}

; markdown
:*:mdsum::[summary]: {#} ""{Left}
:*:mdcode::``````{Enter 2}````````{BackSpace}{Left 5}
:*:mdfm::---{Enter 2}---{Enter 2}{Left 6}
:*:mdali::---{Enter}aliases: []{Enter}---{Enter}{Left 6}
:*:mdpap::---{Enter}retrieved: {Enter}---{Enter}{Left 5}
:*:mdtags::---{Enter}tags: []{Enter}---{Enter}{Left 6}

; obsidian
:*:dv.p(::dv.paragraph(){Left}

; python
:*b0:def main():::{Enter}{Tab}pass{Enter 2}{BackSpace}if __name__ == "__main__":{Enter}{Tab}main()

; temp
;:*:d::{Delete}{Space}
;:*:d::_
;:*:d::{Backspace}{Enter}-{Space}{Esc 2}{Up}{Backspace}
