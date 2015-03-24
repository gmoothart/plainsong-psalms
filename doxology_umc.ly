
% Doxology
% arr. Andrew Mills
% modified Emily, Sarah

\version "2.18.2"

\header { 
  tagline = "" 
} 

% for controlling paper size
#(set! paper-alist (cons '("bulletin" . (cons (* 4.5 in) (* 6.0 in))) paper-alist))

\paper {
  #(set-paper-size "bulletin")
  left-margin = 0\cm
  % almost works, but doesn't print the text??
  %page-breaking = #ly:one-line-breaking
  indent = 0
}

line = \relative g'  {
    \key ees \major
    \numericTimeSignature
    \time 3/2
    % Praise God from whom all blessings flow; Praise
    \partial 2 ees2 | ees4 f4 g4 ees4 g4 aes4 | bes1 ees,2

    ees4 f4 g4 ees4 g4 aes4 | bes1 ees4 d4 | c2 bes2 ees4 d4

    c2 bes2\fermata ees2 | ees4 bes4 bes4 aes4 g4 aes4 | bes1 ees2

    ees4 bes4 bes4 aes4 g4 aes4 | bes1 aes4 g4 | f2 ees2 aes4 g4 

    f2 ees2 ees'4 d4 | c2 bes2 ees4 d4 | c2 bes2 aes4 g4 | f1. | ees1
    % Praise Him all creatures here below;
    % Oh- praise Him! Alleluia!
    % Praise, praise the Father, praise the Son,
    % And praise the Spirit, Three in One!
    % Oh- praise Him! Alleluia!
    % Alleluia! Alleluia! Alleluia!
  }

text = \lyricmode {
  Praise God from whom all bless -- ings flow;
  Praise Him all crea -- tures here be -- low;
  Oh- _ praise Him! Al -- le -- lu -- ia!
  Praise, praise the Fa -- ther, praise the Son,
  And praise the Spir -- it, Three in One!
  Oh- _ praise Him! Al -- le -- lu -- ia!
  Al -- le -- lu -- ia! Al -- le -- lu -- ia! Al -- le -- lu -- ia!

}

 

\score {
  <<
    \new Voice = "one" {
      \line
    }
    \new Lyrics \lyricsto "one" \text
  >>
}
