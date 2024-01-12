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
# the max_rotation method accepts the (integer) parameter and is defined as the following:
# the length varible is assigned to the result of the integer parameter converted to string
# form which then returns the number of elements in the string.
# for the length varible downto the integer 2 execute the block of code
# the integer varible is assigned the result of passing the integer parameter and n block
# parameter to the rotate_rightmost_digits method.
# this is the last line of the .downto method.
# return the value assigned to the integer variable.
# this is the last line of the max_rotation method.

# and Code. Implementation of Algorithm:
# def rotate_array(array)
#   array[1..] + [array[0]]
# end
# def rotate_rightmost_digits(number, digits)
#   all_digits = number.to_s.chars
#   all_digits[-digits..] = rotate_array(all_digits[-digits..])
#   all_digits.join.to_i
# end
# def max_rotation(integer)
#   length = integer.to_s.size
#   length.downto(2) do |n|
#     integer = rotate_rightmost_digits(integer, n)
#   end
#   integer
# end

# LS Solution:
# def rotate_array(array)
#   array[1..] + [array[0]]
# end
# def rotate_rightmost_digits(number, digits)
#   all_digits = number.to_s.chars
#   all_digits[-digits..] = rotate_array(all_digits[-digits..])
#   all_digits.join.to_i
# end
# def max_rotation(number)
#   number_digits = number.to_s.size
#   number_digits.downto(2) do |n|
#     number = rotate_rightmost_digits(number, n)
#   end
#   number
# end

# tests:
# p max_rotation(735_291) == 321_579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration

# Assume you do not have the rotate_rightmost_digits or rotate_array methods.
# How would you approach this problem?
# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# an integer.

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
# Note that you do not have to handle multiple 0s.

# Mental model of the problem (optional):
# def max_rotation(integer)
#  returns the maximum rotation of that argument.
# rotate it to the left.
# Keep the first digit fixed in place, and rotate the remaining digits.
# Keep the first 2 digits fixed in place and rotate again.
# Keep the first 3 digits fixed in place and rotate again.
# Keep the first 4 digits fixed in place and rotate the final 2 digits.
# return the resulting number which is the maximum rotation of the original number.
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
# the rotate_array method accepts the (array) method and is defined as the following:
# return the result of concatenating the result of creating a new array from returning
# the values located at the index location from the integer 1 to the end of the array
# parameter with the new array created by returning the value located the index location
# integer 0 in the array parameter.
# this is the last line of the rotate_array method.
# the rotate_rightmost_digits method accepts the (number, digits) parameters and is defined as the following:
# the all_digits variable is assigned the result of converting the number parameter to string form
# then return an array of substrings.
# the new array created by extracting the values located at the index location after the digits parameter
# to then end of the array in the all_digits variable is assigned to the result of passing the new array
# created by extracting the values located at the index location after the digits parameter to then end
# of the array in the all_digits variable to the rotate_array method.
# return the result of joining the values in the all_digits variable into a single string that is then
# converted to integer form.
# this is the last line of the rotate_rightmost_digits method.
# the max_rotation method accepts the (integer) parameter and is defined as the following:
# the number_digits variable is assigned the result of converting the integer parameter to string form
# then return the number of elements in that.
# from the number_digits variable downto the integer 2 execute the following code:
# the integer variable is assigned the result of passing the integer and n parameters
# to the rotate_rightmost_digits method.
# this is the last line of the downto method.
# return the value assigned to the integer variable.
# this is the last line of the max_rotation method.

# and Code. Implementation of Algorithm:
# def rotate_array(array)
#   array[1..] + [array[0]]
# end
# def rotate_rightmost_digits(number, digits)
#   all_digits = number.to_s.chars
#   all_digits[-digits..] = rotate_array(all_digits[-digits..])
#   all_digits.join.to_i
# end
# def max_rotation(integer)
#   number_digits = integer.to_s.size
#   number_digits.downto(2) do |n|
#     integer = rotate_rightmost_digits(integer, n)
#   end
#   integer
# end

# tests:
# p max_rotation(735_291) == 321_579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

# Would your solution look different?
# No.

# Does this 3 part approach make the problem easier to understand or harder?
# Easier.

# There is an edge case in our problem when the number passed in as the argument has multiple consecutive zeros.
# Can you create a solution that preserves zeros?

