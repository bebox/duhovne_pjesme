%version
\include "config/version.ily"

%song
\include "song/380.ily"

%notes
\include "notes/soprano/380_s.ily"

%chords
\include "chords/380_c.ily"

%lyrics
\include "lyrics/380_l.ily"

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
