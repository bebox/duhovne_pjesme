\version "2.19.49"
%%%%%%%%%%%%
%% CONFIG %%-------------------------------------------------------------------------
%%%%%%%%%%%%

%#(set-default-paper-size "a4")	%format papira

myStaffSize = #22
#(set-global-staff-size myStaffSize)
\paper {
  #(define fonts (make-pango-font-tree "JohnSans Text Pro" "Lilypond JohnSans White Pro" "Lilypond JohnSans Medium Pro" (/ myStaffSize 22)))
  markup-system-spacing.padding = #7
  %system-system-spacing #'padding = #10
  indent = 0
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 10\mm
  %paper-width = 138 \mm
  %paper-height = 214 \mm
  top-markup-spacing.padding = #0
  markup-system-spacing.padding = #5
  markup-system-spacing.stretchability = #5
  score-system-spacing.padding = #5
  %last-bottom-spacing.padding = #5
  score-markup-spacing.padding = #5
  top-system-spacing.padding = #5

  markup-markup-spacing.padding = #1
  %markup-markup-spacing.stretchability = #0
  %markup-markup-spacing.minimum-distance = #0
  %markup-markup-spacing.basic-distance = #0

  system-system-spacing.padding = #2.5
  %system-system-spacing.minimum-distance = #1
  system-system-spacing.stretchability = #0
  score-system-spacing.stretchability = #5
  print-page-number = ##f
  last-bottom-spacing.minimum-distance =#0
  score-markup-spacing.stretchability = #0

  %first-page-number = #16
  %print-first-page-number = ##t
  %auto-first-page-number = ##t
  %ragged-last-bottom=##t
  %annotate-spacing = ##t

  %oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 \brojPjesme }
  %oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 \copyright \override #'(font-name . "JohnSans Medium Pro") \brojStraniceLijevo}}}
  %evenFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") \brojStraniceDesno }}

  %size A4 which is 210 × 297 mm
  %  left-margin = 20 \mm %10mm
  line-width = 170 \mm %paper-width - 20mm
  bottom-margin = 12 \mm
  oddHeaderMarkup = \markup \teeny \on-the-fly #not-first-page {
    \vspace #2
    \fill-line {
      \on-the-fly #not-part-first-page {
        \italic \fromproperty #'header:title
        \fromproperty #'header:composer
      }
      %\fromproperty #'page:page-number-string
    }
  }
  evenHeaderMarkup = \markup \teeny \on-the-fly #not-first-page {
    \vspace #2
    \fill-line {
      \on-the-fly #not-part-first-page {
        \override #'(font-name . "JohnSans White Pro Italic") \fromproperty #'header:title
        \override #'(font-name . "JohnSans White Pro") \fromproperty #'header:composer
      }
      %\fromproperty #'page:page-number-string
    }
  }

  %  oddFooterMarkup = \markup {
  %    \on-the-fly #part-last-page \teeny \italic
  %    \fill-line {
  %      \tagline \concat { \AcquisitionDate \hspace #1 \Revision \hspace #1 \Formerly }
  %    }
  %  }
  %  evenFooterMarkup = \markup {
  %   \on-the-fly #part-last-page \teeny \italic
  %    \fill-line {
  %      \tagline \concat { \AcquisitionDate \hspace #1 \Revision \hspace #1 \Formerly }
  %    }
  %  }
}


%%%%%%%%%%%%%%%%
%% STAFF SIZE %% --------------------------------------------------------------------
%%%%%%%%%%%%%%%%

%myStaffSize = #24
%#(set-global-staff-size myStaffSize)
%#(set-default-paper-size "a4")	%format papira

%%%%%%%%%%%%%%%%%%%%%%%%%
%% USER DEF. FUNCTIONS %%------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%

%BREATHEMOJ
\layout {
  \context {
    \Voice
    %\override BreathingSign.font-name = #"Helvetica"			%font za zarez
    \override BreathingSign.font-size = #8				%velicina fonta za zarez
    \override BreathingSign.text = \markup { \raise #0.2 "," }	%stavi zarez
    %\override BreathingSign.color = #blue				%boja zareza
    \override BreathingSign.color = #(rgb-color 1 0 0)
  }

  \context {
    \Score markFormatter = #format-mark-box-numbers			%box oko broja
    %\Score markFormatter = #format-mark-circle-numbers			%krug oko broja
    \override RehearsalMark.self-alignment-X = #CENTER		%pozicija broja na zarez
    %\override RehearsalMark.color = #blue				%boja rehearsal marka
    \override RehearsalMark.color = #(rgb-color 1 0 0)
  }
}

breatheMoj = {
  \noBreak
  \once \override Score.RehearsalMark.Y-offset = #0.1
  \once \override Staff.BarLine #'extra-spacing-width = #'(-2 . 2)
  \once \override Staff.BarLine #'color = #red
  \once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar "|"
  \mark \default
}

markMojPoc = {
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  \tag #'align_anchor \once \override Score.TimeSignature.break-align-anchor = #1.39
  %\override Score.RehearsalMark.Y-extent = ##f
  \tag #'align_center \once \override Score.TimeSignature.break-align-anchor-alignment = #CENTER
  \tag #'choir_Y-offset \once \override Score.RehearsalMark.Y-offset = #3.2
  \tag #'markMojPoc_Y-offset \once \override Score.RehearsalMark.Y-offset = #0.1
  %\tag #'markMojPoc_Y-offset3.0 \once \override Score.RehearsalMark.Y-offset = #3
  %\tag #'markMojPoc_Y-offset3.1 \once \override Score.RehearsalMark.Y-offset = #3.1
  %\tag #'markMojPoc_Y-offset3.2 \once \override Score.RehearsalMark.Y-offset = #3.2
  %\tag #'markMojPoc_Y-offset3.3 \once \override Score.RehearsalMark.Y-offset = #3.3
  %\tag #'markMojPoc_Y-offset3.4 \once \override Score.RehearsalMark.Y-offset = #3.4
  %\tag #'markMojPoc_Y-offset3.5 \once \override Score.RehearsalMark.Y-offset = #3.5
  %\tag #'markMojPoc_Y-offset3.6 \once \override Score.RehearsalMark.Y-offset = #3.6
  %\tag #'markMojPoc_Y-offset3.7 \once \override Score.RehearsalMark.Y-offset = #3.7
  %\tag #'markMojPoc_Y-offset3.8 \once \override Score.RehearsalMark.Y-offset = #3.8
  %\tag #'markMojPoc_Y-offset3.9 \once \override Score.RehearsalMark.Y-offset = #3.9
  %\tag #'markMojPoc_Y-offset4.0 \once \override Score.RehearsalMark.Y-offset = #4.0
  \mark \default
}

markMoj = {
  %\override Score.RehearsalMark.outside-staff-priority = ##f
  %\markLengthOn
  \once \override Score.RehearsalMark.break-align-symbols = #'(key-signature staff-bar)
  \once \override Score.KeySignature.break-align-anchor = #2.9
  \once \override Staff.BarLine.extra-spacing-width = #'(0 . 1.5)
  \tag #'markMoj_Y-offset \once \override Score.RehearsalMark.Y-offset = #0.1
  \tag #'choir_Y-offset \once \override Score.RehearsalMark.Y-offset = #3.2
  \mark \default
}

%LEFT
left = { \once \override LyricText.X-offset = #-2.8 }                 % \left "S to" -- bom                                                                                           %snipet 737

%MARK DEFAULT I LYRICS FONT SIZE
\layout { 
  \context {
    \Score markFormatter = #format-mark-box-numbers
    %\Score markFormatter = #format-mark-circle-numbers
    \override RehearsalMark.self-alignment-X = #CENTER
    %\override RehearsalMark.color = #blue
    \override RehearsalMark.color = #(rgb-color 1 0 0)
    %\override StaffSymbol.thickness = #0.5
    %\override Stem.thickness = #2.5
    %\override Stem.thickness = #10
    %\override StaffSymbol.ledger-line-thickness = #'(0.2 . 0.2)
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0
    \override LyricText.font-name = "JohnSans White Pro"
  } 
}

%Izmedu povisilica/snizilica i prve note dodaj space
\layout {
  \override Score.KeySignature.space-alist #'first-note = #'(extra-space . 2.8)
}

%%%%%%%%%%%%
%% HEADER %% ------------------------------------------------------------------------
%%%%%%%%%%%%

#(define-markup-command (when-property layout props symbol markp) (symbol? markup?)
   (if (chain-assoc-get symbol props)
       (interpret-markup layout props markp)
       empty-stencil))

aFourL = \paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 4.5) %raznak između redova naslova

    \fill-line { %rasiri po liniji u stupce na rubove
      \line { %stvori lijevu grupu stupaca
        \column %prvi lijevi stupac
        { \vspace #1.5 %pomiče znak prema dole
          { \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 13) \with-color #red \fromproperty #'header:broj } }
        \hspace #2 %pomiče slova u desno od znaka
        \left-column %drugi lijevi stupac s lijevim poravnavanjem
        { \when-property #'header:title {
          \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 4) { \fromproperty #'header:title }
          }
          \when-property #'header:titlex {
            \override #'(font-name . "JohnSans White Pro Italic") \override #'(font-size . 4) { \fromproperty #'header:titlex }
          }
        }
      }

      \right-column { %stvori desni stupac 
        \when-property #'header:composer {
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) \with-color #black { \fromproperty #'header:composer } }
        \line { %stvori novu liniju unutar donjeg dijela stupca da dobimo odnos 1:n
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) {
            \when-property #'header:bpm {
              { \fromproperty #'header:bpm }
              { "BPM" "|" }
            }
            \when-property #'header:style {
              \with-color #black   
              { \fromproperty #'header:style }
            }
          }
        }
      }

    }
  }
}

