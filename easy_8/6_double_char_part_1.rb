# frozen_string_literal: true

# Write a method that takes a string, and returns a new string in which every character is doubled.

# Examples:
# p repeater('Hello') == 'HHeelllloo'
# p repeater('Good job!') == 'GGoooodd  jjoobb!!'
# p repeater('') == ''

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# a string.

# output:
# a new string in which every character is doubled.

# Make the requirements explicit Identify rules:
# Write a method that takes a string, and returns a new string in which every character is doubled.

# Mental model of the problem (optional):
# def repeater(string)
# return new_string = in which every character is doubled.

# Examples / Test Cases, Validate understanding of the problem:
# p repeater('Hello') == 'HHeelllloo'
# p repeater('Good job!') == 'GGoooodd  jjoobb!!'
# p repeater('') == ''

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the repeater method accepts the (string) parameter and is defined as the following:
# the new_string varible is assigned to the [] array.
# pass each character of the string parameter to the following block of code:
# append the result of concatenating the block parameter with the block parameter to the new_string varible.
# return the result of joining the elements in the new_string varible into a single string.

# and Code. Implementation of Algorithm:
def repeater(string)
  new_string = []
  string.each_char do |char|
    new_string << char + char
  end
  new_string.join
end

# tests:
p repeater('Hello') == 'HHeelllloo'
p repeater('Good job!') == 'GGoooodd  jjoobb!!'
p repeater('') == ''
