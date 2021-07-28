#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; hotkeys

; toggle
^+t::
  Selection := GetSelection()

  SelectionLower := LowerCase(Selection)
  SelectionSentence := SentenceCase(Selection)
  SelectionWord := WordCase(Selection)
  SelectionUpper := UpperCase(Selection)

  if (Selection == SelectionLower) {
    ReplaceSelection(SelectionSentence)
  }
  else if (Selection == SelectionSentence) {
    ReplaceSelection(SelectionWord)
  }
  else if (Selection == SelectionWord) {
    ReplaceSelection(SelectionUpper)
  }
  else {
    ReplaceSelection(SelectionLower)
  }

Return

; lower case
^+l::
  ReplaceSelection(LowerCase(GetSelection()))
Return

; Sentence case
^+s::
  ReplaceSelection(SentenceCase(GetSelection()))
Return

; Word Case
^+w::
  ReplaceSelection(WordCase(GetSelection()))
Return

; UPPER CASE
^+u::
  ReplaceSelection(UpperCase(GetSelection()))
Return

; case string

LowerCase(String) {
  StringLower, StringCased, % String
  Return StringCased
}

SentenceCase(String) {
  StringLower, StringLowered, % String
  StringCased := RegExReplace(StringLowered, "((?:^|[.!?]\s+)[a-z])", "$u1")
  Return StringCased
}

WordCase(String) {
  StringLower, StringCased, % String, T
  Return StringCased
}

UpperCase(String) {
  StringUpper, StringCased, % String
  Return StringCased
}

; tools

GetSelection() {
  ; save clipboard
  ClipSave := ClipboardAll
  Clipboard := ""

  ; copy selection
  Send, ^c
  ClipWait, 1
  Selection := Clipboard

  ; restore clipboard
  Clipboard := ClipSave

  Return Selection
}

ReplaceSelection(Replacement) {
  ; paste
  Send, %Replacement%

  ; reselect
  Len := Strlen(Replacement)
  Send +{left %Len%}
}
