%version
\include "config/version.ily"

%song
\include "song/258.ily"

%notes
\include "notes/soprano/258_s.ily"

%chords
\include "chords/258_c.ily"

%lyrics
\include "lyrics/258_l.ily"

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
