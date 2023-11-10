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

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

Identify expected input:
output:
Make the requirements explicit Identify rules:
Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
