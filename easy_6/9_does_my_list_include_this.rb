# frozen_string_literal: true

# Write a method named include?
# that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array,
# false if it is not.
# You may not use the Array#include? method in your solution.

# tests:
# p include?([1, 2, 3, 4, 5], 3) == true
# p include?([1, 2, 3, 4, 5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# an Array and a search value.

# output:
# return true if the search value is in the array.
# return false if the search value is not in the array.

# Make the requirements explicit Identify rules:
# include?(an Array and a search value)
# include? returns true if the search value is in the array
# include? returns false if the search value is not in the array.
# You may not use the Array#include? method in your solution.

Mental model of the problem (optional):
def include?(array_parameter, search_value)
  if search_value is in array_parameter
    true
  else
include? returns false if the search value is not in the array.
You may not use the Array#include? method in your solution.



# Examples / Test Cases, Validate understanding of the problem:
# p include?([1, 2, 3, 4, 5], 3) == true
# p include?([1, 2, 3, 4, 5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

# tests:
p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false