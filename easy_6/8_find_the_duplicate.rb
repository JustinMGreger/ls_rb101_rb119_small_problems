# frozen_string_literal: true

# Given an unordered array and the information that exactly one value in the array occurs twice
# (every other value occurs exactly once),
# how would you determine which value occurs twice?
# Write a method that will find and return the duplicate value that is known to be in the array.

# Examples:
# find_dup([1, 5, 3, 1]) == 1
# find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# an unordered array.

# output:
# boolean true or false.

# Make the requirements explicit Identify rules:
# write a method.
# the method accepts a unordered array.
# exactly one value in the array occurs twice.
# all other values occurs exactly once.
# determine which value occurs twice and return it.

# Mental model of the problem (optional):
# the method accepts a unordered array.
# 1 value in the array occurs twice.
# all other values occurs exactly once.
# determine which value occurs twice and return it.

# Examples / Test Cases, Validate understanding of the problem:
# p find_dup([1, 5, 3, 1]) == 1
# p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# Data Structure, How we represent data that we will work with when converting the input to output:
# array

# Algorithm, Steps for converting input to output:
# 1. the find_dup method accepts a unordered array.
# 2. determine which value occurs twice in the array:
# 3. iterate through the array
# 4. select the elements that occur more than once.
# 5. assign these elements to a varible.
# 6. return the variable.

# and Code.” Implementation of Algorithm:
# def find_dup(unordered_array)
#   unordered_array.find { |x| unordered_array.count(x) > 1 }
# end

# LS solution:
# def find_dup(array)
#   array.find { |element| array.count(element) == 2 }
# end

# tests:
p find_dup([1, 5, 3, 1]) == 1
p find_dup([18, 9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81, 8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84, 1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98, 3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50, 6, 70,
            85, 87, 51, 17, 66, 20, 28, 26, 2, 22,
            40, 23, 71, 62, 73, 32, 43, 24, 4, 56,
            7, 34, 57, 74, 45, 11, 88, 67, 5, 58]) == 73
