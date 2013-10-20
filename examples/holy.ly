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
    \stemDown b'4 b4. (a) \tick b4 b4. (a) \tick %holy
    \stemNeutral
    g4 a b (b) b a b4 \bar "|"
    g4 a b b (b) a c b b a g4 \bar "|" %heaven and earth
    g4 a b b b a b4 \bar "|" %hosanna
    g4 a b b (b) a c b a b a g g4 \bar "|" %blessed
    e4 g (a) a a b a (g) g2 (a) \bar "|." %hosanna

   }
    \addlyrics {    \lyricRegular
      Ho -- ly, Ho -- ly, Ho -- ly Lord God of hosts.
      Hea -- ven and earth are full of your glo -- ry.
      Ho -- san -- na in the high -- est. 
      Bles -- sed is he who comes in the name of the Lord. 
      Ho -- san -- na in the high -- est. 
    }
  
}
}
\include "avoidbars.ly"
