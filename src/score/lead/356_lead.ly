%version
\include "config/version.ily"

%song
\include "song/356.ily"

%notes
\include "notes/soprano/356_s.ily"

%chords
\include "chords/356_c.ily"

%lyrics
\include "lyrics/356_l.ily"

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
