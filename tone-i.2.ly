\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        f4 g (a) \longbar -2 bes_\markup{ \tick } \parenthesize a a g_\markup { \tick } \parenthesize a a2 \bar "|" 
        \longbar -2 g4_\markup { \bigslash } f g_\markup{ \tick } (a) \parenthesize g g2 (f2) \bar "||"
  }
}
