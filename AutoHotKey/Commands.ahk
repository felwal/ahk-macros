#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir  ; Ensures a consistent starting directory.

; hotskeys

; toggle script
F1::
  Suspend, Toggle
Return

; spaced indent
^space::
  Send, {space 4}
Return

; hotstrings

; mail
***REMOVED***
***REMOVED***
***REMOVED***

; abbreviations
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***

; coding
:*b0:<!::--  -->{Left 4}
:*:mdsum::[summary]: {#} ""{Left}

; punctuation
:*:&nbsp:: 
:*:&thinsp:: 
:*:&hairsp:: 
:*:&ndash::–
::&--::–
:*:&mdash::—
::&---::—
:*:&tilde::"~"
:*:&!?::‽
:*:&?!::‽
:*:&;::ː
:*:&...::…
:*:&***::⁂
:*:&fleuron::❦
:*:&leaf::❦
:*:&rleaf::❧
:*:&curren::¤
:*:&dagger::†
:*:&ddagger::‡
:*:&paragraph::¶
:*:&tm::™
:*:&bullet::•
:*:&numero::№
:*:&''::›‹{Left}
:*:&><::›‹{Left}
:*:&""::»«{Left}
:*:&>><<::»«{Left}
:*:&angle::⟨⟩{Left}
:*:&()::⟨⟩{Left}
:*:&[]::〔〕{Left}
:*:&[[]]::⟦⟧{Left}

; emoji
:*:&<3::❤

; playing cards
:*:&spades::♠
:*:&hearts::♥
:*:&diams::♦
:*:&clubs::♣

; math
:*:&inf::∞
:*:&box::□
:*:&nabla::∇
:*:&dell::∂
:*:&integral::∫
:*:&curint::∮
:*:&quaternion::⨖
:*:&surint::∬
:*:&volint::∭
:*:&dot::·
::&*::·
:*:&cross::×
:*:&x::×
:*:&ox::⊗
:*:&o*::⊙
:*:&o+::⊕
:*:&div::÷
:*:&ball::○
:*:&sqrt::√
:*:&ceil::⌈⌉{Left}
:*:&floor::⌊⌋{Left}
:*:&ordo::𝒪
:*:&+-::±
:*:&!=::≠
:*:&approx::≈
:*:&~=::≈
:*:&prop::∝
:*:&congruent::≡
:*:&subset::⊆
:*:&tsubset::⊂
:*:&belongs::∈
:*:&complement::∁
:*:&union::∪
:*:&intersect::∩
:*:&empty::∅
:*:&forall::∀
:*:&exists::∃
:*:&or::∨
:*:&and::∧
:*:&therefore::∴
:*:&because::∵
:*:&parallell::∥
:*:&perp::⊥
::&<=::≤
:*:&>=::≥
:*:&=>::⇒
:*:&<=>::⇔
:*:&->::→
:*:&|->::↦
:*:&natural::ℕ
:*:&integer::ℤ
:*:&rational::ℚ
:*:&real::ℝ
:*:&complex::ℂ
:*:&hcomplex::ℍ

; hebrew
:*:&aleph::ℵ
:*:&beth::ב

; greek
:*:&alpha::α
:*:&beta::β
:*:&gamma::γ
:*:&delta::δ
:*:&epsilon::ε
:*:&digamma::ϝ
:*:&zeta::ζ
:*:&eta::η
:*:&heta::ͱ
:*:&theta::θ
:*:&jota::ι
:*:&kappa::κ
:*:&lambda::λ
:*:&my::μ
:*:&ny::ν
:*:&xi::ξ
:*:&omicron::ο
:*:&pi::π
:*:&san::ϻ
:*:&koppa::ϟ
:*:&rho::ρ
:*:&sigma::σ
:*:&stigma::ς
:*:&tau::τ
:*:&ypsilon::υ
:*:&phi::φ
:*:&chi::χ
:*:&psi::ψ
:*:&omega::ω
:*:&sampi::ϡ

; overline
:*:olinea::a̅
:*:olineb::b̅
:*:olinec::c̅
:*:olined::d̅
:*:olinee::e̅
:*:olinef::f̅
:*:olineg::g̅
:*:olineh::h̅
:*:olinei::i̅
:*:olinej::j̅
:*:olinek::k̅
:*:olinel::l̅
:*:olinem::m̅
:*:olinen::n̅
:*:olineo::o̅
:*:olinep::p̅
:*:olineq::q̅
:*:oliner::r̅
:*:olines::s̅
:*:olinet::t̅
:*:olineu::u̅
:*:olinev::v̅
:*:olinew::w̅
:*:olinex::x̅
:*:oliney::y̅
:*:olinez::z̅
