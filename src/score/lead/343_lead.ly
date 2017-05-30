%version
\include "config/version.ily"

%song
\include "song/343.ily"

%notes
\include "notes/soprano/343_s.ily"

%chords
\include "chords/343_c.ily"

%lyrics
\include "lyrics/343_l.ily"

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
