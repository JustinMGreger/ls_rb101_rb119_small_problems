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

return ['a list of all substrings of a string that are palindromic']
palandrome = each substring must consist of the same sequence of characters forwards as it does backwards
including the same case usage.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.



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

Algorithm, Steps for converting input to output:
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
