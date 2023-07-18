# frozen_string_literal: true

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
and each element has the running total from the original Array.
A running total is the sum of all values in a list up to and including the current element. 
Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), 
while the running total at index 3 is 47 (14 + 11 + 7 + 15).


# Identify expected input: 
# Answer:
# an Array of numbers,

# output:
# Answer:
# returns an Array with the same number of elements, and each element has the running total from the original Array.

# Make the requirements explicit Identify rules:
# 1. Write a method that takes an Array of numbers.
# 2. return an Array with the same number of elements, 
# 3. each element has the running total from the original Array.
# 4. A running total is the sum of all values in a list up to and including the current element. 
# example: 
# [14, 11, 7, 15, 20][2] == 32 (14 + 11 + 7)
# [14, 11, 7, 15, 20][3] == 47 (14 + 11 + 7 + 15)

# Mental model of the problem (optional):
# 1. Write a method that takes an Array of numbers.
# 2. modify the array of numbers so that each element is the sum of the current element and all previous elements.
# 3. return the transformed Array with the same number of elements 
# example: 
# [14, 11, 7, 15, 20][2] == 32 (14 + 11 + 7)
# [14, 11, 7, 15, 20][3] == 47 (14 + 11 + 7 + 15)

# Data Structure, How we represent data that we will work with when converting the input to output:
# arrays

Algorithm, Steps for converting input to output:





# Code.” Implementation of Algorithm:
# 1. Write a method that takes an Array of numbers.
# 2. modify the array of numbers so that each element is the sum of the current element and all previous elements.
# 3. return the transformed Array with the same number of elements 
# example: 
# [14, 11, 7, 15, 20][2] == 32 (14 + 11 + 7)
# [14, 11, 7, 15, 20][3] == 47 (14 + 11 + 7 + 15)










# Tests:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
