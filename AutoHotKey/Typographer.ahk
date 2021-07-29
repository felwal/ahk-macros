#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

Suspend ; suspend by default

; meta

; toggle suspension
F1 & w::
  Suspend, Toggle
Return

F1::
  Send, {F1}
Return

; punctuation
:*?:---::—
::--::–
;:*?:...::…
:*:***::* * *

; citation
;:*:"::””{Left}
;:*:'::’’{Left}
;:*:"::“”{Left}
;:*:'::‘’{Left}
:*:"::»«{Left}
:*:'::›‹{Left}
