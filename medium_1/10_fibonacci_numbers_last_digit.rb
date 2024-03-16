# frozen_string_literal: true

# In the previous exercise,
# we developed a procedural method for computing the value of the nth Fibonacci numbers.
# This method was really fast,
# computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise,
# you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Examples:
# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# nth fibonacci number.

# output:
# the last digit of the nth Fibonacci number.

# Make the requirements explicit Identify rules:
# write a method that returns the last digit of the nth Fibonacci number.

# Mental model of the problem (optional):
# write def fibonacci_last method(nth)
#  that returns the last digit of the nth Fibonacci number.
# end

# Examples / Test Cases, Validate understanding of the problem:
# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# the fibonacci method accepts the (nth) parameter and is defined as the following:
# the first, last varibles are parallel assigned the elements in the [1, 1] array
# that is the first varible is assigned the integer 1 and the last varible is
# assigned the integer 1.
# from the integer 3 upto the nth parameter execute the following block of code:
# the first, last varibles are parallel assigned the elements in the [last, first + last]
# array that is the first varible is assigned the last varible and the last varible is
# assigned the result of adding the first varible with the last varible.
# this is the last line of the .upto method.






and Code. Implementation of Algorithm:

# tests:
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
