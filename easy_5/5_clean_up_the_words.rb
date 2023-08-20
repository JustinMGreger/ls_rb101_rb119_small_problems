# frozen_string_literal: true

# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row,
# you should only have one space in the result (the result should never have consecutive spaces).

# Data Structure, How we represent data that we will work with when converting the input to output:
# Array.

# Algorithm, Steps for converting input to output:
# 1. the cleanup method accepts the string parameter that consists of some words (all lowercased) and an assortment of
# non-alphabetic characters
# 2. split the string parameter based on all non-alphabetic characters
# 3. replace all non-alphabetic characters with spaces
# 4. combine the result into a string.
# 5. return the resulting string

def cleanup(string_parameter)
  replaced_string = split_string.gsub(/[^a-zA-Z]/, ' ')
  result_string = replaced_string.gsub(/\s+/, ' ')
  result_string
end

# test:
p cleanup("---what's my +*& line?") == ' what s my line '
