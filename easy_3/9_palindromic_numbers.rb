# frozen_string_literal: true

def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end

# Tests:
p palindromic_number?(34_543) == true # result: true
p palindromic_number?(123_210) == false # result: true
p palindromic_number?(22) == true # result: true
p palindromic_number?(5) == true # result: true

# Further Exploration

# Suppose your number begins with one or more 0s. 
# Will your method still work? 
# Why or why not? 
# Is there any way to address this?