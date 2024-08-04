# frozen_string_literal: true

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle,
# the sum of the lengths of the two shortest sides must be greater than the length of the longest side,
# and all sides must have lengths greater than 0:
# if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments,
# and returns a symbol :equilateral, :isosceles, :scalene,
# or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Examples:
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input: 
# the lengths of the 3 sides of a triangle as arguments.

# output: 
# returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral,
# isosceles, scalene, or invalid.

# Make the requirements explicit Identify rules:
# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol
# :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is
# equilateral, isosceles, scalene, or invalid.
# A triangle is classified as follows:
# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than
# the length of the longest side, and all sides must have lengths greater than 0: if either of
# these conditions is not satisfied, the triangle is invalid.

# Mental model of the problem (optional):
# def triangle (side_a, side_b, side_c)
# A triangle is classified as follows:
# :equilateral = All 3 sides are of equal length
# :isosceles = 2 sides are of equal length, while the 3rd is different
# :scalene = All 3 sides are of different length
# valid triangle = sum of the lengths of the two shortest sides > the length of the longest side 
# && all sides must have lengths > 0
# if either of these conditions is not satisfied, the triangle is invalid.
# return :equilateral, :isosceles, :scalene, or :invalid

# Examples / Test Cases, Validate understanding of the problem:
# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

# Data Structure, How we represent data that we will work with when converting the input to output:
# array

# Algorithm, Steps for converting input to output:
# the triangle method accepts the (side_a, side_b, side_c) parameters and is defined as the following:
# the sides varible is intialized as the result of sorting the elements in the [side_a, side_b, side_c] array.
# the element_one varible, the element_two variable, the element_three variable are intialized as the value at the
# 0 index location in the sides variable, the value at the 1 index location in the sides variable, value at the 2 index
# location in the sides variable.
# the sum_sides variable is intialized the sum of adding the element_one variable with the element_two variable.
# start an if statement checking if the sum_sides variable is greater than the element_three variable and the side_a 
# parameter is greater than the integer 0 and the side_b parameter is greater than the 0 integer and the side_c parameter
# is greater than the integer 0:
# start an if statement checking if the side_a parameter is equal to the side_b parameter and the side_b parameter
# is equal to the side_c parameter: return the :equilateral.
# start an elsif statement checking if the side_a is equal to the side_b parameter or the side_b parameter is
# equal to the side_c parameter or the side_a parameter is equal to the side_c parameter: return the :isosceles.
# start an elsif statement checking if the side_a parameter is not equal to the side_b parameter and the
# side_b parameter is not equal to the side_c parameter and the side_a parameter is not equal to the side_c parameter:
# return the :scalene.
# this is the end of the if statement.
# start an else statement return the :invalid.
# this is the end of the if statement.
# this is the end of the triangle method.

and Code. Implementation of Algorithm:

# Tests:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid