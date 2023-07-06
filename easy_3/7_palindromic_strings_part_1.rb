# frozen_string_literal: true

def palindrome?(string_parameter)
  string_parameter == string_parameter.reverse
end

p palindrome?('madam') == true                                     # result: true
p palindrome?('Madam') == false          # (case matters)          # result: true
p palindrome?("madam i'm adam") == false # (all characters matter) # result: true
p palindrome?('356653') == true                                    # result: true
