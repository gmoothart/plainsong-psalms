%lilypond input 


\version "2.16.2"
#(set-default-paper-size "letter")
#(set-global-staff-size 19)

\header {
  title = "Good Christian Men, Rejoice"
  tagline = ""
}


\paper {
% 	between-system-space = 0.3\cm
	between-system-padding = 0.3\cm
	after-title-space = 0.05\cm
    indent = 0
% 	ragged-bottom = ##f
% 	ragged-last-bottom = ##f
    %page-breaking = #ly:minimal-breaking
    %page-count = #2
    %system-count = #5

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
	\time 6/4
	\partial 4
% 	\autoBeamOff
	\revert Rest #'direction
	\revert MultiMeasureRest #'staff-position
}

dynamik = {}

tempos = {}

sopMusic = \relative c' {
    f4 | f2 f4 a2 b4 | c2 (d4 c2) c4 | f,2 f4 a2 b4 | c2 (d4 c2.) | \break
    c2 d4 c2 b4 | a2 g4 f2.   | g2 g4 a2 g4 | f2 g4 a2. | \break
    c2 d4 c2 b4 | a2 g4 f2 f4 | g2 g4 a2 g4 | f2 g4 a2. | \break
    d,2 d4 e2 e4 | f2. (c'2.)   | a2 a4 g2 g4 | f2. \bar"|."
}

altoMusic = \relative c' {
    d4 | c2 d4 f2 f4 | c2 (f4 e2) f4 | d2 c4 f2 f4 | a2 (f4 e2.) |
    f2 f4 e2 g4 | f2 e4 f2. | e2 d4 e2 e4 | f4. (d8) e4 f2. |
    f2 f4 f2 g4 | f2 e4 d2 f4 | f2 f4 e4. (d8) e4 | f2 e4 e2. |
                         % parenthesize natural?
    d2 d4 d2 cis4 | d2. (c2.) | c2 f4 f2 e4 | f2. \bar"|." 
}

tenorMusic = \relative c' {
    b4 | a2 b4 c2 d4 | a2 (b4 c2) c4 | b2 a4 c2 d4 | c2 (b4 g2.) |
    c2 b4 g2 c4 | c2 b4 a2. | c2 d4 c2 b4 | a2 c4 c2. |
    c2 b4 c2 c4 | c2 b4 a2 c4 | d2 d4 c4. (b8) c4 | a2 c4 c2. |
    f,2 a4 g2 a4 | a4. (b8 a4 g2.) | f2 c'4 d2 c4 | a2. \bar"|." 
}

bassMusic = \relative c' {
    b,4 | f'2 f4 f2 f4 | f2. (g2) a4 | f2 f4 f2 f4 | f2. (c2.) |
    a2 b4 c2 e4 | f2 c4 d2. | c2 b4 a2 c4 | d2 c4 f2. |
    a2 b4 a2 e4 | f2 c4 d2 a'4 | b2 b,4 c2 c4 | d2 c4 a2. |
    d2 f4 e2 a,4 | d2. (e2.) | f2 a,4 b2 c4 | f2. \bar"|." 
}

VerseI = \lyricmode
{
  \set stanza = "1"
  Good Chris -- tian men, re -- joice
  with heart and soul and voice!
  Give ye heed to what we say:
  Je -- sus Christ is born to -- day!
  Ox and ass be -- fore Him bow
  and He is in the man -- ger now.
  Christ is born to -- day!
  Christ is born to -- day!
}

VerseII = \lyricmode
{
  \set stanza = "2"
  Good Chris -- tian men, re -- joice
  with heart and soul and voice!
  Now ye hear of end -- less bliss;
  Je -- sus Christ was born for this!
  He hath o -- pened hea -- ven's door
  and man is bless -- ed ev -- er -- more.
  Christ was born for this!
  Christ was born for this!
}

VerseIII = \lyricmode
{
  \set stanza = "3"
  Good Chris -- tian men, re -- joice
  with heart and soul and voice!
  Now ye need not fear the grave:
  Je -- sus Christ was born to save!
  Calls you one and calls you all
  to gain His ev -- er -- last -- ing hall.
  Christ was born to save!
  Christ was born to save!
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
      %\set Staff.instrument = \markup { \column { "S" \line {"A"} } }
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
      %\set Staff.instrument = \markup { \column { "T" \line {"B"} } }
    >>
  >>
}

