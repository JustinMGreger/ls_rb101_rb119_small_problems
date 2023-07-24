# frozen_string_literal: true

# Write a method that takes a string argument,
# and returns true if all of the alphabetic characters inside the string are uppercase,
# false otherwise.
# Characters that are not alphabetic should be ignored.

# Examples:
# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

# LS solution:
# def uppercase?(string)
#   string == string.upcase
# end

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
# Answer:
# It would not make sense.

# Why or why not?
# Answer:
# There are no characters that are not uppercase as there are no characters.
