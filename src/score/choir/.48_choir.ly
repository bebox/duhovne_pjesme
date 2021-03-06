%version
\include "config/version.ily"

%song
\include "song/48.ily"

%notes
\include "notes/soprano/48_s.ily"
\include "notes/alto/48_a.ily"
\include "notes/tenor/48_t.ily"
\include "notes/bass/48_b.ily"

%lyrics
\include "lyrics/48_l.ily"

%choir layout behaviour
\include "config/choir_conf.ily"

%score
\score {
  \new ChoirStaff <<
    \new Staff \with {
      \override RestCollision.positioning-done = #merge-rests-on-positioning
      %instrumentName = \markup \center-column { "S" "A" }
    } <<
      \new Voice = "soprano" { \voiceOne 
                               \keepWithTag #'choir_Y-offset 
                               \soprano 
      }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics = "verse1" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
    \new Lyrics = "verse2" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
    \new Lyrics = "verse3" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }     
    \new Lyrics = "verse4" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }  
    \new Lyrics = "verse5" \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } 
    \new Staff \with {
      \override RestCollision.positioning-done = #merge-rests-on-positioning
      %instrumentName = \markup \center-column { "T" "B" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \context Lyrics = "verse1" \lyricsto "soprano" \verseA
    \context Lyrics = "verse2" \lyricsto "soprano" \verseB
    \context Lyrics = "verse3" \lyricsto "soprano" \verseC
    \context Lyrics = "verse4" \lyricsto "soprano" \verseD
    \context Lyrics = "verse5" \lyricsto "soprano" \verseE
  >>
  \include "config/choir_layout_conf.ily"
}
