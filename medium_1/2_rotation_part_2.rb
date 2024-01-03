# frozen_string_literal: true

# Write a method that can rotate the last n digits of a number.
# For example:
# p rotate_rightmost_digits(735_291, 1) == 735_291
# p rotate_rightmost_digits(735_291, 2) == 735_219
# p rotate_rightmost_digits(735_291, 3) == 735_912
# p rotate_rightmost_digits(735_291, 4) == 732_915
# p rotate_rightmost_digits(735_291, 5) == 752_913
# p rotate_rightmost_digits(735_291, 6) == 352_917

# Note that rotating just 1 digit results in the original number being returned.

# You may use the rotate_array method from the previous exercise if you want. (Recommended!)

# You may assume that n is always a positive integer.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# (number, digits)

# output:
# rotated number.

# Make the requirements explicit Identify rules:
# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

# Mental model of the problem (optional):
# def rotate_rightmost_digits(number, digits)
# rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

# Examples / Test Cases, Validate understanding of the problem:
# p rotate_rightmost_digits(735_291, 1) == 735_291
# p rotate_rightmost_digits(735_291, 2) == 735_219
# p rotate_rightmost_digits(735_291, 3) == 735_912
# p rotate_rightmost_digits(735_291, 4) == 732_915
# p rotate_rightmost_digits(735_291, 5) == 752_913
# p rotate_rightmost_digits(735_291, 6) == 352_917

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the rotate_array method accepts the (array) parameter and is defined as the following:
# return the result of concatenating the new array created by returning the values from
# the index location at the integer 1 to the end of the index in the array parameter with
# the new array created by returning the value located at the index location 0 in the array parameter.
# this is the last line of the rotate_array method.
# the rotate_integer method accepts the (integer) parameter and is defined as the following:
# the digit_array varible is assigned the result of integer parameter in string form 
# then return an array where each element of this array is a single character from the string
# then return a new array that is the result of converting every element to integer form.
# the rotated_array varible is assigned the result of passing the digit_array varible to the rotate_array method.
# the rotated_array varible is joined into a single string then converted to integer form.
# this is the last line of the rotate_integer method.

and Code. Implementation of Algorithm:

# tests:
p rotate_rightmost_digits(735_291, 1) == 735_291
p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) == 735_912
p rotate_rightmost_digits(735_291, 4) == 732_915
p rotate_rightmost_digits(735_291, 5) == 752_913
p rotate_rightmost_digits(735_291, 6) == 352_917
