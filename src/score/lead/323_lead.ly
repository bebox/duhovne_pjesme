%version
\include "config/version.ily"

%song
\include "song/323.ily"

%notes
\include "notes/soprano/323_s.ily"

%chords
\include "chords/323_c.ily"

%lyrics
\include "lyrics/323_l.ily"

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
