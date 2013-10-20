\include "norms.ly"

vsign = \markup { \char ##x2123 ". " }

kyrie = {    
    g4 \(a \slurDown b (b) \) \slurNeutral g a(b) b4.
  }

christe = {
    d4(d) b(c) a(b) b4. 
  }
  
melodyk = { 
    \cadenzaOn
    \stemOff 
    \stemDown
    \lowPSlur 
    \lowSlur
    \shortenSlur
    
    \relative g' { \kyrie \bar "||" \kyrie \bar "||" }
 
    \relative c'' { \christe \bar "||" \christe \bar "||" }
    
    \relative g' { \kyrie \bar "||" \kyrie \bar "|." }
  }

\score {
\new Staff \with { \remove "Time_signature_engraver" }
  {
    \relative c'  
    \melodyk
    
    \addlyrics {
    \stanzaFont
    %\override Score . LyricText #'font-size = #3
    \lyricRegular

    Lord, \skip 4 \skip 4  have mer -- cy.  
    \lyricBold
    %\set stanza = \markup { {\char ##211F} ". " }
    Lord, \skip 4 \skip 4  have mer -- cy.
    \lyricRegular
    Christ, have mer -- cy.  
    \lyricBold
    Christ, have mer -- cy. 
    \lyricRegular
    Lord, \skip 4 \skip 4  have mer -- cy.  
    \lyricBold
    Lord, \skip 4 \skip 4  have mer -- cy. 
    }
  }
}
\include "avoidbars1.ly"

