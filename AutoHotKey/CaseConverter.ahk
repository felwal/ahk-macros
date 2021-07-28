#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; hotkeys

; toggle writing cases
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

; toggle coding cases
^+m::
  Selection := GetSelection()

  SelectionSpace := SpaceCase(Selection)
  SelectionKebab := KebabCase(Selection)
  SelectionSnake := SnakeCase(Selection)
  SelectionCamel := CamelCase(Selection)
  SelectionPascal := PascalCase(Selection)
  SelectionCap := CapCase(Selection)

  if (Selection = SelectionSpace) {
    ReplaceSelection(SelectionKebab)
  }
  else if (Selection == SelectionKebab) {
    ReplaceSelection(SelectionSnake)
  }
  else if (Selection == SelectionSnake) {
    ReplaceSelection(SelectionCamel)
  }
  else if (Selection == SelectionCamel) {
    ReplaceSelection(SelectionPascal)
  }
  else if (Selection == SelectionPascal) {
    ReplaceSelection(SelectionCap)
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

; camelCase
^+c::
  ReplaceSelection(CamelCase(GetSelection()))
Return

; PascalCase
^+p::
  ReplaceSelection(PascalCase(GetSelection()))
Return

; CAP_CASE
^+q::
  ReplaceSelection(CapCase(GetSelection()))
Return

; writing cases

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

; coding cases

SpaceCase(String) {
  String := StrReplace(String, "_", " ")
  String := StrReplace(String, "-", " ")
  if (String not == UpperCase(String)) {
    String := SplitAtUpper(String)
  }
  String := RemoveExtraSpaces(String)
  String := LowerCase(String)

  Return String
}

KebabCase(String) {
  String := SpaceCase(String)
  String := StrReplace(String, " ", "-")
  String := StrReplace(String, "_", "-")

  Return String
}

SnakeCase(String) {
  String := SpaceCase(String)
  String := StrReplace(String, " ", "_")
  String := StrReplace(String, "-", "_")

  Return String
}

CamelCase(String) {
  String := PascalCase(String)
  StringLower, FirstChar, % SubStr(String, 1, 1)
  String := FirstChar SubStr(String, 2)

  Return String
}

PascalCase(String) {
  String := SpaceCase(String)
  String := WordCase(String)
  String := StrReplace(String, " ", "")

  Return String
}

CapCase(String) {
  String := SnakeCase(String)
  String := UpperCase(String)

  Return String
}

; tools

SplitAtUpper(String) {
  String := RegExReplace(String, "A", " A")
  String := RegExReplace(String, "B", " B")
  String := RegExReplace(String, "C", " C")
  String := RegExReplace(String, "D", " D")
  String := RegExReplace(String, "E", " E")
  String := RegExReplace(String, "F", " F")
  String := RegExReplace(String, "G", " G")
  String := RegExReplace(String, "H", " H")
  String := RegExReplace(String, "I", " I")
  String := RegExReplace(String, "J", " J")
  String := RegExReplace(String, "K", " K")
  String := RegExReplace(String, "L", " L")
  String := RegExReplace(String, "M", " M")
  String := RegExReplace(String, "N", " N")
  String := RegExReplace(String, "O", " O")
  String := RegExReplace(String, "P", " P")
  String := RegExReplace(String, "Q", " Q")
  String := RegExReplace(String, "R", " R")
  String := RegExReplace(String, "S", " S")
  String := RegExReplace(String, "T", " T")
  String := RegExReplace(String, "U", " U")
  String := RegExReplace(String, "V", " V")
  String := RegExReplace(String, "W", " W")
  String := RegExReplace(String, "X", " X")
  String := RegExReplace(String, "Y", " Y")
  String := RegExReplace(String, "Z", " Z")
  String := RegExReplace(String, "Å", " Å")
  String := RegExReplace(String, "Ä", " Ä")
  String := RegExReplace(String, "Ö", " Ö")

  Return Trim(String)
}

RemoveExtraSpaces(String) {
  String := StrReplace(String, "      ", " ")
  String := StrReplace(String, "     ", " ")
  String := StrReplace(String, "    ", " ")
  String := StrReplace(String, "   ", " ")
  String := StrReplace(String, "  ", " ")

  Return String
}

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
