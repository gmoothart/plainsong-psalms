\include "norms.ly"

lamb = {
    \stemUp
    g4 g g4. (a) \tick %lamb of god
    a4 a a a g a f g a4. \tick  
}
mercy = { a4 g (a) b g  a4. (g) \bar "||" }  % have mercy on us. 

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  {
    \relative g'  {
    \cadenzaOn
    \stemOff 
    \lowPSlur 
    \lowSlur
    \shortenSlur

    \lamb
    \mercy
    
    \lamb
    \mercy 
    
    \lamb
    g4 (a) b (g)  a4.(g) \bar "||" % grant us peace
 

   }
    \addlyrics {   
      \lyricRegular
      Lamb of God, 
      you take a -- way the sins of the world, have mer -- cy on us.
      Lamb of God, 
      you take a -- way the sins of the world, have mer -- cy on us.
      Lamb of God, 
      you take a -- way the sins of the world,
      grant us peace. 
    }
  
}
}
\include "avoidbars.ly"
