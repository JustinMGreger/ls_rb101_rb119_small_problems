# frozen_string_literal: true

def palindrome?(sequence)
  sequence.size.times.all? { |i| sequence[i] == sequence[-i - 1] }
end

def real_palindrome?(sequence)
  sequence = sequence.downcase
  palindrome?(sequence)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
