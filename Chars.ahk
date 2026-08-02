#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

; punctuation

; space
:?:&emsp::  ; m/1
:?:&ensp::  ; m/2
:?:&thicksp::  ; m/3
:?*:&nbsp::  ; m/4
;Ctrl & Space::  ; nbsp
:?*:&thinsp::  ; m/8
:?*:&nbthinsp::  ; m/8
:?*:&hairsp::  ; <m/8
:?*:&tab::"	"

; dash
:?*:&emdash::—
:?*:&mdash::—
:?*:&ltank::—
:?:&---::—
:?*:&endash::–
:?*:&ndash::–
:?*:&tank::–
:?*:&--::–
:?o:-- ::–{Space}

;
:?*:&!?::‽
:?*:&?!::‽
:?*:&interrobang::‽
:?*:&irony::؟
:?*:&...::…
:?*:&***::⁂
:?*:&fleuron::❦
:?*:&leaf::❦
:?*:&rfleuron::❧
:?*:&rleaf::❧
:?*:&dagger::†
:?*:&ddagger::‡
:?*:&paragraph::¶
:?*:&pilcrow::¶
:?*:&section::§
:?*:&bullet::•

; quotation
:?*:&''::‘’{Left}
:?*:&""::“”{Left}
:?*:&><::›‹{Left}
:?*:&>><<::»«{Left}

; parenthesis
:?*:&angle::⟨⟩{Left}
:?*:&()::⟨⟩{Left}
:?*:&<>::⟨⟩{Left}
:?*:&[]::〔〕{Left}
:?*:&[[]]::⟦⟧{Left}

;

; arrows
:?*:&=>::⇒
:?*:&<=>::⇔
:?*:&->::→
:?*:&right::→
:?*:&<-::←
:?*:&left::←
:?*:&up::↑
:?*:&down::↓
:?*:&|->::↦
:?*:&undo::↩
:?*:&return::↩
:?*:&start::↩
:?*:&restart::↩
:?*:&redo::↪
:?*:&end::↪

; currency
:?*:&currency::¤
:?*:&euro::€
:?*:&dollar::$
:?*:&cent::¢
:?*:&pound::£
:?*:&rupee::₹

; misc
:?*:&deg::°
:?*:&^*::°
:?*:&numero::№
:?*:&#::№
:?*:&tm::™
:?*:&;::ː
:?*:&box::□
:?*:&square::□
:?*:&copyr::©
:?*:&copyl::🄯
:?*:&tm::™
:?*:&check::✓

; emoji
:?*:&<3::❤
:?*:&spades::♠
:?*:&hearts::♥
:?*:&diams::♦
:?*:&clubs::♣

; math
:?*:&inf::∞
:?*:&nabla::∇
:?*:&grad::∇
:?*:&dell::∂
:?*:&integral::∫
:?*:&curint::∮
:?*:&quaternion::⨖
:?*:&surint::∬
:?*:&volint::∭
:?*:&dot::·
:?:&*::·
:?*:&cross::×
:?*:&x::×
:?*:&ox::⊗
:?*:&o*::⊙
:?*:&o+::⊕
:?*:&div::÷
:?*:&/::÷
:?*:&ball::○
:?*:&sqrt::√
:?*:&ceil::⌈⌉{Left}
:?*:&floor::⌊⌋{Left}
:?*:&ordo::𝒪
:?*:&+-::±
:?*:&!=::≠
:?*:&approx::≈
:?*:&~=::≈
:?*:&=::≈
:?*:&prop::∝
:?*:&corr::∝
:?*:&congruent::≡
:?*:&subset::⊆
:?*:&tsubset::⊂
:?*:&belongs::∈
:?*:&complement::∁
:?*:&union::∪
:?*:&intersect::∩
:?*:&snitt::∩
:?*:&empty::∅
:?*:&tom::∅
:?*:&parallell::∥
:?*:&||::∥
:?*:&perp::⊥
:?*:&orto::⊥
:?*:&_|_::⊥
:?:&<=::≤
:?*:&>=::≥
:?*:&natural::ℕ
:?*:&integer::ℤ
:?*:&rational::ℚ
:?*:&real::ℝ
:?*:&complex::ℂ
:?*:&hcomplex::ℍ

; logic
:?*:&forall::∀
:?*:&all::∀
:?*:&exists::∃
:?*:&or::∨
:?*:&and::∧
:?*:&therefore::∴
:?*:&because::∵

; numbers
:?*:&1/2::½
:?*:&1/3::⅓
:?*:&1/4::¼
:?*:&1/5::⅕
:?*:&1/6::⅙
:?*:&1/7::⅐
:?*:&1/8::⅛
:?*:&1/9::⅑
:?*:&1/10::⅒
:?*:&2/3::⅔
:?*:&2/5::⅖
:?*:&3/4::¾
:?*:&3/5::⅗
:?*:&3/8::⅜
:?*:&4/5::⅘
:?*:&5/6::⅚
:?*:&5/8::⅝
:?*:&7/8::⅞

; languages

; IPA
:?o:&ng::ŋ
:?o:&rl::ɺ
:?o:&rd::ɖ
:?o:&sh::ʃ
:?o:&zh::ʒ
:?o:&3::ʒ
:?o:&ts::ɕ
:?o:&z::ʑ
:?*:&?::ʔ
:?*:&glottal::ʔ
:?o:&e::ə
:?:&schwa::ə
:?o:&v::ʌ
:?*:&wedge::ʌ
:?*:&caret::ʌ
:?*:&hat::ʌ

; nordic
:?*:&dh::ð
:?*:&edh::ð
:?:&th::þ
:?*:&thorn::þ
:?*:ää::æ
:?*:&ä::æ
:?*:&ae::æ
:?*:&ash::æ
:?*:öö::ø
:?*:&ö::ø
:?*:&oe::œ
:?*:&ethel::œ

; german
:C?*:&eszett::ß
:C?*:&sharps::ß
:C?*:&Eszett::ẞ
:C?*:&Sharps::ẞ
:?*:&longs::ſ

; greek
:?*:&alpha::α
:?*:&beta::β
:?*:&gamma::γ
:?*:&delta::δ
:?*:&epsilon::ε
:?*:&digamma::ϝ
:?*:&zeta::ζ
:?*:&eta::η
:?*:&heta::ͱ
:?*:&theta::θ
:?*:&jota::ι
:?*:&kappa::κ
:?*:&lambda::λ
:?*:&my::μ
:?*:&ny::ν
:?*:&xi::ξ
:?*:&omicron::ο
:?*:&pi::π
:?*:&san::ϻ
:?*:&koppa::ϟ
:?*:&rho::ρ
:?*:&sigma::σ
:?*:&esigma::ς
:?*:&stigma::ϛ
:?*:&tau::τ
:?*:&ypsilon::υ
:?*:&phi::φ
:?*:&chi::χ
:?*:&psi::ψ
:?*:&omega::ω
:?*:&sampi::ϡ

; hebrew
:?*:&aleph::ℵ
:?*:&beth::ב
