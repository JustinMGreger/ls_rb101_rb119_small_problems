# frozen_string_literal: true

# Write a method that determines whether an array is palindromic; 
# that is, the element values appear in the same sequence both forwards and backwards in the array. 

def palindrome_array?(array)
  array == array.reverse
end

# Test for array:
p palindrome_array?([1, true, nil, 'string', 'string', nil, true, 1]) == true  # result is true.

 
# Further Exploration

# Now write a method that determines whether an array or a string is palindromic; 
# that is, write a method that can take either an array or a string argument, 
# and determines whether that argument is a palindrome. 
# You may not use an if, unless, or case statement or modifier.
