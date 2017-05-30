%version
\include "config/version.ily"

%song
\include "song/80.ily"

%notes
\include "notes/soprano/80_s.ily"

%chords
\include "chords/80_c.ily"

%lyrics
\include "lyrics/80_l.ily"

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
