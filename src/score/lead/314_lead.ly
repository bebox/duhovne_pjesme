%version
\include "config/version.ily"

%song
\include "song/314.ily"

%notes
\include "notes/soprano/314_s.ily"

%chords
\include "chords/314_c.ily"

%lyrics
\include "lyrics/314_l.ily"

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
