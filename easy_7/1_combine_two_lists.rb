# frozen_string_literal: true

# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements from both Array arguments,
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty,
# and that they have the same number of elements.

# Example:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# two non-empty Arrays that have the same number of elements.

# output:
# a new Array of all elements with the elements taken in alternation.

# Make the requirements explicit Identify rules:
# both input Arrays are non-empty.
# both input Arrays have the same number of elements.
# write a method that combines two Arrays passed in as arguments.
# return a new Array.
# the new Array contains all elements from both Array arguments.
# the elements in the new Array alternate from their source arrays.

# Mental model of the problem (optional):
# arr_one and arr_two are non-empty.
# arr_one and arr_two have the same number of elements.
# this means iteration can be used as it will stop at the same time.
# interleave method combines (arr_one, arr_two).
# new_array
# new_array = [all elements from both Array arguments]
# new_array = [arr_one_element, arr_two_element, arr_one_element, arr_two_element]

# Examples / Test Cases, Validate understanding of the problem:
# interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the interleave method accepts the (arr_one, arr_two) parameters.
# arr_one and arr_two are combined into the new_array.
# this is accomplished by assigning the iteration parameters to the new_array.
# return new_array

# and Code.” Implementation of Algorithm:
# def interleave(arr_one, arr_two)
#   new_array = []
#   arr_one.length.times do |i|
#     new_array << arr_one[i]
#     new_array << arr_two[i]
#   end
#   new_array
# end

# LS solution:
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end

# Further Exploration

# Take a few minutes to read about Array#zip. 
#zip doesn't do the same thing as interleave,
but it is very close,
and more flexible.
In fact,
interleave can be implemented in terms of zip and one other method from the Array class.
See if you can rewrite interleave to use zip.

# tests:
p interleave([1, 2, 3], %w[a b c]) == [1, 'a', 2, 'b', 3, 'c']
