# frozen_string_literal: true

# Write a method that determines the mean (average) of the three scores passed to it,
# and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# Tested values are all between 0 and 100.
# There is no need to check for negative values or values greater than 100.

# Example:
# p get_grade(95, 90, 93) == 'A'
# p get_grade(50, 50, 95) == 'D'

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# three scores.

# output:
# the letter value associated with that grade.

# Make the requirements explicit Identify rules:
# Write a method that determines the mean (average) of the three scores passed to it,
# and returns the letter value associated with that grade.

# Mental model of the problem (optional):
# def get_grade(three_scores)
# score = the (average) of the three_scores
# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# return the letter value associated with that grade.

# Examples / Test Cases, Validate understanding of the problem:
# p get_grade(95, 90, 93) == 'A'
# p get_grade(50, 50, 95) == 'D'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the get_grade method accepts the (num1, num2, num3) parameters and is defined as the following:
# when the result of dividing the result of adding num1 by num2 by num3 by 3.0 is the following:
# in the inclusive range from the integer 90 to 100 return the 'A' string.
# in the exclusive range from the integer 80 to 90 then return the 'B' string.
# in the exclusive range from the integer 70 to 80 then return the 'C' string.
# in the exclusive range from the integer 60 to 70 then return the 'D' string.
# else return the 'F' string.

# and Code. Implementation of Algorithm:
# def get_grade(num1, num2, num3)
#   case (num1 + num2 + num3) / 3.0
#   when 90..100 then 'A'
#   when 80...90 then 'B'
#   when 70...80 then 'C'
#   when 60...70 then 'D'
#   else 'F'
#   end
# end

# LS Solution:
# def get_grade(s1, s2, s3)
#   result = (s1 + s2 + s3)/3

#   case result
#   when 90..100 then 'A'
#   when 80..89  then 'B'
#   when 70..79  then 'C'
#   when 60..69  then 'D'
#   else              'F'
#   end
# end

# Further exploration

How would you handle this if there was a possibility of extra credit grades causing it to exceed 100 points?

# tests:
p get_grade(95, 90, 93) == 'A'
p get_grade(50, 50, 95) == 'D'
