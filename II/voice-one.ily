guitarVoiceOne = \relative c' {
  \formatFingering
  \numericTimeSignature
  \manualBeam 3.5 4.5
  a16 \sfu <a'-2> \sfu <c-1> e e e e e a,, <b'-2> <d-1> <gs-3> gs gs gs gs |
  \manualBeam 4.5 6
  a,, c'\halfBarre "V" #UP e a a a a a\stopBarre 
  \manualBeam 5.5 7
  a,, \sfu <e''-3
  \tweak extra-offset #'(0 . 3.3)
  _\3> <gs-4
  \tweak extra-offset #'(0 . 4.3)
  _\2> <b-1> 
  \manualBeam 6.5 6.5
  b b b b |
  a,, \sfu <e''-3> <a-4> <c-2> c c c c d,, <d'-3> <f-2> <b-4> b b b b |
  e,,, b''\halfBarre "IV" #UP \sfu <e-2> gs gs gs gs gs\stopBarre <e,-4
  \tweak extra-offset #'(0.5 . 0.3)
  _\5> <gs-3_\4> b e e e e e |
  d, <gs-1> b <f'-2> f f f f c, a' c e e e e e |
  b, <b'-3> <d-2> <gs-4> gs gs gs gs a,, \sfu <c'-2> \sfu <e-3> <a-4> a a a a |
  d,, \sfu <a'-2> b <f'-1> f f f f <e,-2> <gs-1> <d'-4> e e e e e |
  a,, c'\halfBarre "V" #UP e a a a a a \sfu <a,-3
  \tweak extra-offset #'(0.5 . 0.3)
  _\4>4\stopBarre r4 \bar ".|:" |
  
  c,16 e g c c c c c  b, d g d' d d d d |
  <bf,-1> g' \sfu <c-2> e e e e e bf, g' c e e e e e |
  a,, a'\halfBarre "II" #UP cs <a'-4> a a a a\stopBarre a,, \sfu <a'-1> \sfu <cs-2> <g'-4> g g g g |
  d, <a'-2> <cs-3> <g'-4> g g g g d, <a'-2> <d-4> <f-1> f f f f |
  d, gs b f' f f f f d, gs b e e e e e |
  c, a' c e e e e e b, <b'-3_\3> <d-2> <gs-4> gs gs gs gs |
  a,, <c'-2
  \tweak extra-offset #'(0 . 2.3)
  _\3> <e-3> <a-4> a a a a <f,-1> <c'-3
  \tweak extra-offset #'(0 . 2.3)
  _\3> <ds-2> <a'-4> a a a a |
  e,, <gs'-2_\4> \sfu <e'-1
  \tweak extra-offset #'(0 . 3.3)
  _\2> b' b b b b r2 |
  a,,16 a' c e e e e e a,, b' d gs gs gs gs gs |
  a,, c'\halfBarre "V" #UP e a a a a a\stopBarre a,, e'' gs b b b b b |
  a,, e'' a c c c c c a,, \sfu <e''-3> <g-2> <cs-4> cs cs cs cs |
  d,, f'\halfBarre "X" #UP a d d d d d 
  \manualBeam 7 8
  d,, f' a <f'-4> f f f f\stopBarre |
  d,, <gs-1> b <f'-2> f f f f c, a' c e e e e e |
  b, <b'-3> <d-2> <gs-4> gs gs gs gs a,, \sfu <c'-2> \sfu <e-3> <a-4> a a a a |
  d,, \sfu <a'-2> b f' f f f f e, gs d' e e e e e |
  a,, c'\halfBarre "V" #UP e a a a a a a,4\stopBarre r4 \bar ":|."
}