
% Doxology
% arr. Andrew Mills
% modified Emily, Sarah

\version "2.18.2"

\header {
  %title = "All Blessings Flow"
  %tagline = "Music engraving by LilyPond 2.18.2—www.lilypond.org"
}

\paper {
  %indent = 0
}

sop = \relative g'  {
    \key g \major
    \numericTimeSignature
    \time 3/2
    % Praise God from whom all
    g2^\mf g4 fis e d
    \time 2/2
    % blessings flow; praise Him all creatures here below 
    g2 d' d b b4 b a g e'2 d2 d2
    % Praise Him above ye heavenly host
    g,2 a4 b a g g2^\< a2 b2.\!
    % Praise Father, Son, and Holy 
    d4 b d c a g^\> (fis) a2\!
    \time 3/2
    % Ghost, Amen
    g1 r2 e'1. d
    
  }

soptext = \lyricmode {
  Praise God from whom all bless -- ings flow
  Praise Him all crea -- tures here be -- low
  Praise Him a -- bove ye heav -- enly host
  Praise Fa -- ther, Son, and Ho -- ly Ghost
  A -- men
}

alto = \relative g'  {
    \key g \major
    \numericTimeSignature
    \time 3/2
    % Praise God from whom all
    g2 g4 fis e d
    \time 2/2
    % blessings flow; praise Him all creatures here below 
    g2 a b b b4 b a g c2 b a 
    % Praise Him above ye heavenly host
    g2 a4 b a g e2^\< fis g2.\!
    % Praise Father, Son, and Holy 
    d'4 b g a c b2^\> a\!
    \time 3/2
    % Ghost, Amen
    g1 r2 g1. g
  }

altotext = \lyricmode {
  Praise God from whom all bless -- ings flow
  Praise Him all crea -- tures here be -- low
  Praise Him a -- bove ye heav -- enly host
  Praise Fa -- ther, Son, and Ho -- ly Ghost
  A -- men
}

tenor = \relative g'  {
    \key g \major
    \numericTimeSignature
    \time 3/2
    % Praise God from whom all
    g2 g4 fis e d
    \time 2/2
    % blessings flow; praise Him all creatures here below 
    g2 a a b b4 b a g c2 b a 
    % Praise Him above ye heavenly host
    g2 a4 b a g e2^\< fis fis2\! (e4)
    % Praise Father, Son, and Holy 
    d'4 b g a c g2^\> fis\!
    \time 3/2
    % Ghost, Amen
    g1 r2 c1. b
  }

tenortext = \lyricmode {
  Praise God from whom all bless -- ings flow
  Praise Him all crea -- tures here be -- low__
  Praise Him a -- bove ye heav -- enly host
  Praise Fa -- ther, Son, and Ho -- ly Ghost
  A -- men
}

bass = \relative g'  {
    \key g \major
    \clef bass
    \numericTimeSignature
    \time 3/2
    % Praise God from whom all
    g,2 g4 fis e d
    \time 2/2
    % blessings flow; praise Him all creatures here below 
    g2 fis g b b4 b a g g2 g fis
    % Praise Him above ye heavenly host
    g2 a4 b a g c,2^\< d e2.\!
    % Praise Father, Son, and Holy 
    d'4 b g e g d2^\> d4 (c)\!
    \time 3/2
    % Ghost, Amen
    b1 r2 g'1. g,1.
  }

basstext = \lyricmode {
  Praise God from whom all bless -- ings flow
  Praise Him all crea -- tures here be -- low
  Praise Him a -- bove ye heav -- enly host
  Praise Fa -- ther, Son, and Ho -- ly Ghost
  A -- men
}

 

\score {
  \context ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
    }
    {
      \new Voice = "s" {
        \sop
      }
    }
    \new Lyrics \lyricsto "s" \soptext
    \new Staff \with {
      instrumentName = #"A"
    }
    {
      \new Voice = "a" {
        \alto
      }
    }
    \new Lyrics \lyricsto "a" \altotext
    \new Staff \with {
      instrumentName = #"T"
    }
    {
      \new Voice = "t" {
        \tenor
      }
    }
    \new Lyrics \lyricsto "t" \tenortext
    \new Staff \with {
      instrumentName = #"B"
    }
    {
      \new Voice = "b" {
        \bass
      }
    }
    \new Lyrics \lyricsto "b" \basstext
  >>
}
