# frozen_string_literal: true

# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# my solution:
def digit_list(positive_integer)
  positive_integer.to_s.chars.map(&:to_i)
end

# LS solution:

# tests:
puts digit_list(12_345) == [1, 2, 3, 4, 5] # => true
puts digit_list(7) == [7] # => true
puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4] # => true
