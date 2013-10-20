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
    e4 g a a g a c b a4. \tick % when we eat this bread
    a4  a b a g (a) g \stemDown g4. \stemNeutral \tick
    a4 a f g (a) g e4. \bar "|."
    
   }
    \addlyrics {    \lyricRegular
      When we eat this Bread and drink this Cup, \tick we pro -- claim your Death, O Lord, 
      un -- til you come a -- gain.
    }
  
}
}
\include "avoidbars1.ly"
