%lilypond input 


\version "2.16.2"
#(set-default-paper-size "letter")
#(set-global-staff-size 19)

\header {
  title = "Wexford Carol"
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

%\include "deutsch.ly"

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
	\key g \major
	\time 3/4
	\partial 8
% 	\autoBeamOff
	\revert Rest #'direction
	\revert MultiMeasureRest #'staff-position
}

dynamik = {}

tempos = {}

sopMusic = \relative c' {
    d8 | g8 g16 (fis16) g4. a8 | b8 c8 d4 r8 d8 | c8 b8 g8 (d4) e8 | \break
    f8 g8 f4 r8 d8 | g8 g16 (fis16) g4. a8 | b8 c8 d4 r8 b8 | \break
    c8 d8 b8 (g4) a8 | g8 g8 g4 r8 g8 | g8 f'8 d8 (c4) a8 | \break
    bes8 c8 bes4. d16 (c16) | \times 2/3 {bes8 (a8) g8} g8 (d4) e8 | f8 g8 f4 r8 d8 | \break
    g8 g16 (fis16) g4. a8 | b8 c8 d4 r8 b8 | c8 d8 b8 g4 a8 | g8 g8 g4.\fermata \bar"|."
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
  Good peo -- ple all, this Christ -- mas -- time, Con -- si -- der well and
  bear in mind What our good God for us has done, In
  send -- ing his be -- lo -- ved Son. With Ma -- ry ho -- -- ly
  we should pray To God with love this Christ -- mas Day; In
  Beth -- le -- hem up -- on that morn There was a bless -- ed Mes -- si -- ah born.
}

VerseII = \lyricmode
{
  \set stanza = "2"
  Near Beth -- le -- hem did shep -- herds keep 
  Their flocks of lambs and feed -- ing sheep;
  To whom God's ang -- els did ap -- pear,
  Which put the shep -- herds in great fear.
  'Pre -- pare and go', the an -- gels said,
  'To Beth -- le -- hem, be not af -- raid;
  For there you'll find, this hap -- py morn,
  A prince -- ly ba -- be, sweet Je -- sus born.'
}

VerseIII = \lyricmode
{
  \set stanza = "3"
  With thank -- ful heart and joy -- ful mind,
  The shep -- herds went the babe to find,
  And as God's an -- gel had fore -- told,
  They did our Sav -- ior Christ be -- hold.
  With -- in a man -- ger he was laid,
  And by his side the vir -- gin maid,
  At -- tend -- ing on the Lord of life,
  Who came on ea -- rth to end all strife.
}

\score {
  \context ChoirStaff <<
    \ScoreSettings
    \context Staff = women <<
      \dynamik
      \tempos
      \dynamicUp
      \context Voice = sopranos { \voiceOne << \GlobalSettings \sopMusic >> }
      %\context Voice = altos { \voiceTwo << \GlobalSettings \altoMusic >> }
      %\set Staff.instrument = \markup { \column { "S" \line {"A"} } }
    >>
    \context Lyrics = sopranosI \lyricsto sopranos \VerseI
    \context Lyrics = sopranosII \lyricsto sopranos \VerseII
    \context Lyrics = sopranosIII \lyricsto sopranos \VerseIII

    \context Staff = men <<
      \clef bass
      \dynamik
      \dynamicDown
      %\context Voice = tenors { \voiceOne <<\GlobalSettings \tenorMusic >> }
      %\context Voice = basses { \voiceTwo <<\GlobalSettings \bassMusic >> }
      %\set Staff.instrument = \markup { \column { "T" \line {"B"} } }
    >>
  >>
}

