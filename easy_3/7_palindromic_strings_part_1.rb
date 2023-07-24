# frozen_string_literal: true

# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# Examples:

def palindrome?(sequence)
  sequence.size.times.all? { |i| sequence[i] == sequence[-i - 1] }
end

# Test for array:
p palindrome?('madam') == true # result: true
p palindrome?('Madam') == false          # (case matters)          # result: true
p palindrome?("madam i'm adam") == false # (all characters matter) # result: true
p palindrome?('356653') == true # result: true
p palindrome?([1, true, nil, 'string', 'string', nil, true, 1]) == true # result: true.
p palindrome?([1, false]) == false # result: true.
