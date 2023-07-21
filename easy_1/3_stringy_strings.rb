# frozen_string_literal: true

# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s,
# always starting with 1. The length of the string should match the given integer.

# Examples:
# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# The tests above should print true.

# LS solution:
# def stringy(size)
#   numbers = []
#
#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end
#
#   numbers.join
# end

# Further Exploration

# Modify stringy so it takes an additional optional argument that defaults to 1.
# If the method is called with this argument set to 0, the method should return a String of alternating
# 0s and 1s, but starting with 0 instead of 1.

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
