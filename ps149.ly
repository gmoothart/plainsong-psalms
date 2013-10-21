\version "2.16.1"

% for controlling paper size
% #(set-default-paper-size "a6")

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

bigslash = \markup {
  \fontsize #2 /

  % experimental - idea for a different slash
  %  \draw-line #'(2 . 3)
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
%   The Rest glyph we need is only drawn for even staff lines, so in cases
%   where we want it on an odd lines, we draw it on the lower even line
%   and then bump it up by 0.5 with extra-offset.
longbar = #(define-music-function (parser location pos) (number?)
  (let ((offset (if (odd? pos) 0.5 0))
        (staffpos (if (odd? pos) (- pos 1) pos))
       )
       #{
       \override Rest #'font-size = #4
       \override Rest #'staff-position = #staffpos
       \override Rest #'extra-offset = #(cons 0 offset)
       r2*1/4
       \once \override Rest #'extra-offset = #(cons -1.3 offset)
       r2*1/4
       \revert Rest #'font-size
       \revert Rest #'staff-position
       #}))

% left-align the score
\layout {
    indent = #0
    \context {
        \Staff
        \remove "Time_signature_engraver"
    }
}

% prototype for em-dash, sometimes needed to skip a tone. Needs less space in front.
emdash = \markup { \char ##x2014 \hspace #0 }

%
% Psalm Title
\markup {
    \bold { Psalm 149 }
    \hspace #2
    \fontsize #-3 \italic { Cantate Domino }
}

%
% Chant Line
\score {
  \new Staff \relative c'  {
        \cadenzaOn
        \stemOff 
        \tallParens
        f4 g (a) \longbar 2 \longbar 1 \longbar 0 bes_\markup { \tick } \parenthesize a g_\markup { \tick } \parenthesize a a2 \bar "|" 
        \longbar 2 g4_\markup { \bigslash } f g_\markup { \tick } (a) \parenthesize g g2 \bar "||"
  }
}

%
% Pointed Text
\markup {
    \column {
      \left-align {
        \line {
          1
        }
        \line {
          \concat {
            \emdash Hall \combine \umlaut elujah!
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
