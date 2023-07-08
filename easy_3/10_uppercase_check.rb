# frozen_string_literal: true

def uppercase?(string_argument)
  alphabetic = string_argument.gsub(/[^a-zA-Z]/, '')
  alphabetic == alphabetic.upcase
end

# Tests:
p uppercase?('t') == false # result: true
p uppercase?('T') == true # result: true
p uppercase?('Four Score') == false # result: true
p uppercase?('FOUR SCORE') == true # result: true
p uppercase?('4SCORE!') == true # result: true
p uppercase?('') == true # result: true

# Further Exploration

# Food for thought: in our examples, we show that uppercase? should return true if the argument is an empty string. 
# Would it make sense to return false instead? 
# Why or why not?
# It would not make sense.
# There are no characters that are not uppercase as there are no characters.