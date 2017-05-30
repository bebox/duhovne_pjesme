%version
\include "config/version.ily"

%song
\include "song/305.ily"

%notes
\include "notes/soprano/305_s.ily"

%chords
\include "chords/305_c.ily"

%lyrics
\include "lyrics/305_l.ily"

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
