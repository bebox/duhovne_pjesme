%version
\include "config/version.ily"

%song
\include "song/48.ily"

%notes
\include "notes/soprano/48_s.ily"

%chords
\include "chords/48_c.ily"

%lyrics
\include "lyrics/48_l.ily"

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    %Y-offset from 3.0 - 4.0 by 0.1 step
    \new Staff { \keepWithTag #'(markMojPoc_Y-offset3.5 markMoj_Y-offset) 
                 \soprano 
    }
    \addlyrics { \verseA }
    \addlyrics { \verseB }
    \addlyrics { \verseC }
    \addlyrics { \verseD }
    \addlyrics { \verseE }
  >>
   \include "config/lead_layout_conf.ily"
}