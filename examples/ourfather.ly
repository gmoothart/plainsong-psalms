\include "norms.ly"

lamb = {  g4 g g (a4) \tick %lamb of god
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
    
    %our father
    g4 (a) b b \tick
    %who art in heaven
    a c b a g \tick
    %hallowed be thy name
    a g g (a) b a \bar "|"
    
    %thy kingdom come
    b c(b) a(b) a (g) \tick 
    %thy will be done
    b a(b) a a (g) \tick 
    %on earth as it is in heaven
    a b a g g (a) b a(b) a \bar "|"
    
    %give us this day
    b a b c b a (b) a a (g) \bar "|"
    % and forgive us
    a b c (b) a b a g g \tick
    %as we forgive
    a g a b a g g a b a(b) a \bar "|"
    %and lead us
    e g a a a a b a (g) g \bar "|"
    %but deliver us
    g a a a a b a (g) g \bar "||"
    
    g4^\markup {\italic "Priest"} a\breve s4 s4 \bar "||"
    %for the kingdom
    e4^\markup { \italic "People" }  g g (a) g a a a a g b c b a \tick
    g a b g e
    
    \bar "||"
 

   }
    \addlyrics {    \lyricRegular
      Our Fa -- ther, who art in hea -- ven, hal -- lowed be thy name; 
      thy king- dom come, thy will be done on earth as it is in hea -- ven.
      Give us this day our dai -- ly bread, and for -- give us our tres -- pass -- es,
      as we for -- give those who tres -- pass a -- gainst us; 
      and lead us not in -- to temp -- ta -- tion, but de -- li -- ver us from e -- vil. 
      De -- "liver us Lord,..."
      For the king -- dom, the pow -- er and the glo -- ry are yours 
      now and for e -- ver.
    }
  
}
}
\include "avoidbars.ly"
