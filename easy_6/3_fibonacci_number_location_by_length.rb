# frozen_string_literal: true

# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
# such that the first 2 numbers are 1 by definition,
# and each subsequent number is the sum of the two previous numbers.
# This series appears throughout the natural world.

# Computationally,
# the Fibonacci series is a very simple series,
# but the results grow at an incredibly rapid rate.
# For example,
# the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous,
# especially considering that it takes 6 iterations before it generates the first 2 digit number.

# Write a method that calculates and returns the index of the first Fibonacci number that has the number of
# digits specified as an argument. (The first Fibonacci number has index 1.)

# You may assume that the argument is always greater than or equal to 2.

# my solution:

1. the find_fibonacci_index_by_length method accepts the fibonacci_parameter
2. run fibonacci sequence loop
3. keep track of number of iterations of loop
4. break if block_parameter.length == fibonacci_parameter
5. return the number of iterations of loop

def find_fibonacci_index_by_length(fibonacci_parameter)
  run fibonacci sequence loop
  keep track of number of iterations of loop
  break if block_parameter.length == fibonacci_parameter
  return the number of iterations of loop
end









# Examples:
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1_000) == 4_782
p find_fibonacci_index_by_length(10_000) == 47_847
