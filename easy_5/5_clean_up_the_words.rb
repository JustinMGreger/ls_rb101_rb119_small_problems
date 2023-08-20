# frozen_string_literal: true

# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row,
# you should only have one space in the result (the result should never have consecutive spaces).

def cleanup(string_parameter)
  replaced_string = string_parameter.gsub(/[^a-zA-Z]/, ' ')
  result_string = replaced_string.gsub(/\s+/, ' ')
  result_string
end

# test:
p cleanup("---what's my +*& line?") == ' what s my line '
