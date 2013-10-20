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
    a'4 (c) a g e g a a4. \tick % save us savior
    a4 g a c (b) \bar "" \break a b a g (a) g4. \tick
    a4 f g (a) g e4. \bar "|."
    
   }
    \addlyrics {    \lyricRegular
      Save us, Sav -- ior of the world, for by your Cross and Res -- ur -- rec -- tion 
      you have set us free. 
    }
  
}
}
\include "avoidbars1.ly"
