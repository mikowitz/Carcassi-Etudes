\version "2.22.0"
\language "english"

\include "definitions.ily"
\include "I/guitar-voice-one.ily"
\include "I/guitar-voice-two.ily"

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