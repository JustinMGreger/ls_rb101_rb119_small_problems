# frozen_string_literal: true

def palindromic_number?(integer)
  if integer == integer.reverse
    true  
  else 
    false  
end

# Tests:
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
