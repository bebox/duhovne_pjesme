%version
\include "config/version.ily"

%song
\include "song/289a.ily"

%notes
\include "notes/soprano/289a_s.ily"

%chords
\include "chords/289a_c.ily"

%lyrics
\include "lyrics/289a_l.ily"

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
