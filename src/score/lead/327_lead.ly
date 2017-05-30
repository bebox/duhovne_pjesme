%version
\include "config/version.ily"

%song
\include "song/327.ily"

%notes
\include "notes/soprano/327_s.ily"

%chords
\include "chords/327_c.ily"

%lyrics
\include "lyrics/327_l.ily"

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
