# frozen_string_literal: true

# Write a method that takes a non-empty string argument, and returns the middle character or
# characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length, you should return exactly two characters.

# Examples:
# center_of('I love ruby') == 'e'
# center_of('Launch School') == ' '
# center_of('Launch') == 'un'
# center_of('Launchschool') == 'hs'
# center_of('x') == 'x'

def center_of(str)
  middle_index = str.length / 2
  middle_character = if str.length.odd?
                       "'#{str[middle_index]}'"
                     else
                       "'#{str[middle_index - 1..middle_index]}'"
                     end
  puts middle_character
end
