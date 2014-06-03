
% Doxology
% arr. Andrew Mills
% modified Emily, Sarah

\version "2.18.2"

\header { 
  tagline = "" 
} 

% for controlling paper size
#(set! paper-alist (cons '("bulletin" . (cons (* 4.5 in) (* 5.0 in))) paper-alist))

\paper {
  #(set-paper-size "bulletin")
  left-margin = 0\cm
  % almost works, but doesn't print the text??
  %page-breaking = #ly:one-line-breaking
  indent = 0
}

line = \relative g'  {
    \key g \major
    \numericTimeSignature
    \time 3/2
    % Praise God from whom all
    g2 g4 fis e d
    \time 2/2
    % blessings flow; praise Him all creatures here below 
    g2 a b b b4 b a g c2 b a 
    % Praise Him above ye heavenly host
    g2 a4 b a g e2 fis g2.
    % Praise Father, Son, and Holy 
    d'4 b g a c b2 a
    \time 3/2
    % Ghost, Amen
    g1 r2 g1. g
  }

text = \lyricmode {
  Praise God from whom all bless -- ings flow
  Praise Him all crea -- tures here be -- low
  Praise Him a -- bove ye heav -- enly host
  Praise Fa -- ther, Son, and Ho -- ly Ghost
  A -- men
}

 

\score {
  <<
    \new Voice = "one" {
      \line
    }
    \new Lyrics \lyricsto "one" \text
  >>
}
