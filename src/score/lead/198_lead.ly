%version
\include "config/version.ily"

%song
\include "song/198.ily"

%notes
\include "notes/soprano/198_s.ily"

%chords
\include "chords/198_c.ily"

%lyrics
\include "lyrics/198_l.ily"

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
