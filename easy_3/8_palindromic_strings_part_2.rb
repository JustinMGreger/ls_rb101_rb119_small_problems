# frozen_string_literal: true

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
