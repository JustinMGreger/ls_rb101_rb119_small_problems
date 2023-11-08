# frozen_string_literal: true

# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position,
# the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# Examples:
# p substrings('abcde') == %w[
#   a ab abc abcd abcde
#   b bc bcd bcde
#   c cd cde
#   d de
#   e
# ]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string parameter.

# output:
# an array of a list of all substrings of the string parameter. 

# Make the requirements explicit Identify rules:
# use the leading_substrings method you wrote in the previous exercise.
# Write a method that accepts a string parameter and returns an array of strings.
# The returned list of all substrings of the string parameter should be ordered
# by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position,
# the substrings at a given position should be returned in order from shortest to longest.

# Mental model of the problem (optional):
# use the leading_substrings method you wrote in the previous exercise.
# def leading_substrings(string)
#   return_array = []
#   intermediate_array = string.chars
#   intermediate_array.each do |x|
#     return_array << (return_array.last.to_s + x)
#   end
#   return_array
# end
# Write a substrings method that accepts a string parameter and returns an array of strings.
# the substrings method accepts the (string) parameter and is defined as the following:
# the all_substrings varible is assigned a new empty array.
# for each of the elements in the string assign the element to the substring varible.
# pass the substring varible to the leading_substrings method that accepts the (string) parameter.
# concatenate the result of that to the all_substrings variable. 
# return the value assigned to the all_substrings variable.

# Examples / Test Cases, Validate understanding of the problem:
# p substrings('abcde') == %w[
#   a ab abc abcd abcde
#   b bc bcd bcde
#   c cd cde
#   d de
#   e
# ]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# use the leading_substrings method you wrote in the previous exercise.
# Write a substrings method that accepts a string parameter and returns an array of strings.
# the substrings method accepts the (string) parameter and is defined as the following:
# the all_substrings varible is assigned a new empty array.
# for each of the elements in the string assign the element to the substring varible.
# pass the substring varible to the leading_substrings method that accepts the (string) parameter.
# concatenate the result of that to the all_substrings variable. 
# return the value assigned to the all_substrings variable.

# and Code.” Implementation of Algorithm:
def leading_substrings(string)
  return_array = []
  intermediate_array = string.chars
  intermediate_array.each do |x|
    return_array << (return_array.last.to_s + x)
  end
  return_array
end

def substrings(string)
  all_substrings = []
  (0...string.length).each do |start_pos|
    substring = string[start_pos..-1]
    all_substrings << (leading_substrings(substring))
  end
  all_substrings
end

# tests:
p substrings('abcde') == %w[
  a ab abc abcd abcde
  b bc bcd bcde
  c cd cde
  d de
  e
]
