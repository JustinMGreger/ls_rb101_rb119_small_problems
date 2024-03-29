# frozen_string_literal: true

# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Examples:
# p leading_substrings('abc') == %w[a ab abc]
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a list of all substrings of a string that start at the beginning of the original string
# and arranged in order from shortest to longest substring.

# Make the requirements explicit Identify rules:
# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Mental model of the problem (optional):
# the leading_substrings method accepts a string parameter.
# the string parameter is broken into substrings.
# the sub strings are assigned to a return_array varible.
# substrings are concatenated into a substring based on the previous substrings.
# return the return_array.

# Examples / Test Cases, Validate understanding of the problem:
# p leading_substrings('abc') == %w[a ab abc]
# p leading_substrings('a') == ['a']
# p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the leading_substrings method accepts a string parameter.
# the intermediate_array varible is assigned to the result of splitting the string parameter into an array of
# substrings.
# the return_array variable is assigned to the result of iterating through the return_array concatenating the substrings
# into a substring based on the previous substrings.
# return the return_array.

# and Code.” Implementation of Algorithm:
# def leading_substrings(string)
#   return_array = []
#   intermediate_array = string.chars
#   intermediate_array.each do |x|
#     return_array << (return_array.last.to_s + x)
#   end
#   return_array
# end

# LS Solution:
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

# tests:
p leading_substrings('abc') == %w[a ab abc]
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == %w[x xy xyz xyzz xyzzy]
