# frozen_string_literal: true

# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# LS solution:
# def palindrome?(string)
#   string == string.reverse
# end

# Further Exploration

# Write a method that determines whether an array is palindromic;
# that is, the element values appear in the same sequence both forwards and backwards in the array.
# Now write a method that determines whether an array or a string is palindromic;
# that is, write a method that can take either an array or a string argument,
# and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.

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
