\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        \key g \minor
        f4 g (bes) \longbar -1 c_\markup{ \tick } \parenthesize bes bes \parenthesize bes_\markup{ \parenthesize \tick } a_\markup { \tick } (g) bes2 \bar "|" 
        \longbar -1 g4_\markup { \bigslash } bes_\markup { \tick } \parenthesize bes a2 \bar "||"
  }
}
