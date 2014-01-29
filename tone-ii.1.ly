\include "norms.ly"

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        \key g \major
        d4 e \longbar -3 a_\markup{ \tick } \parenthesize g g2 \bar "|" 
        \longbar -3 fis4_\markup { \bigslash } d_\markup { \tick } \parenthesize e e2 \bar "||"
  }
}
