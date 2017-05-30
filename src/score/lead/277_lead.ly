%version
\include "config/version.ily"

%song
\include "song/277.ily"

%notes
\include "notes/soprano/277_s.ily"

%chords
\include "chords/277_c.ily"

%lyrics
\include "lyrics/277_l.ily"

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
