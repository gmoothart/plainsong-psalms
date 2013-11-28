%lilypond input 


\version "2.16.2"
#(set-default-paper-size "a4")
#(set-global-staff-size 19)

\header {
  title = "Hark, the herald angels sing"
  enteredby = "Reinhold Kainhofer"
  maintainer = "R. Kainhofer"
  maintainerEmail = "reinhold@kainhofer.com"
  lastupdated = "16. Dezember 2006"
}


\paper {
% 	between-system-space = 0.3\cm
	%between-system-padding = 0.3\cm
	%after-title-space = 0.05\cm
    indent = 0
% 	ragged-bottom = ##f
% 	ragged-last-bottom = ##f
}

\include "deutsch.ly"

ScoreSettings = {
% 	\set Score.skipBars = ##t
% 	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
% 	\set Staff.midiInstrument = "acoustic grand"
% 	\override Lyrics.VerticalAxisGroup #'minimum-Y-extent = #'(-0 . 0)
	% left-align all rehearsal marks
% 	\override Score.RehearsalMark #'self-alignment-X = #-1
% 	\override Score.RehearsalMark #'padding = #2.8
% 	\override Score.RehearsalMark #'font-size = #1
% 	\override Score.RehearsalMark #'font-shape = #'italic
%
	%\override Score.BarNumber  #'break-visibility = #end-of-line-invisible
	%\set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)
}

GlobalSettings = \notemode
{	
	\key f \major
	\time 4/4
	\partial 2
% 	\autoBeamOff
	\revert Rest #'direction
	\revert MultiMeasureRest #'staff-position
}

dynamik = {}

tempos = {}

sopMusic = \transpose g f {
  \relative c' {
    d4 g | g4. fis8 g4 h | h( a) d d | d4. c8 h4 a | h2 d,4 g | 
    g4. fis8 g4 h | h( a) d a | a4. fis8 fis4 e | d2  d'4 d | d g, c h |
    h( a) d d | d g, c h | a2 e'4 e | e d c h | c2 a4 h8( c) |
    d4 g, g a | h2 e4. e8 | e4 d c h | c2 a4 h8( c) | d4. g,8 g4 a | g2 \bar"|."
  }
}

altoMusic = \transpose g f {
  \relative c' {
    d4 d | d4. d8 d4 g | g( fis) g fis | e4. e8 d4 d | d2 d4 d |
    d4. d8 h4 d | e2 d4 e | fis4. d8 d4 cis | d2 d4 d | d g a g |
    g( fis) d d | d g a g | fis2 g4 g | e e e e | e2 fis4 fis |
    g d d fis | g2 g4. g8 | e4 e e e | e2 fis4 fis | g4. g8 g4 fis | d2 \bar"|."
  }
}

tenorMusic = \transpose g f {
  \relative c' {
    h4 h | h4. a8 g4 d' | d2 g,4 g | g4. a8 h4 c | h2 h4 h |
    h4. a8 g4 g | g2 fis4 a | a4. a8  h4 a8( g) | fis2 d'4 d | d d d d | 
    d2 d4 d | d d d d | d2 e4 e | c h a gis | a2 a4 d |
    d h h d | d2 e4. e8 | c4 d e h | a2 a4 d | d4. h8 h4 c | h2 \bar"|."
  }
}

bassMusic = \transpose g f {
  \relative c' {
    g4 g | g4. d8 h4 g | d'2 h4 h | c4. c8 d4 d | g,2 g'4 g |
    g4. d8 e4 d | cis4( a) h cis | d4. fis8 g4 a8( a,) | d2 d'4 d | d h fis g |
    d2 d'4 d | d h fis g | d2 c4 c | c c c e | a,2 d4 c |
    h4 g d' d | g2 c4. c8 | c4 h a gis | a2 d,4 c | h g d' d | <g g,>2 \bar"|."
  }
}

VerseI = \lyricmode
{
  \set stanza = "1"
  Hark! the he -- rald an -- gels sing, __ Glo -- ry to the new -- born King. Peace on earth and mer -- cy mild, __ God and sin -- ners re -- con -- cil'd. Joy -- ful all ye na -- tions rise. __ Join the tri -- umph of the skies. With th'an -- ge -- lic host pro -- claim: Christ is __ bor in Beth -- le -- hem. Hark! the he -- rald an -- gels sing, Glo -- ry __ to the new -- born King!
}

VerseII = \lyricmode
{
  \set stanza = "2"
  Christ, by high -- est heav'n a -- dor'd, Christ, the e -- ver -- last -- ing Lord,
  Late in time be -- hold Him come, off -- spring of a vir -- gin's womb, Veil'd in flesh the God -- head he,
  Hail th'in -- car -- nate De -- i -- ty! Pleas'd as man with man ap -- pear, Je -- sus our Im -- man -- uel here. Hark! the he -- rald an -- gels sing, Glo -- ry __ to the new -- born King!
}

VerseIII = \lyricmode
{
  \set stanza = "3"
  Hail the heav'n -- born Prince of Peace!  Hail the Son of Right -- eous -- ness!
  Light and life to all He brings Ris'n with heal -- ing in His wings
  Mild He lays His glo -- ry by __
  Born that man no more may die
  Born to raise the sons of earth
  Born to give them sec -- ond birth
  Hark! the he -- rald an -- gels sing, Glo -- ry __ to the new -- born King!
}

\score {
  \context ChoirStaff <<
    \ScoreSettings
    \context Staff = women <<
      \dynamik
      \tempos
      \dynamicUp
      \context Voice = sopranos { \voiceOne << \GlobalSettings \sopMusic >> }
      \context Voice = altos { \voiceTwo << \GlobalSettings \altoMusic >> }
      \set Staff.instrument = \markup { \column { "S" \line {"A"} } }
    >>
    \context Lyrics = sopranosI \lyricsto sopranos \VerseI
    \context Lyrics = sopranosII \lyricsto sopranos \VerseII
    \context Lyrics = sopranosIII \lyricsto sopranos \VerseIII

    \context Staff = men <<
      \clef bass
      \dynamik
      \dynamicDown
      \context Voice = tenors { \voiceOne <<\GlobalSettings \tenorMusic >> }
      \context Voice = basses { \voiceTwo <<\GlobalSettings \bassMusic >> }
      \set Staff.instrument = \markup { \column { "T" \line {"B"} } }
    >>
  >>
}

