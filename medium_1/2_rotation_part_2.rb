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
# the rotate_rightmost_digits method accepts the (number, digits) parameters and is defined as the following:
# return the number parameter if the digits parameter is equal to the integer 1.
# the all_digits varible is assigned to the result of the number parameter converted to string form
# which is then split into an array of string characters.
# the unchanged_part varible is assigned the new array created by returning the values located from
# the index locations at the integer 0 before digits index location from the last index location
# in the all_digits varible.
# the part_to_rotate varible is assigned the new array created by extracting the values located
# from just before the digits index located to the end of the all_digits varible.
# the rotated_part varible is assigned the result of passing the result of joining the
# part_to_rotate varible into a single string which is then converted to integer form
# to the rotate_integer method.
# return the result of the unchanged_part varible is joined into a single string which is
# concatenated with the rotated_part varible which is converted to string form all of which is
# then converted to integer form.
# this is the last line of the rotate_rightmost_digits method.

# and Code. Implementation of Algorithm:
# def rotate_array(array)
#   array[1..] + [array[0]]
# end

# def rotate_integer(integer)
#   digit_array = integer.to_s.chars.map(&:to_i)
#   rotated_array = rotate_array(digit_array)
#   rotated_array.join.to_i
# end

# def rotate_rightmost_digits(number, digits)
#   return number if digits == 1

#   all_digits = number.to_s.chars
#   unchanged_part = all_digits[0...-digits]
#   part_to_rotate = all_digits[-digits..]

#   rotated_part = rotate_integer(part_to_rotate.join.to_i)

#   (unchanged_part.join + rotated_part.to_s).to_i
# end

# LS Solution:
def rotate_array(array)
  array[1..] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

# tests:
p rotate_rightmost_digits(735_291, 1) == 735_291
p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) == 735_912
p rotate_rightmost_digits(735_291, 4) == 732_915
p rotate_rightmost_digits(735_291, 5) == 752_913
p rotate_rightmost_digits(735_291, 6) == 352_917
