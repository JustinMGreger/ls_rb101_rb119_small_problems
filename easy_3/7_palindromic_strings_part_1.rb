# frozen_string_literal: true

def palindrome?(string_parameter)
  string_parameter == string_parameter.reverse
end

p palindrome?('madam') == true                                     # result: true
p palindrome?('Madam') == false          # (case matters)          # result: true
p palindrome?("madam i'm adam") == false # (all characters matter) # result: true
p palindrome?('356653') == true                                    # result: true

Further Exploration

Write a method that determines whether an array is palindromic; 
that is, the element values appear in the same sequence both forwards and backwards in the array. 

Now write a method that determines whether an array or a string is palindromic; 
that is, write a method that can take either an array or a string argument, 
and determines whether that argument is a palindrome. 
You may not use an if, unless, or case statement or modifier.