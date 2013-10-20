\version "2.16.1"
stemOff = { 
    \override Staff.Stem #'transparent = ##t
    % to fix spacing issues caused by down-stems
    \override Stem #'direction = #UP
}

tick = \markup {
  \raise #2 \fontsize #-5 \musicglyph #"scripts.rvarcomma"
}

hugetick = \markup {
  \raise #2 \fontsize #-2 \musicglyph #"scripts.rvarcomma"
}

umlaut = \markup {
  \raise #2 \fontsize #-3 \musicglyph #"dots.dot"
  \raise #2 \hspace #0.25
  \raise #2 \fontsize #-3 \musicglyph #"dots.dot"
}

tallParens = {
  \override ParenthesesItem #'font-size = #-1

}

% definition of the long bar
longbar = {
    % want "rests.1" glyph!!!
  \override Rest #'font-size = #4
  \override Rest #'staff-position = #-3
  \override Rest #'glyph = #"rests.1"
  r2*1/4
  \once \override Rest #'extra-offset = #'(-1.3 . 0)
  r2*1/4
  \revert Rest #'font-size
  \revert Rest #'staff-position
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  {
    \relative c'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        f4 g (a) \longbar bes_\markup { \tick } \parenthesize a g_\markup { \tick } \parenthesize a a2 \bar "|" 
        \longbar g4_\markup {  / } f g_\markup { \tick } (a) \parenthesize g g2 \bar "||"
    }
  }
}

\markup {
    \column {
      \left-align {
        \line {
          *1 \concat {
            Hall \combine \umlaut elujah!
          }
        }
        \line {
          Sing to the \concat {
            \caps { Lo } \combine \tick \caps { rd }
          }
          a \concat {
            ne \combine \tick w
          } 
          song; *
        }
        \line {
            sing his praise in the congregation / of the \concat {
                f \combine \tick aithful.
            }
        }
        \null
        \line {
          2 Let Israel \concat {
            rejo \combine \tick ice
          } in his \concat {
            Ma \combine \tick ker;
          } *
        }
        \line {
          let the children of Zion be / joyful \concat {
            i \combine \tick n 
          } their King.
        }
      }
    }
}
