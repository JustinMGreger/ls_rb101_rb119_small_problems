

Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

def palindromic_number?(integer)
  if integer == integer.reverse
    returns true  
  else 
    return false  
end