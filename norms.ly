\version "2.16.2"

% for controlling paper size
#(set! paper-alist (cons '("bulletin" . (cons (* 9 in) (* 1.2 in))) paper-alist))


\paper {
  #(set-paper-size "bulletin")
  left-margin = 0\cm
}

\header { 
  tagline = "" 
} 

stemOff = { 
  \override Staff.Stem #'transparent = ##t
  % to fix spacing issues caused by down-stems
  \override Stem #'direction = #UP
}

tick = \markup {
  \raise #2 \fontsize #-2 \musicglyph #"scripts.rvarcomma"
}

%hugetick = \markup {
%  \raise #2 \fontsize #-2 \musicglyph #"scripts.rvarcomma"
%}

bigslash = \markup {
  \fontsize #4 /

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
dagger = \markup { \char ##x2020 \hspace #0 }

