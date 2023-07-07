# frozen_string_literal: true

def palindrome?(sequence)
  sequence.size.times.all? { |i| sequence[i] == sequence[-i - 1] }
end

# Write another method that returns true if the string passed as an argument is a palindrome, 
# false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. 
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:
real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false