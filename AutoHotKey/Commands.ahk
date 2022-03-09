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

; collapse common abbreviations
::tex::t.ex.
::tom::t.o.m.
::pga::p.g.a.
::etc::etc.
::bla::bl.a.
::alt::alt.
::anm::anm.
::dvs::dvs.
::fkr::f.Kr.
::ekr::e.Kr.
::ex::ex.
::ev::ev.
::exkl::exkl.
::inkl::inkl.
::mm::m.m.
::mvh::m.v.h.
::mha::m.h.a.
::obs::obs.
::resp::resp.
::aka::a.k.a.

; xml
:*b0:<!::--  -->{Left 4}

; markdown
:*:mdsum::[summary]: {#} ""{Left}

; python
:*b0:def main():::{Enter}pass{Enter 2}{BackSpace}if __name__ == "__main__":{Enter}{Tab}main()
