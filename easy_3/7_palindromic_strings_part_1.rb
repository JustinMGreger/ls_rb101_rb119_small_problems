# frozen_string_literal: true


# Further Exploration

# and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.

def palindrome?(parameter)
  parameter == parameter.reverse
end

# Test for array:
p palindrome?('madam') == true                                     # result: true
p palindrome?('Madam') == false          # (case matters)          # result: true
p palindrome?("madam i'm adam") == false # (all characters matter) # result: true
p palindrome?('356653') == true                                    # result: true
p palindrome?([1, true, nil, 'string', 'string', nil, true, 1]) == true  # result: true.
p palindrome?([1, false]) == false # result: true.
