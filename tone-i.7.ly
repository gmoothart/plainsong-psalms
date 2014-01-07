\include "norms.ly"

\layout {
    \context {
        % longer-than-usual chant line, so squeeze the notes
        % a little closer together
        \Score
        \override SpacingSpanner
        #'common-shortest-duration = #(ly:make-moment 4 16)
    }
}

\score {
  \new Staff \relative g'  {
        \cadenzaOn
        \stemOff
        \tallParens
        f4 g (a) \longbar -2 bes_\markup{ \tick } \parenthesize a a g_\markup { \tick } \parenthesize a a2 \bar "|" 
        \longbar -2 g4_\markup { \bigslash } f g_\markup{ \tick } (a) \parenthesize g g (f e d2) \bar "||"
  }
}
