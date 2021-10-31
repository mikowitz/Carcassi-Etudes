\version "2.22.0"
\language "english"

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
  \override Fingering.whiteout = ##t
  \override Fingering.font-size = #-7
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


barre = {
  \once \override TextSpanner.style = #'line
  \once \override TextSpanner.font-shape = #'upright
  \once\override TextSpanner.bound-details.left.padding = #-1
  \once\override TextSpanner.bound-details.right.padding = #-1
  \once\override TextSpanner.bound-details.right-broken.text = ""
  \once\override TextSpanner.bound-details.left-broken.text = ""
  \once\override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
}

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
                       \tweak bound-details.left.padding #-1
                       \tweak bound-details.right.padding #-1
                       \tweak bound-details.right-broken.text ""
                       \tweak bound-details.left-broken.text ""
                       \tweak bound-details.right.text \markup { \draw-line $end-direction }
                       %\tweak bound-details.left.text \markup { \lower #.5 { \roman C \hspace #-.5 \fontsize #-3 $fret \hspace #.5 } }
                       \startTextSpan
                     #}))

stopBarre = \stopTextSpan