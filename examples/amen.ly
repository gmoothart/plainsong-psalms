\include "norms.ly"

amen = {
    \stemUp
    g g2 (a) \bar "||"
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  {
    \relative g'  {
    \cadenzaOn
    \stemOff 
    \lowPSlur 
    \lowSlur
    \shortenSlur
    \amen

   }
    \addlyrics {   
      \lyricRegular
      A -- men.
    }
  
}
}
\include "avoidbars.ly"
