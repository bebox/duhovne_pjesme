%version
\include "config/version.ily"

%song
\include "song/52.ily"

%notes
\include "notes/soprano/52_s.ily"

%chords
\include "chords/52_c.ily"

%lyrics
\include "lyrics/52_l.ily"

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \soprano }
    \addlyrics { \verseA }
    \addlyrics { \verseB }
    \addlyrics { \verseC }
    \addlyrics { \verseD }
  >>
   \include "config/lead_layout_conf.ily"
}
