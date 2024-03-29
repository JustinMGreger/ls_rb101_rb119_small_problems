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

# Mental model of the problem (optional):
# def include?(array_parameter, search_value)
#   if search_value is in array_parameter
#     true
#   else
#     false
#   end
# end

# Examples / Test Cases, Validate understanding of the problem:
# p include?([1, 2, 3, 4, 5], 3) == true
# p include?([1, 2, 3, 4, 5], 6) == false
# p include?([], 3) == false
# p include?([nil], nil) == true
# p include?([], nil) == false

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# 1. the include? method accepts the array_parameter and the search_value.
# 2. determine if the search_value is in the array_parameter.
# 3. if search_value is in array_parameter return true.
# 4. else return false.

# and Code.” Implementation of Algorithm:
# def include?(array_parameter, search_value)
#   found_value = array_parameter.find { |element| element == search_value }
#   if search_value.nil?
#     !array_parameter.empty? && found_value.nil?
#   else
#     !!found_value
#   end
# end

# Solution

# LS Solution The easy way
# def include?(array, value)
#   !!array.find_index(value)
# end

# LS Solution A slightly harder way
# def include?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end

# Further Exploration

# Can you think of other solutions to this problem?
# There are lots of different ways to get the same result.

# Solution any?
# def include?(array, value)
#   array.any? { |element| element == value }
# end

# Solution select
# def include?(array, value)
#   !array.select { |element| element == value }.empty?
# end

# Solution grep
def include?(array, value)
  !array.grep(value).empty?
end

# tests:
p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
