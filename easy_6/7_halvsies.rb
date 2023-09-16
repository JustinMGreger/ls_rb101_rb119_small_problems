# frozen_string_literal: true

# Write a method that takes an Array as an argument,
# and returns two Arrays (as a pair of nested Arrays) that contain the first half
# and second half of the original Array, respectively.
# If the original array contains an odd number of elements,
# the middle element should be placed in the first half Array.

# Examples:
# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# an Array as an argument

# output:
# returns two Arrays (as a pair of nested Arrays)

# Make the requirements explicit Identify rules:
# 1. Write a method that takes an Array as an argument.
# 2. return two Arrays (as a pair of nested Arrays).
# 3. these two Arrays contain the first half and second half of the original Array.
# 4. If the original array elements are odd the middle element should be placed in the first half Array.

# Mental model of the problem (optional):
# the halvsies method takes an Array as an argument.
# determine if the array argument contains an odd amount of elements.
# create two Arrays (as a pair of nested Arrays).
# these two Arrays contain the first half and second half of the original Array.
# if odd the middle element should be placed in the first half Array.

# Examples / Test Cases, Validate understanding of the problem:
# p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# p halvsies([5]) == [[5], []]
# p halvsies([]) == [[], []]

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# 1. the halvsies method takes an Array as an argument.
# 2. if the Array argument contains an odd number of elements split it so that the middle element should be placed
# in the first half Array and the second half array contains the rest of elements and these are a pair of nested Arrays.
# 3. if the Array argument does not contain an odd number of elements  the Array argument then split into two equal
# nested Arrays.
# 4. return the pair of nested Arrays.

# and Code.” Implementation of Algorithm:
# def halvsies(array_one)
#   middle_element = (array_one.length / 2.0).ceil

#   first_half_array = array_one.slice(0, middle_element)
#   second_half_array = array_one.slice(middle_element, array_one.length - middle_element)

#   [first_half_array, second_half_array]
# end

# LS solution:
# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end

# Further Exploration

# Can you explain why our solution divides array.size by 2.0 instead of just 2?
# answer:
# the elements from array.size when divided by 2 would result in rounding down to the closest integer.
# for eample 5/2 == 2.
# middle = 5/2.0 == 2.5 which can be rounded up with .ceil to 3.
# first_half = array.slice(0, middle) ensures that the middle element is in the first_half varible. 

# This is but one way to solve this problem.
# What solution did you end up with?
# answer:
def halvsies(array_one)
  middle_element = (array_one.length / 2.0).ceil
  first_half_array = array_one.slice(0, middle_element)
  second_half_array = array_one.slice(middle_element, array_one.length - middle_element)
  [first_half_array, second_half_array]
end

# Was it similar or entirely different?

# tests:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
