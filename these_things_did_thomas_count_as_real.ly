
% These Things Did Thomas Count as Real

\version "2.18.2"

\header { 
  title = "These Things Did Thomas Count as Real" 
  tagline = ""
} 

% for controlling paper size
#(set-default-paper-size "letter")
#(set-global-staff-size 19)

\paper {
  between-system-padding = 0.3\cm
  after-title-space = 0.05\cm
  indent = 0
}

line = \relative g'  {
    \key c \minor
    \numericTimeSignature
    \time 4/4
    ees4. (d8) c4 c4 | g'2 g2 | f4 ees4 d2 | \break
    ees4. (d8) c4 c4 | c'2 d8 (c4.) | bes4 aes4 g2 | \break
    c2 bes4 c4 | g2 ees2 | bes'4 g4 f2 | \break
    f2 g4 c,4 | ees4. (f8) g4. (f8) | ees4 d4 c2 \break
  }

verseI = \lyricmode {
  \set stanza = "1"
  These things did Tho -- mas count as real:
  The warmth of blood, the chill of steel,
  The grain of wood, the heft of stone,
  The last frail twitch of flesh and bone.
}

verseII = \lyricmode {
  \set stanza = "2"
  The vi -- sion of his ske -- ptic mind
  Was keen e -- nough to make him blind
  To a -- ny un -- ex -- pect -- ed act
  Too large for his small world of fact.
}


verseIII = \lyricmode {
  \set stanza = "3"
  His rea -- soned cer -- tain -- ties de -- nied 
  That one could live when one had died,
  Un -- til his fin -- gers read like braille
  The mar -- kings of the spear and nail.
}

verseIV = \lyricmode {
  \set stanza = "4"
  May we, O God, by grace be -- lieve
  And thus the ri -- sen Christ re -- ceive,
  Whose raw im -- print -- ed palms reached out
  And beck -- oned Tho -- mas from his doubt.
}

 

\score {
  <<
    \new Voice = "one" {
      \line
    }
    \new Lyrics \lyricsto "one" \verseI
    \new Lyrics \lyricsto "one" \verseII
    \new Lyrics \lyricsto "one" \verseIII
    \new Lyrics \lyricsto "one" \verseIV
  >>
}
