#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
#SingleInstance, Force
SendMode, Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir, % A_ScriptDir ; Ensures a consistent starting directory.

; punctuation
:*:&thinsp:: 
:*:&hairsp:: 
:*:&mdash::—
::&---::—
:*?:---::—
:*:&ndash::–
::&--::–
::--::–
:*:&!?::‽
:*:&?!::‽
:*:&;::ː
:*:&...::…
:*:&***::⁂
:*:&fleuron::❦
:*:&leaf::❦
:*:&rfleuron::❧
:*:&rleaf::❧
:*:&curren::¤
:*:&money::¤
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
:*:&deg::°
:*:&^*::°

; misc
:*:&box::□
:*:&square::□

; emoji
:*:&<3::❤
:*:&spades::♠
:*:&hearts::♥
:*:&diams::♦
:*:&clubs::♣

; math
:*:&inf::∞
:*:&nabla::∇
:*:&grad::∇
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
:*:&/::÷
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
:*:&parallell::∥
:*:&perp::⊥
:*:&_|_::⊥
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

; logic
:*:&forall::∀
:*:&all::∀
:*:&exists::∃
:*:&or::∨
:*:&and::∧
:*:&therefore::∴
:*:&because::∵

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
:*:&esigma::ς
:*:&stigma::ϛ
:*:&tau::τ
:*:&ypsilon::υ
:*:&phi::φ
:*:&chi::χ
:*:&psi::ψ
:*:&omega::ω
:*:&sampi::ϡ

; hebrew
:*:&aleph::ℵ
:*:&beth::ב

; overline
:*:&olinea::a̅
:*:&olineb::b̅
:*:&olinec::c̅
:*:&olined::d̅
:*:&olinee::e̅
:*:&olinef::f̅
:*:&olineg::g̅
:*:&olineh::h̅
:*:&olinei::i̅
:*:&olinej::j̅
:*:&olinek::k̅
:*:&olinel::l̅
:*:&olinem::m̅
:*:&olinen::n̅
:*:&olineo::o̅
:*:&olinep::p̅
:*:&olineq::q̅
:*:&oliner::r̅
:*:&olines::s̅
:*:&olinet::t̅
:*:&olineu::u̅
:*:&olinev::v̅
:*:&olinew::w̅
:*:&olinex::x̅
:*:&oliney::y̅
:*:&olinez::z̅
