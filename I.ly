\version "2.22.0"
\language "english"

\include "definitions.ily"
\include "I/guitar-voice-one.ily"

guitarVoiceTwo = \relative c' {
  \voiceTwo
  c4 r4 r2 |
  c4 r4 r2 |
  e4 r4 r2 |
  s1 |
  g,4 r4 r2 |
  g4 r4 r2 |
  b4 r4 r2 |
  s1 |
  c4 r4 r2 |
  R1 |
  r8 e, fs gs a b c d |
  e ds e f! e d! c b |
  a4 r4 r2 |
  R1 |
  r8 g a b c d e fs |
  g fs g a g f! e d |
  c8 r8 r4 r2 |
  r8 g b d g f e d |
  c8 r8 r4 r2 |
  r8 b ds fs b a g fs |
  e2 r2 |
  d!2 r2 |
  c2 g' |
  a e |
  f r |
  d r |
  g,4 r4 r2 |
  r8 g b d g f e d |
  c2 g' |
  c g |
  c, fs |
  g g |
  c g |
  c, b |
  a f |
  g g |
  c'8 s8 s4 s2 |
  c,4 r4 r2 |
  c'4 r4 r2 |
  c,4 r4 r2 |
  s4 r4 r2 |
  c4 r c4 r |
  c2 r |
}

\score {
  \new Score <<
    \new Staff = "guitar" \with {
      \consists "Merge_rests_engraver"
      instrumentName = \markup { \fontsize #4 "I" }
    } {
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      << {
        \guitarVoiceOne 
      } \\ { 
        \guitarVoiceTwo
      } >>
    }
  >>
}