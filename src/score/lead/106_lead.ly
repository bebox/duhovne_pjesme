%version
\include "config/version.ily"

%song
\include "song/106.ily"

%notes
\include "notes/soprano/106_s.ily"

%chords
\include "chords/106_c.ily"

%lyrics
\include "lyrics/106_l.ily"

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
