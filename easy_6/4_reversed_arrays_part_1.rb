# frozen_string_literal: true

# Write a method that takes an Array as an argument, and reverses its elements in place;
# that is, mutate the Array passed into this method.
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:
# list = [1, 2, 3, 4]
# result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.equal?(result) # true

# list = %w[a b e d c]
# p reverse!(list) == %w[c d e b a] # true
# p list == %w[c d e b a] # true

# list = ['abc']
# p reverse!(list) == ['abc'] # true
# p list == ['abc'] # true

# list = []
# p reverse!(list) == [] # true
# p list == [] # true

# NOTE: for the test case list = ['abc'], we want to reverse the elements in the array.
# The array only has one element, a String,
# but we're not reversing the String itself, so the reverse! method call should return ['abc'].

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# an Array

# output:
# the mutated reversed Array

# Make the requirements explicit Identify rules:
# 1. You may not use Array#reverse or Array#reverse!.
# 2. Write a method that takes an Array as an argument.
# 3. Reverse the Array of elements in place.
# 4. The return value should be the same Array object.
# 5. NOTE: for the test case list = ['abc'], we want to reverse the elements in the array.
# The array only has one element, a String,
# but we're not reversing the String itself, so the reverse! method call should return ['abc'].

# Mental model of the problem (optional):
# 0. You may not use Array#reverse or Array#reverse!.
# 00. NOTE: for the test case list = ['abc'], we want to reverse the elements in the array.
# The array only has one element, a String,
# but we're not reversing the String itself, so the reverse! method call should return ['abc'].
# The elements are not being broken up. Only the elements are being moved.
# 1. method(Array)
# 2. Reverse the Array of elements in place.
# 3. The return value should be the same Array object. Not assigned to a new variable.

# Examples / Test Cases, Validate understanding of the problem:
list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.equal?(result) # true

list = %w[a b e d c]
p reverse!(list) == %w[c d e b a] # true
p list == %w[c d e b a] # true

list = ['abc']
p reverse!(list) == ['abc'] # true
p list == ['abc'] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

# Data Structure, How we represent data that we will work with when converting the input to output:
# Array

# Algorithm, Steps for converting input to output:
# 1. the method accepts the Array parameter.
# 2. Permanently reverse the elements in the Array parameter.
# 3. Return the permanently reversed Array parameter.

and Code.” Implementation of Algorithm:

def reverse!(array)
  left_index = 0
  right_index = array.length - 1

  while left_index < right_index
  Reverse the Array of elements in place.
end

# tests:
list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.equal?(result) # true

list = %w[a b e d c]
p reverse!(list) == %w[c d e b a] # true
p list == %w[c d e b a] # true

list = ['abc']
p reverse!(list) == ['abc'] # true
p list == ['abc'] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
