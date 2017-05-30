%version
\include "config/version.ily"

%song
\include "song/276.ily"

%notes
\include "notes/soprano/276_s.ily"

%chords
\include "chords/276_c.ily"

%lyrics
\include "lyrics/276_l.ily"

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
