%version
\include "config/version.ily"

%song
\include "song/82.ily"

%notes
\include "notes/soprano/82_s.ily"

%chords
\include "chords/82_c.ily"

%lyrics
\include "lyrics/82_l.ily"

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
