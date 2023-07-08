# frozen_string_literal: true

def uppercase?(string_argument)
  return true if all of the alphabetic characters inside the string are .upcase
  Characters that are not alphabetic should be ignored.
end

# Tests:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