%Broj desno
aFourR = \paper {
  bookTitleMarkup = \markup {
    \override #'(baseline-skip . 4.5) %raznak između redova naslova

    \fill-line { %rasiri po liniji u stupce na rubove

      \left-column {%drugi lijevi stupac s lijevim poravnavanjem
        \when-property #'header:composer {
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) \with-color #black { \fromproperty #'header:composer } }
        \line { %stvori novu liniju unutar donjeg dijela stupca da dobimo odnos 1:n
          \override #'(font-name . "JohnSans White Pro") \override #'(font-size . 1.5) {
            %\when-property #'header:bpm {
            %  { \fromproperty #'header:bpm }
            %  { "BPM" "|" }
            %}
            \when-property #'header:style {
              \with-color #black   
              { \fromproperty #'header:style }
            }
          }
        }
      }
      
      

      \line { %stvori lijevu grupu stupaca

        \right-column { %stvori desni stupac 
          { \when-property #'header:title {
            \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 4) { \fromproperty #'header:title }
            }
            \when-property #'header:titlex {
              \override #'(font-name . "JohnSans White Pro Italic") \override #'(font-size . 4) { \fromproperty #'header:titlex }
            }
          }
        
        }
        \hspace #2 %pomiče slova u desno od znaka
        \column %prvi lijevi stupac
        
        { \vspace #1.5 %pomiče znak prema dole
          { \override #'(font-name . "JohnSans Medium Pro") \override #'(font-size . 13) \with-color #red \fromproperty #'header:broj } }

      }

    }
  }
}

\header {
  copyright = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Creative Commons—Attribution-ShareAlike 4.0 | Udruga “Riječi Iskrene” Dravska 8, 40305 Pušćine, Hrvatska } }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { \simple #(strftime "%d/%m/%Y" (localtime (current-time)))
  %                                                                                                  \with-url #"http://lilypond.org/web/" { LilyPond \simple #(lilypond-version)
  %                                                                                                                                          (http://lilypond.org/) } } }
  tagline = ""
}


%{
convert-ly (GNU LilyPond) 2.19.60  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11,
2.19.16, 2.19.22, 2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40,
2.19.46, 2.19.49
%}
