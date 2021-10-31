\version "2.22.0"
\language "english"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "arch a")
  %system-system-spacing.minimum-distance = #23
  left-margin = 1\in
  right-margin = 1\in
  top-margin = 1\in
  bottom-margin = 1\in
  indent = 10
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  % annotate-spacing = ##t

 % #(set-paper-size "arch alandscape")
  #(define fonts
    (set-global-fonts
      #:music "scorlatti"
      #:roman "Liberation Serif"
      #:sans "Liberation Sans"
      #:factor (/ staff-height pt 20)
    )
  )
}

\header {
  tagline = ##f
}
formatFingering = {
  \set fingeringOrientations = #'(left)
  \override Fingering.font-name = #"Liberation Serif, Bold"
  \override Fingering.whiteout = ##t
  \override Fingering.font-size = #-4
}

shiftFingering = #(define-music-function (direction music) (number? ly:music?)
                    (let ((offset (if (positive? direction) '(0 . .5) '(0 . -.5))))
                      #{
                        \once \override Fingering.extra-offset = $offset
                        $music
                      #}))

sfu = #(define-music-function (music) (ly:music?)
         #{
           \shiftFingering #1 $music
         #})
sfd = #(define-music-function (music) (ly:music?)
         #{
           \shiftFingering #-1 $music
         #})

beamLength = #(define-music-function (len music) (number? ly:music?)
                #{
                  \override Stem.details.beamed-lengths = #(cons len '())
                  $music
                  \revert Stem.details.beamed-lengths
                #})

manualBeam =
#(define-music-function
  (beg end)
  (number? number?)
  #{
    \once \override Beam.positions = #(cons beg end)
  #})

cWithSlash = \markup {
  \combine \upright C \translate #'(0.8 . -0.3) \override #'(thickness . 1.4) \draw-line #'(0 . 2)
}

stringNumberSpanner =
#(define-music-function (parser location StringNumber) (string?)
   #{
     \once\override TextSpanner.style = #'solid
     \once\override TextSpanner.font-size = #-5
     \once\override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
     \once\override TextSpanner.bound-details.left.text =
     \markup { \circle \number $StringNumber \hspace #.667 }
     \once\override TextSpanner.bound-details.right.text = 
     \markup { \draw-line #'(0 . -1) }
     \once\override TextSpanner.bound-details.right.padding = #-2
   #})

startStringNumberSpanner =
#(define-music-function (parser location string-number dir) (string? number?)
     (let ((end-direction (if (positive? dir) '(0 . -.5) '(0 . .5))))
         #{

     \tweak style #'solid
     \tweak font-size #-5
     \tweak bound-details.left.stencil-align-dir-y #CENTER
     \tweak bound-details.left.text \markup { \override #'(font-name . "Liberation Serif, Bold") \fontsize #2 \circle \number $string-number \hspace #.667 }
     \tweak bound-details.right.text \markup { \draw-line $end-direction }
                            \tweak bound-details.right-broken.text ""
                       \tweak bound-details.left-broken.text ""
     \tweak TextSpanner.bound-details.right.padding #-2
     \startTextSpan
   #}))

halfBarre = #(define-event-function (parser location fret dir) (string? number?)
               #{
                \tweak bound-details.left.text \markup { \lower #.5 { \cWithSlash \hspace #-.5 \fontsize #-3 $fret \hspace #.5 }}
                 \startBarre $fret $dir
               #})

fullBarre = #(define-event-function (parser location fret dir) (string? number?)
               #{
                 \tweak bound-details.left.text \markup { \lower #.5 { \roman C \hspace #-.5 \fontsize #-3 $fret \hspace #.5 }}
                 \startBarre $fret $dir
               #})

startBarre = #(define-event-function (parser location fret dir) (string? number?)
                (let ((end-direction (if (positive? dir) '(0 . -1) '(0 . 1))))
                     #{
                       \tweak style #'line
                       \tweak font-shape #'upright
                       \tweak bound-details.left.padding #0
                       \tweak bound-details.right.padding #-1
                       \tweak bound-details.right-broken.text ""
                       \tweak bound-details.left-broken.text ""
                       \tweak bound-details.right.text \markup { \draw-line $end-direction }
                       %\tweak bound-details.left.text \markup { \lower #.5 { \roman C \hspace #-.5 \fontsize #-3 $fret \hspace #.5 } }
                       \startTextSpan
                     #}))

stopBarre = \stopTextSpan

lowerRest = { \once\override Rest.extra-offset = #'(0 . -1) }

\layout {
  \context {
    \Staff
    \override StringNumber.font-name = #"Liberation Serif, Bold"
    \override StringNumber.whiteout = ##t
    \override StringNumber.font-size = #-3

  }
  
  \context {
    \Voice
    \override TextSpanner.font-name = #"Liberation Serif"
  }
}