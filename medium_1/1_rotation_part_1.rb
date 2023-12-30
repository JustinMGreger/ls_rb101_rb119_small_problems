# frozen_string_literal: true

# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(%w[a b c]) == %w[b c a]
# p rotate_array(['a']) == ['a']
# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# an array.

# output:
# rotated array where the first element was moved to the end of the array.

# Make the requirements explicit Identify rules:
# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Mental model of the problem (optional):
# def rotate_array(array)
# move the first element to the end of the array.
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Examples / Test Cases, Validate understanding of the problem:
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(%w[a b c]) == %w[b c a]
# p rotate_array(['a']) == ['a']
# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the rotate_array method accepts the (array) parameter and is defined as the following:
# return the result of concatenating a new array made of the values located at the index
# location from the integer 1 to the end of the index of the array parameter with the
# new array made of the values located at the index location of the integer 0 of the array parameter.
# this is the last line of the rotate_array method.

# and Code. Implementation of Algorithm:
# def rotate_array(array)
#   array[1..] + [array[0]]
# end

# LS Solution:
# def rotate_array(array)
#   array[1..-1] + [array[0]]
# end

# tests:
# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(%w[a b c]) == %w[b c a]
# p rotate_array(['a']) == ['a']
# p x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# Further Exploration

# Write a method that rotates a string instead of an array.
# You may use rotate_array from inside your new method.
def rotate_array(array)
  array[1..] + [array[0]]
end

def rotate_string(string)
  char_array = string.chars
  rotated_array = rotate_array(char_array)
  rotated_string = rotated_array.join
end





# Do the same thing for integers.
# You may use rotate_array from inside your new method.
def rotate_array(array)
  array[1..] + [array[0]]
end

def rotate_integer(integer)
  # Some logic
  rotated_integer = rotate_array(array)
  # Additional logic using rotated_array
end
