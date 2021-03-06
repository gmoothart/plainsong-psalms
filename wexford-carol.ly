%lilypond input 


\version "2.16.2"
#(set-default-paper-size "letter")
#(set-global-staff-size 19)

\header {
  title = "Wexford Carol"
  tagline = ""
}


\paper {
	between-system-padding = 0.3\cm
	after-title-space = 0.05\cm
    indent = 0
}


ScoreSettings = {

}

GlobalSettings = \notemode
{	
	\key g \major
	\time 3/4
	\partial 8
	\revert MultiMeasureRest #'staff-position
}

dynamik = {}

tempos = {}

sopMusic = \relative c' {
    d8 | g8 g16 (fis16) g4. a8 | b8 c8 d4 c8\rest d8 | c8[ b8] g8 (d4) e8 | \break
    f8 g8 f4 c'8\rest d,8 | g8 g16 (fis16) g4. a8 | b8 c8 d4 c8\rest b8 | \break
    c8[ d8] b8 (g4) a8 | g8 g8 g4 c8\rest g8 | g8[ f'8] d8 (c4) a8 | \break
    bes8 c8 bes4. d16 (c16) | \times 2/3 {bes8 (a8) g8} g8 (d4) e8 | f8 g8 f4 c'8\rest d,8 | \break
    g8 g16 (fis16) g4. a8 | b8 c8 d4 c8\rest b8 | c8[ d8] \slurDashed b8 (g4) a8 | g8 g8 g4.\fermata \bar"|."
}

altoMusic = \relative c' {
    d8 | g8 d8 d8. (c16 b8) d8 | g8 g8 fis4 s8 d8 | e8[ fis8] g8 (d4) e8 |
    c8 c8 d4 s8 d8 | g8 d8 d8. (c16 b8) d8 | g8 g8 fis4 s8 e8 |
    e8[ d8] e8 (f4) e8 | d8 c8 d4 s8 g8 | g8[ a8] g8 (e4) f8 |
    f8 c8 d4. d8 | d8[ d8] g8 (d4) e8 | d8 e8 d4 s8 d8 |
    g8 d8 b8. (c16 d8) e8 | f8 e8 d4 s8 d8 | f8[ f8] \slurDashed d8 (d4) d8 | g8 d8 b4. \bar"|."
}

tenorMusic = \relative c {
    d8 | g8 a8 b8. (c16 d8) d8 | b8 g8 a4 d,8\rest b'8 | a8[ fis8] b8[ (a8)] c8[ (b8)] |
    a8 g8 a4 d,8\rest d8 | g8 a8 b8. (c16 d8) d8 | b8 g8 a4 d,8\rest g8 |
    g8[ g8] g4 c4 | b8 c8 b4 d,8\rest g8 | g8[ c8] b8 (a4) c8 |
    bes8 a8 f4. g8 | \times 2/3 {g8 (a8) bes8} bes8[ (a8)] bes8[ (c8)] | a8 c8 a4 d,8\rest d8 |
    g8 a8 g8. (a16 b8) c8 | d8 c8 a4 d,8\rest g8 | a8[ a8] \slurDashed g8 (b4) a8 | b8 c8 d4. \bar"|."
}

bassMusic = \relative c {
    d8 | g8 d8 b8. (a16 g8) fis'8 | e8 e8 d4 s8 b8 | c8[ d8] e8[ (fis8)] g4 |
    f8 e8 d4 s8 d8 | g8 d8 b8. (a16 g8) fis'8 | e8 e8 d4 s8 e8 |
    c8[ b8] c8[ (d8)] c4 | g'8 e8 g4 s8 g8 | g8[ f8] g8 (a4) fis8 |
    g8 f8 bes,4. g8 | g'8[ g8] g8[ (f8)] g8] (a8)] | d,8 c8 d4 s8 d8 |
    g8 d8 e4. fis8 | g8 a8 fis4 s8 g8 | f8[ d8] \slurDashed g8 (g4) fis8 | e8 a8 g4.\fermata \bar"|."
}

VerseI = \lyricmode
{
  \set stanza = "1"
  Good peo -- ple all, this Christ -- mas -- time, Con -- si -- der well and
  bear in mind What our good God for us has done, In
  send -- ing his be -- lo -- ved Son. With Ma -- ry ho -- -- ly
  we should pray To God with love this Christ -- mas Day; In
  Beth -- le -- hem up -- on that morn There was a bless-ed Mes -- si -- ah born.
}

VerseII = \lyricmode
{
  \set stanza = "2"
  Near Beth -- le -- hem did shep -- herds keep 
  Their flocks of lambs and feed -- ing sheep;
  To whom God's an -- gels did ap -- pear,
  Which put the shep -- herds in great fear.
  'Pre -- pare and go', the an -- gels said,
  'To Beth -- le -- hem, be not a -- fraid;
  For there you'll find, this hap -- py morn,
  A prince -- ly babe, sweet Je -- sus born.'
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
  Who came on earth to end all strife.
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

