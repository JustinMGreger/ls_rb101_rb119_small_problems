# frozen_string_literal: true

# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it does backwards.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case;
# that is, "AbcbA" is a palindrome,
# but neither "Abcba" nor "Abc-bA" are.
# In addition, assume that single characters are not palindromes.

# Examples:
# p palindromes('abcd') == []
# p palindromes('madam') == %w[madam ada]
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == %w[
#   nittin itti tt ss settes ette tt
# ]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a list of all substrings of a string that are palindromic. 

# Make the requirements explicit Identify rules:
# Write a method that returns a list of all substrings of a string that are palindromic. 
# palandrome = each substring must consist of the same sequence of characters forwards as it does backwards
# including the same case usage.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.
# use the substrings method you wrote in the previous exercise.
# single characters are not palindromes.

# Mental model of the problem (optional):
# def leading_substrings(string)
#   return_array = []
#   intermediate_array = string.chars
#   intermediate_array.each do |x|
#     return_array << (return_array.last.to_s + x)
#   end
#   return_array
# end

# def substrings(string)
#   all_substrings = []
#   (0...string.length).each do |start_pos|
#     substring = string[start_pos..]
#     all_substrings.concat(leading_substrings(substring))
#   end
#   all_substrings
# end

# def palindromes(string)
#   substrings(string)
# sub_string = []
# break string into substrings.
# not a palindrome = single characters.
# def palindrome?(string)
#   string case sensitive == string.reverse case sensitive
#   Duplicate palindromes should be included multiple times.
# end
# return_value = ['a list of all substrings of a string that are palindromic']
# return_value should be sorted so that it is in the same sequence as the substrings appear in the string.
# end

# Examples / Test Cases, Validate understanding of the problem:
# p palindromes('abcd') == []
# p palindromes('madam') == %w[madam ada]
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == %w[
#   nittin itti tt ss settes ette tt
# ]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the leading_substrings method accepts the (string) parameter and is defined as the following:
# the return_array varible is assigned the [] array.
# the intermediate_array is assigned to the result of returning an array of string elements from the string parameter.
# pass the following block of code to each element in the intermediate_array:
# append the result of returning the last element in the return_array which is then transformed to string form which
# is then concatenated with the block parameter to the return_array varible.
# this is the last line of the .each method.
# return the value assigned to the return_array.
# this is the last line of the leading_substrings method.

# the substrings method accepts the (string) parameter and is defined as the following:
# the all_substrings varible is assigned the [] array.
# pass the following block of code to each element in the exlusive range from the integer 0
# to the number of elements in the string parameter:
# the substring varible is assigned the value located in the inclusive range from the start_pos block parameter
# to the end of the string parameter.
    all_substrings.concat(leading_substrings(substring))
  end
  all_substrings
end

def palindromes(string)
  substrings(string)
sub_string = []
break string into substrings.
not a palindrome = single characters.
def palindrome?(string)
  string case sensitive == string.reverse case sensitive
  Duplicate palindromes should be included multiple times.
end
return_value = ['a list of all substrings of a string that are palindromic']
return_value should be sorted so that it is in the same sequence as the substrings appear in the string.
end

and Code.” Implementation of Algorithm:

# tests:
p palindromes('abcd') == []
p palindromes('madam') == %w[madam ada]
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == %w[
  nittin itti tt ss settes ette tt
]
