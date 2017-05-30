%version
\include "config/version.ily"

%song
\include "song/283.ily"

%notes
\include "notes/soprano/283_s.ily"

%chords
\include "chords/283_c.ily"

%lyrics
\include "lyrics/283_l.ily"

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
