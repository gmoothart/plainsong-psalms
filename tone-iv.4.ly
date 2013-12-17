\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        %\key g \minor
        a4 g (a) \longbar -2 g_\markup{ \bigslash } a b_\markup{ \tick } \parenthesize a a2 \bar "|" 
        \longbar -2 g4_\markup { \bigslash } a b g_\markup { \tick } \parenthesize e e2 \bar "||"
  }
}
