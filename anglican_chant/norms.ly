\version "2.16.2"

% for controlling paper size
#(set! paper-alist (cons '("bulletin" . (cons (* 4.5 in) (* 0.75 in))) paper-alist))


\paper {
  #(set-paper-size "bulletin")
  left-margin = 0\cm
  % almost works, but doesn't print the text??
  %page-breaking = #ly:one-line-breaking
}

\header { 
  tagline = "" 
} 

stemOff = { 
  \override Staff.Stem #'transparent = ##t
  % to fix spacing issues caused by down-stems
  \override Stem #'direction = #UP
}

\layout {
    % left-align the score
    indent = #0
    \context {
        \Staff
        \remove "Time_signature_engraver"
    }
    \context {
        % shorten distance between notes
        \Score
        \override SpacingSpanner
        #'common-shortest-duration = #(ly:make-moment 3 16)
    }
}
