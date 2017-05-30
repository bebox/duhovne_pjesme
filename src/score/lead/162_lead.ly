%version
\include "config/version.ily"

%song
\include "song/162.ily"

%notes
\include "notes/soprano/162_s.ily"

%chords
\include "chords/162_c.ily"

%lyrics
\include "lyrics/162_l.ily"

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
