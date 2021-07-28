#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; hotkeys

; toggle intra
^+t::
  Selection := GetSelection()

  SelectionLower := LowerCase(Selection)
  SelectionSentence := SentenceCase(Selection)
  SelectionWord := WordCase(Selection)
  SelectionUpper := UpperCase(Selection)

  if (Selection == SelectionLower) {
    ReplaceSelection(SelectionSentence)
  }
  else if (Selection == SelectionSentence and not Selection == SelectionWord) {
    ReplaceSelection(SelectionWord)
  }
  else if (Selection == SelectionWord) {
    ReplaceSelection(SelectionUpper)
  }
  else {
    ReplaceSelection(SelectionLower)
  }

Return

; toggle inter
^+m::
  Selection := GetSelection()

  SelectionSpace := SpaceCase(Selection)
  SelectionSnake := SnakeCase(Selection)
  SelectionKebab := KebabCase(Selection)

  if (Selection = SelectionSpace) {
    ReplaceSelection(SelectionSnake)
  }
  else if (Selection = SelectionSnake) {
    ReplaceSelection(SelectionKebab)
  }
  else {
    ReplaceSelection(SelectionSpace)
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

; snake case
^+n::
  Selection := GetSelection()
  SelectionSnake := SnakeCase(Selection)

  ; toggle
  if (Selection == SelectionSnake) {
    ReplaceSelection(SpaceCase(Selection))
  }
  else {
    ReplaceSelection(SelectionSnake)
  }

Return

; kebab-case
^+k::
  Selection := GetSelection()
  SelectionKebab := KebabCase(Selection)

  ; toggle
  if (Selection == SelectionKebab) {
    ReplaceSelection(SpaceCase(Selection))
  }
  else {
    ReplaceSelection(SelectionKebab)
  }

Return

; intra-word case

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

; inter-word case

SpaceCase(String) {
  String := StrReplace(String, "_", " ")
  Return StrReplace(String, "-", " ")
}

SnakeCase(String) {
  String := StrReplace(String, " ", "_")
  Return StrReplace(String, "-", "_")
}

KebabCase(String) {
  String := StrReplace(String, " ", "-")
  Return StrReplace(String, "_", "-")
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
