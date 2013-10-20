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
    e4 e g a g a g e4 \bar "||" %glory to god in the highest
   e4 e g(a) 
   \stemDown a-- \tick \stemNeutral %peace
   a g a g g e4 \bar "||"
   g4 a(g) e4 \bar "||" g4 a(g) e4 \bar "||"
   g4 a a(g) e4 \bar "||" g4 a a g e4 \bar "||"
   a4 g a b a g a \stemDown g e  \stemNeutral \bar "||"

   e4 g(a) a a g e \tick g a a g a g e4 \bar "||" %lord god heavenly king
   e4 g a  \stemDown a--  \stemNeutral \tick \bar "" a4 g a g g e4 \bar "||" %lord jesus christ
   \stemDown a4 a-- \stemNeutral g a b-- \tick a g a g e4\bar "||"
   e4 g a a a a g a b-- \tick a g a g e4 \bar "||" %you take away the sins
   e4 g a a a a g a b-- \tick a g (a) g e4 \bar "||" %you take away the sins
   e4 g a a \bar "" a a a a g a b a \tick a g a g e4 \bar "||"
   
   e4 g a a a g a g e4 \bar "||" %for you alone
   e4 g a a g e4  \bar "||"
   e4 g a a g a (g) \stemDown  e-- \stemNeutral \tick e g \stemUp a (b a4) \stemNeutral \bar "||"
   a4 a g a b \stemDown a-- \stemNeutral \tick 
   a4 a a a a a g 
   \once \override Slur #'positions = #'(3 . 2)
   \once \override PhrasingSlur #'positions = #'(-2 . -2)
   %\once \override PhrasingSlur #'height-limit = #1.5
   \once \override Slur #'height-limit = #-1.5 
   \slurDown a \( (b g) g (e) e4 \)  \slurNeutral \bar "||"
   \once \override Slur #'positions = #'(2 . 2)
   \stemDown \slurDown e4 \( ( e) f g f e \) \stemNeutral d2 (e) \bar "|."
        
   }
    \addlyrics {    \lyricRegular
      Glo -- ry to God in the high -- est,
    and on earth peace to peo -- ple of good will.
  We praise you, we bless  you, we a -- dore you, we glo -- ri -- fy you,
  we give you thanks for your great glo -- ry,
  Lord God, heav -- en -- ly King, O God, al -- migh -- ty Fa -- ther.
  
  Lord Je -- sus Christ, On -- ly be -- got -- ten Son, 
  Lord God, Lamb of God, Son of the Fa -- ther,
  you take a -- way the sins of the world, have mer -- cy on us; 
  you take a -- way the sins of the world, re -- ceive our prayer; 
  you are sea -- ted at the right hand of the Fa -- ther, have mer -- cy on us.
  
  For you a -- lone are the Ho -- ly One, you a -- lone are the Lord, 
  you a -- lone are the Most High, Je -- sus Christ, with the Ho -- ly Spi -- rit,
  in the glo -- ry of God the Fa -- \skip 1 ther. A -- \skip 4 \skip 4 \skip 4 \skip 4 men.
    }
  
}
}
\include "avoidbars.ly"
