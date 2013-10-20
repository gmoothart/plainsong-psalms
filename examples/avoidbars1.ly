\layout { 
  \context { 
    \Lyrics 
    \consists "Bar_engraver" 
    \consists "Separating_line_group_engraver" 
    \override BarLine #'transparent = ##t 
    \override LyricText #'font-size = #1
  } 
  \context {
    \Score
    \override BarLine #'thick-thickness = #3.6
    \override BarLine #'hair-thickness = #1.2
    \override BarLine #'thin-kern = #2.4
  }
  \context {
    \Staff
    \override VerticalAxisGroup #'minimum-Y-extent = #'(- . 4)
  }
   ragged-last = ##f
} 
