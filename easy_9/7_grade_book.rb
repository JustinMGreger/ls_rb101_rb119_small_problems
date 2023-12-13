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
def get_grade(grade_one, grade_two, grade_three)
score = the (average) of the grade_one, grade_two, grade_three
Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
return the letter value associated with that grade.

# and Code. Implementation of Algorithm:

# tests:
p get_grade(95, 90, 93) == 'A'
p get_grade(50, 50, 95) == 'D'
