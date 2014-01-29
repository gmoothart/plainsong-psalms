\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        f4 g (a) \longbar -2 g_\markup{ \bigslash } a_\markup { \tick } \parenthesize f f2 \bar "|" 
        \longbar -2 f4_\markup { \bigslash } g (a) g_\markup { \tick } \parenthesize f f2 \bar "||"
  }
}
