# frozen_string_literal: true

# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# Example:
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(%w[a b c]) == %w[b c a]
p rotate_array(['a']) == ['a']
p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

Identify expected input:
output:
Make the requirements explicit Identify rules:
Mental model of the problem (optional):

# Examples / Test Cases, Validate understanding of the problem:
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(%w[a b c]) == %w[b c a]
p rotate_array(['a']) == ['a']
p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:
