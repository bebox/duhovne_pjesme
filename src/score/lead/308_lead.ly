%version
\include "config/version.ily"

%song
\include "song/308.ily"

%notes
\include "notes/soprano/308_s.ily"

%chords
\include "chords/308_c.ily"

%lyrics
\include "lyrics/308_l.ily"

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
