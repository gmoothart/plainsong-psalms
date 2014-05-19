\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        \key g \minor
        ees4 g \longbar -1 c_\markup{ \tick } \parenthesize bes bes2 \bar "|" 
        \longbar -1 g4_\markup { \tick } aes f_\markup { \tick } \parenthesize ees ees2 \bar "||"
  }
}
