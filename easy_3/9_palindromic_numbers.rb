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
# Yes it will for examples: (011) & (0011)
# No it will not for examples: (0110) & (001100)

# Why or why not?
# In Ruby integers do not have leading zeros.
# leading zeros do not change the value of the number.
# In Ruby when reverse is used the trailing zeros are not stored in mememory.

# When you convert an integer to a string, any leading zeros in the integer are dropped, because integers do not have
# leading zeros.

# In the code the integer is converted to a string. for example: 0110 becomes '110'.
# Then the string is reversed. '110' becomes '011'.
# Then check if the string and the reversed string are equal. '110' == '011' returns false.

# (001100)
# In the code the integer is converted to a string. for example: 001100 becomes '1100'.
# Then the string is reversed. '1100' becomes '0011'.
# Then check if the string and the reversed string are equal. '1100' == '0011' returns false.

# (011) 
# In the code the integer is converted to a string. for example: 011 becomes '11'.
# Then the string is reversed. '11' becomes '11'.
# Then check if the string and the reversed string are equal. '11' == '11' returns true.

# (0011)
# In the code the integer is converted to a string. for example:  0011 becomes '11'.
# Then the string is reversed. '11' becomes '11'.
# Then check if the string and the reversed string are equal. '11' == '11' returns true.

# Is there any way to address this?
# input has to be a string not a integer.
# converting integers to strings results in any leading zeros being lost.
