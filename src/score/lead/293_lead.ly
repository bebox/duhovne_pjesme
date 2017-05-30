%version
\include "config/version.ily"

%song
\include "song/293.ily"

%notes
\include "notes/soprano/293_s.ily"

%chords
\include "chords/293_c.ily"

%lyrics
\include "lyrics/293_l.ily"

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
