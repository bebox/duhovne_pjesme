%version
\include "config/version.ily"

%song
\include "song/33.ily"

%notes
\include "notes/soprano/33_s.ily"

%chords
\include "chords/33_c.ily"

%lyrics
\include "lyrics/33_l.ily"

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
