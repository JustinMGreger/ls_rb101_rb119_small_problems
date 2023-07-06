# frozen_string_literal: true

def palindrome?(string_parameter)
  string_parameter == string_parameter.reverse
    puts true
  else
    puts false
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
