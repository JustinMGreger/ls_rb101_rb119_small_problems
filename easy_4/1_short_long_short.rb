# frozen_string_literal: true

# Tests:
# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# and Code.” Implementation of Algorithm:
def short_long_short(string_argument_one, string_argument_two)
determines the longest & shortest of the two strings.
  if string_argument_one.length > string_argument_two.length
    longest_string = string_argument_one
    shortest_string = string_argument_two
  else
    longest_string = string_argument_two
    shortest_string = string_argument_one
  end

 "#{shortest_string}"+"#{longest_string}"+"#{shortest_string}"
# 6. assign this to a variable.
