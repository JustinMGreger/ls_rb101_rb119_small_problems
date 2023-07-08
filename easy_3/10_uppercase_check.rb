# frozen_string_literal: true

def uppercase?(string_argument)
  alphabetic = string_argument
  alphabetic == alphabetic.upcase
end

# Tests:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
