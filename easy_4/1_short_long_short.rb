# frozen_string_literal: true

# Write a method that takes two strings as arguments, determines the longest of the two strings,
# and then returns the result of concatenating the shorter string, the longer string,
# and the shorter string once again.
# You may assume that the strings are of different lengths.

# Examples:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# LS solution:
# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end

def short_long_short(string_argument_one, string_argument_two)
  if string_argument_one.length > string_argument_two.length
    longest_string = string_argument_one
    shortest_string = string_argument_two
  else
    longest_string = string_argument_two
    shortest_string = string_argument_one
  end
  shortest_string + longest_string + shortest_string
end

# Tests:
p short_long_short('abc', 'defgh') == abcdefghabc # result: true
p short_long_short('abcde', 'fgh') == fghabcdefgh # result: true
p short_long_short('', 'xyz') == xyz # result: true
