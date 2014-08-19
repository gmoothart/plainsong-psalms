\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        a4 g (a) \longbar -2 g_\markup{ \bigslash } a b_\markup{ \tick } \parenthesize a a2 \bar "|" 
        \longbar -2 g4_\markup { \bigslash } a b (a) \parenthesize g_\markup { \parenthesize \tick }  g_\markup { \tick } (f) e2 \bar "||"
  }
}
