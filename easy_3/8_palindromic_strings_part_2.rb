# frozen_string_literal: true

# Write another method that returns true if the string passed as an argument is a palindrome,
# false otherwise.
# This time, however, your method should be case-insensitive,
# and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Examples:
# real_palindrome?('madam') == true
# real_palindrome?('Madam') == true           # (case does not matter)
# real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# real_palindrome?('356653') == true
# real_palindrome?('356a653') == true
# real_palindrome?('123ab321') == false

# LS solution:
# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end

def palindrome?(sequence)
  sequence.size.times.all? { |i| sequence[i] == sequence[-i - 1] }
end

def real_palindrome?(sequence)
  sequence = sequence.downcase.delete('^a-z0-9') if sequence.is_a?(String)
  palindrome?(sequence)
end

p real_palindrome?('madam') == true # result: true
p real_palindrome?('Madam') == true           # (case does not matter) # result: true
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter) # result: true
p real_palindrome?('356653') == true # result: true
p real_palindrome?('356a653') == true # result: true
p real_palindrome?('123ab321') == false # result: true
