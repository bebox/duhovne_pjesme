%version
\include "config/version.ily"

%song
\include "song/228a.ily"

%notes
\include "notes/soprano/228a_s.ily"

%chords
\include "chords/228a_c.ily"

%lyrics
\include "lyrics/228a_l.ily"

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    %Y-offset from 3.0 - 4.0 by 0.1 step
    \new Staff { \keepWithTag #'(markMojPoc_Y-offset0.0 markMoj_Y-offset) 
                 \soprano 
    }
    \addlyrics { \verseA }
    \addlyrics { \verseB }
    \addlyrics { \verseC }
    \addlyrics { \verseD }
  >>
   \include "config/lead_layout_conf.ily"
}