# frozen_string_literal: true

def palindromic_number?(integer)
  integer.to_s == integer.to_s.reverse
end

# Tests:
# p palindromic_number?(34_543) == true # result: true
# p palindromic_number?(123_210) == false # result: true
# p palindromic_number?(22) == true # result: true
# p palindromic_number?(5) == true # result: true

# Further Exploration

# Suppose your number begins with one or more 0s. 
p palindromic_number?(0110) == true #result: false
p palindromic_number?(001100) == true #result: false
p palindromic_number?(011) == true # result: true
p palindromic_number?(0011) == true # result: true

# Will your method still work? 
Yes it will for examples: (011) & (0011)
No it will not for examples: (0110) & (001100)

# Why or why not? 

# Is there any way to address this?
