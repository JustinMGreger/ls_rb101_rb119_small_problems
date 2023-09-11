# frozen_string_literal: true

# Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.
# Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

# Examples:
p reverse([1, 2, 3, 4]) == [4, 3, 2, 1] # => true
p reverse(%w[a b e d c]) == %w[c d e b a]  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 

# Identify expected input: 
# an Array

# output:
# a new Array with the elements of the original list in reverse order.

# Make the requirements explicit Identify rules:
# 1. Do not modify the original list.
# 2. You may not use Array#reverse or Array#reverse!
# 3. Nor may you use the method you wrote in the previous exercise.
# 4. Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.

# Mental model of the problem (optional):
# 1. the reverse method accepts an Array parameter.
# 2. the reverse method reverses the order of the elements of the Array parameter.
# 3. the reverse method assigns the the result of the reversal to a new Array variable.
# 4. the reverse method returns the new Array variable.

Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm: