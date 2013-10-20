stemOn = { \override Staff.Stem #'transparent = ##f }
stemOff = { \override Staff.Stem #'transparent = ##t }
lyricBold = {\override Score . LyricText #'font-name = #"URW Palladio L Bold" }
lyricRegular = { \override Score . LyricText #'font-name = #"URW Palladio L"}
lyricItalic = { \override Score . LyricText #'font-name = #"URW Palladio L Italic"}
stanzaFont = { \override StanzaNumber #'font-name = #"URW Palladio L"}
lowSlur = { \override Slur #'height-limit = #1.0 }
lowPSlur = { \override PhrasingSlur #'height-limit = #1.5 }
medSlur = { \override Slur #'height-limit = #1.5 }
medPSlur = { \override PhrasingSlur #'height-limit = #2.0 }
tick = { \bar "'" }
shortenSlur = { \override Slur #'minimum-length = #0.40 }
