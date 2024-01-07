# frozen_string_literal: true

# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

# Note that you do not have to handle multiple 0s.

# Example:
# p max_rotation(735_291) == 321_579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# an integer as argument.

# output:
# the maximum rotation of that argument.

# Make the requirements explicit Identify rules:
# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.
# Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
# Note that you do not have to handle multiple 0s.

# Mental model of the problem (optional):
# def max_rotation(integer)
# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
# def rotate_array(array)
#   array[1..] + [array[0]]
# end
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end
# Note that you do not have to handle multiple 0s.

# Examples / Test Cases, Validate understanding of the problem:
# p max_rotation(735_291) == 321_579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the rotate_array method accepts the (array) parameter and is defined as the following:
# return the result of concatenating the new array created by returning the values from
# the index location 1 to the end of the array parameter with the new array created by
# returning the values from the index location 0 in the array parameter.
# this is the last line of the rotate_array method.
# the rotate_rightmost_digits method accepts the (number, digits) parameters and is defined as the following:
# the all_digits varible is assigned the result of the number converted to string form 
# then return a new array of string elements.
# the new array created by returning the values located from the digits index location
# to the end of the all_digits varible is assigned the result of passing the new array
# created by returning the values located from the digits index location to the end
# of the all_digits varible to the rotate_array method.
# return the result of joining the all_digits varible into a single string which is then converted to integer form.
# this is the last line of the rotate_rightmost_digits method.

and Code. Implementation of Algorithm:

# tests:
p max_rotation(735_291) == 321_579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
