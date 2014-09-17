\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        \accidentalStyle neo-modern
        %\key g \minor
        a4 (bes) \longbar -2 g_\markup{ \bigslash } bes a g_\markup{ \tick } \parenthesize f f2 \bar "|" 
        \longbar -3 d4_\markup { \bigslash } f_\markup { \tick } \parenthesize f e2 (d2) \bar "||"
  }
}
