#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir  ; Ensures a consistent starting directory.

Suspend

; meta
F1 & t::Suspend, Toggle
F1::Send, {F1}

; punctuation
:*?:---::—
::--::–
;:*?:...::…

; citation
;:*:"::””{Left}
;:*:'::’’{Left}
;:*:"::“”{Left}
;:*:'::‘’{Left}
:*:"::»«{Left}
:*:'::›‹{Left}
