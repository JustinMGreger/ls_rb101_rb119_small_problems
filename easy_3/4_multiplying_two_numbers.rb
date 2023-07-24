# frozen_string_literal: true

# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:
# multiply(5, 3) == 15

def multiply(arg_one, arg_two)
  arg_one * arg_two
end

p multiply([1, 2], 5)

# Further Exploration

# For fun: what happens if the first argument is an Array?
# Answer: [1, 2, 1, 2, 1, 2, 1, 2, 1, 2]

# What do you think is happening here?
# the [1, 2] array is being expanded by 5 times the amount of the same elements.
# there are 5 elements of the 1 integer & 5 elements of the 2 integer.
# the integer elements 1, 2 are in order in the array of elements which is why they are repeated together.
