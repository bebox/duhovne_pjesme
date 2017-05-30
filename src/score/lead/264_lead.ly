%version
\include "config/version.ily"

%song
\include "song/264.ily"

%notes
\include "notes/soprano/264_s.ily"

%chords
\include "chords/264_c.ily"

%lyrics
\include "lyrics/264_l.ily"

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
