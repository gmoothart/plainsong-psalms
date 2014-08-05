\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        \key g \minor
        f4 g \longbar -1 c_\markup{ \tick } \parenthesize bes bes2 \bar "|" 
        \longbar -1 g4_\markup { \bigslash } bes c_\markup { \tick } \parenthesize bes bes2 \bar "||"
  }
}
