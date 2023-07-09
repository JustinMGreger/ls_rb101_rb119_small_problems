# frozen_string_literal: true

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
