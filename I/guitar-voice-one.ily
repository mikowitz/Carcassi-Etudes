guitarVoiceOne = \relative c' {
  \formatFingering
  \voiceOne
  <c-3>8 \sfu <c'-1> <b-0> \sfu <a-2> g f e d |
  <c-3> e' <d-4> \sfu <c-1> b a g f |
  e \sfu <g'-4> f e <d-3> \sfu <c-1> b a |
  g \sfu <fs-4> <e-2> d c b a d |
  <g,-3> g' \sfu <fs-4> <e-2> d c b a |
  g b' a g fs e d c |
  <b-2> <d'-4> c b a g f! e |
  d c b a g \sfu <f'-4> e d |
  c c' <d-4> \sfu <e-0> <f-2>
  \startStringNumberSpanner "2" #UP <g-4>\stopTextSpan <a-1>\startStringNumberSpanner "1" #UP <b-3> |
  <c-4> <b-3> <a-1>\stopTextSpan <g-4>\startStringNumberSpanner "2" #UP <f-2>\stopTextSpan \sfu <e-0> d c | 
  <b-0> \lowerRest r8 \lowerRest r4 \lowerRest r2 |
  R1 |
  a,8 a' b c d e <fs-1> <gs-3> |
  <a-4> \sfu <g!-1> <f!-4
  \tweak extra-offset #'(0 . 3.4)
  _\2> \sfu <e-0> <f-1> e d c |
  b \lowerRest r8 \lowerRest r4 \lowerRest r2 |
  R1
  c,8 c' d e f e d c |
  b \lowerRest r8 \lowerRest r4 \lowerRest r2 |
  <c,-2>8 e' <fs-1> <g-2> <a-4> g fs e | 
  <ds-4> r8 r4 r2 |
  <e,-2>8 g b e <ds-4> e ds e |
  d,! g b <f'-1> \sfu <e-0> f e f |
  e <g-4> <f-1> e <d-4> <f-1> e d |
  \sfu <c-1> e d c b <d-4> c b |
  a b c b c cs d cs |
  <d-3> e f e d c b a |
  <g,-3> g' a b c d e f |
  <g-4> r8 r4 r2 |
  <c,,-1>8 <g'-3
  \tweak extra-offset #'(0 . .25)
  _\4> \sfu <c-4
  \tweak extra-offset #'(0 . 2.3)
  _\3> e <g,-3
  \tweak extra-offset #'(.5 . .25)
  _\4>\halfBarre "III" #UP <b-2> d g\stopBarre |
  \sfu <c,-3
  \tweak extra-offset #'(.5 . 2.4)
  _\4>\halfBarre "VIII" #UP \sfu <e-2> g c\stopBarre 
  \manualBeam 4 5
  <g,-3>\halfBarre "III" #UP <b-2> d g\stopBarre |
  <c,,-1> <g'-3
  \tweak extra-offset #'(0 . .25)
  _\4> \sfu <c-4
  \tweak extra-offset #'(0 . 2.3)
  _\3> e \sfd <fs,-1> \sfu <c'-3> <ds-2> <a'-4> |
  <g,-2_\4> \sfu <c-3> \sfu <e-4> \sfu <g-1> <g,-1> <d'-3> <f-2> <b-4> |
  \sfd <c,-3>\halfBarre "VIII" #UP \sfu <e-2> g c\stopBarre 
  \manualBeam 4 5
  <g,-3>\halfBarre "III" #UP <b-2> d g\stopBarre |
  <c,,-1> <g'-3> \sfu <c-4> e <b,-2> <e-3> <gs-1> <d'-4> |
  a, <e'-3> \sfu <a-4> \sfu <c-2> <f,,-1> \sfu <f'-3> \sfu <a-2> <d-4> |
  g,, e' g c g, d' g b |
  c c, d e f g a b |
  <c,-3> c' d e <f-2>\startStringNumberSpanner "2" #UP <g-4>\stopTextSpan <a-1> <b-3> |
  <c,-1
  \tweak extra-offset #'(.5 . 2.3)
  _\3> <c'-4> b a <g-4>\startStringNumberSpanner #"2" #UP <f-2>\stopTextSpan \sfu <e-0> <d-4> |
  c, c' b a g f e d |
  c4 r4 r2 |
  <e g c>4 r <g c e> r |
  <e g c>2 r2 \bar "|."
}
