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

; expand personal abbreviations
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***

; xml
:*b0:<!::--  -->{Left 4}

; markdown
:*:mdsum::[summary]: {#} ""{Left}

; python
:*b0:def main():::{Enter}pass{Enter 2}{BackSpace}if __name__ == "__main__":{Enter}{Tab}main()
