\version "2.18.0"
\include "deutsch.ly"

\header {
  poet = "Po Ambrosius von Ignaz Franzu, 1719-1790"
  composer = "Beč 1774 / Heinrich Bone 1852"
  title = "TEBE BOGA HVALIMO"
  %titlex = "Duhovne Pjesme"
  broj = "1"
}

\include "s02_frbo.ily"

\paper {
 \aFourR
}

note = \relative c'' {
  \tempo 4 = 85
  \key g \major
  \time 3/4
  \mark \default
  g2 g4 |
  g4( fis) g |
  a4( h) a |
  g2. |
  h2 h4 |
  h4( a) h |
  d4( c) h |
  h2 a4 |
  
  g2 g4 |
  g4( fis) g |
  a4( h) a |
  g2. |
  h2 h4 |
  h4( a) h |
  d4( c) h |
  h2 a4 |
  
  %REFREN
  \mark \default
  a2 h4 |
  c4( h) a |
  h2 c4 |
  d2. |
  e2 e4 |
  d4( c) h |
  c4( h) a |
  g2. |
  \bar "|."
  \bar "|."
}

akordi = \chordmode {
  \set chordChanges = ##t
  %\skip 2
  g2. | e:m | a2:m
  d4 | g2. |
  g2. | g | d2 g4 | g2 d4 |
  g2. | e:m | a2:m
  d4 | g2. |
  g2. | g | d2 g4 | g2 d4 |
  
  d2. | d:7 | g | g |
  c2. | g2 e4:m | a2:m d4 | g2. |
}

akordiOpsezno = \chordmode {
  \set chordChanges = ##t
  \repeat unfold 2 {
  g2. |
  e2:m g4/h |
  c4:6 g/d d:7 |
  g2. |
  
  g4 g/h g/d |
  g4 d/g g |
  d4/fis d:7/fis g |
  g2/d d4 | }
  
  %refren
  d2 g4/d |
  d4:7 g/d d/c |
  g4/h g c/e |
  g2./h |
  c2 a4:m |
  d4/fis dis:dim e:m |
  a4:m/c g/d d:7 |
  g2. |
  
}

akordiNjem = \chordmode {
  \set chordChanges = ##t
  \repeat unfold 2 {
  g2. |
  g4 d g |
  d g d |
  g2. |
  g2. |
  g4 d g |
  g4 d g |
  g4/d d2 |
  }
  
  d2 g4/d |
  d2. |
  g2. |
  g2.:7 |
  c2. |
  g4 d g |
  c4 g/d d |
  g2. |
}

akordiPro = \chordmode {
  \set chordChanges = ##f
  \repeat unfold 2 {
  g2. |
  e2:m g4 |
  c4:6 d:6 d4 |
  g2. |
  
  g2. |
  g2. |
  d2 g4 |
  g2 d4 | }
  
  %refren
  d2 g4 |
  d2. |
  g2 c4 |
  g2. |
  c2 a4:m |
  d4 dis:dim e:m |
  a2:m d4 |
  g2. |
  
}

kiticaA = \lyricmode {
  \set stanza = #"1. "
  %\skip4 \skip4
  Te -- be Bo -- ga hva -- li -- mo,
  sla -- već Tvo -- ja sve -- ta dje -- la.
  Tvo -- ju moć ve -- li -- ća -- mo,
  di -- vi Ti __ se ze -- mlja cije -- la!

  Što s'od vije -- ka bi -- o Ti,
  o -- stat ćeš __ u vje -- čno -- sti.
}

ref = \lyricmode {
 
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
  Sve što mo -- že sla -- vi Te,
  ke -- ru -- bi -- ni, se -- ra -- fi -- ni.
  Pje -- va -- ju __ Ti sla -- vo -- poj,
  s'an -- đe -- li -- ma na __ vi -- si -- ni:
  
  Svet, svet, svet je Go -- spod Bog,
  kralj pre -- sla -- vni pu -- ka svog.
}

kiticaC = \lyricmode {
  \set stanza = #"3. "
  %\skip4 \skip4
  Po -- gle -- daj __ na na -- rod svoj!
  %STARO
  %_ Mi -- lo -- stiv sva -- gda bu -- di!
  %PRIJEDLOG
  Mi -- lo -- stiv mu sva -- gda bu -- di!
  Pra -- vim pu -- tem vo -- di ga,
  da mu du -- šman ne __ na -- u -- di.
  
  Skru -- šen glas mu sa -- slu -- šaj,
  i u vje -- čni pri -- mi raj.
}

kiticaD = \lyricmode {
  \set stanza = #"4. "
  %\skip4 \skip4
  Smi -- luj nam se Go -- spo -- de!
  Bla -- go -- slov nam svoj po -- dije -- li!
  Do -- bro -- tom __ nas pra -- ti svud
  kroz taj grje -- šni ži -- vot cije -- li.
  
  Bu -- di s'na -- ma sva -- ki čas,
  svih stvo -- re -- nja je -- din spas.
  
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordiPro }
    \new Staff { \note }
    \addlyrics { \kiticaA }
    \addlyrics { \kiticaB }
    \addlyrics { \kiticaC }
    \addlyrics { \kiticaD }
  >>
    \layout {}
    \midi { \tempo 4 = 85
        \context {
      \type "Performer_group"
      \consists "Staff_performer"
      \name ChordNames
      \defaultchild Voice
    }
    }
}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
