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
# the all_substrings varible is concatenated with the result of passing the substring varible to the
# leading_substrings method.
# this is the last line of the .each method.
# return the value assigned to the all_substrings variable.
# this is the last line of the substrings method.

# the palindrome? method accepts the (string) parameter and is defined as the following:
# determine if the string parameter is a palindrome and greater than the integer 1.
# this is the last line of the palindrome? method.

# the palindromes method accepts the (string) parameter and is defined as the following:
# the all_substrings variable is assigned the result of passing the string parameter to the substrings method.
# return a new array of the elements in the all_substrings that return a truthy value from the result of passing
# the block parameter to the palandrome? method.
# this is the last line in the substrings method.

# and Code.” Implementation of Algorithm:
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

# def palindrome?(string)
#   string == string.reverse && string.length > 1
# end

# def palindromes(string)
#   all_substrings = substrings(string)
#   all_substrings.select { |substring| palindrome?(substring) }
# end

# LS Solution:
# def leading_substrings(string)
#   return_array = []
#   intermediate_array = string.chars
#   intermediate_array.each do |x|
#     return_array << (return_array.last.to_s + x)
#   end
#   return_array
# end
# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(leading_substrings(this_substring))
#   end
#   results
# end
# def palindromes(string)
#   all_substrings = substrings(string)
#   results = []
#   all_substrings.each do |substring|
#     results << substring if palindrome?(substring)
#   end
#   results
# end

# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end

# tests:
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

# Further Exploration

# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?
# Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# string parameter.

# output:
# an array of string palindromes.

# Make the requirements explicit Identify rules:
# Write a method that returns a list of all substrings of a string that are palindromic.
# each substring must consist of the same sequence of characters forwards as it does backwards.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.
# You may (and should) use the substrings method you wrote in the previous exercise.
# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?
# Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.
# In addition, assume that single characters are not palindromes.

# Mental model of the problem (optional):
# Write a method that returns a list of all substrings of a string that are palindromic.
# each substring must consist of the same sequence of characters forwards as it does backwards.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.
# def leading_substrings(string)
#   return_array = []
#   intermediate_array = string.chars
#   intermediate_array.each do |x|
#     return_array << (return_array.last.to_s + x)
#   end
#   return_array
# end
# def substrings(string)
#   results = []
#   (0...string.size).each do |start_index|
#     this_substring = string[start_index..-1]
#     results.concat(leading_substrings(this_substring))
#   end
#   results
# end
# def palindromes(string)
#   all_substrings = substrings(string)
#   results = []
#   all_substrings.each do |substring|
#     results << substring if palindrome?(substring)
#   end
#   results
# end
# def palindrome?(string)
#   string == string.reverse && string.size > 1
# end
# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?
# Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.

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
# p palindromes('aa11bB$$') == ["aa", "11", "bB"]

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
p palindromes('aa11bB$$') == ["aa", "11", "bB"]
