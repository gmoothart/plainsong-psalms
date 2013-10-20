\include "norms.ly"

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  {
    \relative c'  {
    \cadenzaOn
    \stemOff 
    \lowPSlur 
    \lowSlur
    \shortenSlur
    a'4 a g a c b a4. \tick e4 g a a b a g(a) g4. \tick %we proclaim your death
    a4 a f g (a) g e4. \bar "|."
    
   }
    \addlyrics {    \lyricRegular
      We pro -- claim your Death, O Lord, and pro -- fess your Re -- sur -- rec -- tion 
      un -- til you come a -- gain.
    }
  
}
}
\include "avoidbars.ly"
