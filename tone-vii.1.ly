
\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        \key g \major
        g4 (fis) g (a) \longbar -2 c_\markup{ \tick } \parenthesize b b a_\markup { \tick } \parenthesize b b2 \bar "|" 
        \longbar -2 b4_\markup { \tick } \parenthesize a a g_\markup { \tick } \parenthesize g fis2 (e2) \bar "||"
  }
}
