\version "2.22.0"
\language "english"

\include "definitions.ily"
\include "II/voice-one.ily"
\include "II/voice-two.ily"

\score {
  \new Score <<
    \new Staff = "guitar" \with {
      \consists "Merge_rests_engraver"
      instrumentName = \markup { \fontsize #4 "II" }
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