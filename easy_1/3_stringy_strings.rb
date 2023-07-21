# frozen_string_literal: true

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
# always starting with 1. The length of the string should match the given integer.

# Examples:

def stringy(parameter, optional_parameter = 1)
  integers_array = []
  parameter.times do |index|
    integer = index.even? ? optional_parameter : (optional_parameter - 1).abs
    integers_array << integer
  end
  integers_array.join
end

# Tests:
p stringy(6) == '101010' # result: true.
p stringy(9) == '101010101' # result: true.
p stringy(4) == '1010' # result: true.
p stringy(7) == '1010101' # result: true.
