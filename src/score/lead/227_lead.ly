%version
\include "config/version.ily"

%song
\include "song/227.ily"

%notes
\include "notes/soprano/227_s.ily"

%chords
\include "chords/227_c.ily"

%lyrics
\include "lyrics/227_l.ily"

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
