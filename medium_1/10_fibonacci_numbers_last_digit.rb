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
# return the value assigned the result of converting the last varible to the string form
# then select the element at the -1 index location which is the last element which is
# then converted to integer form
# this is the last line of the fibonacci method.

# and Code. Implementation of Algorithm:
# def fibonacci_last(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last.to_s[-1].to_i
# end

# LS Solution Part 1:
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end

# LS Solution Part 2:
# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# tests:
# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123_456_789) # -> 4

# Further Exploration

# After a while, even this method starts to take too long to compute results.
# Can you provide a solution to this problem that will work no matter how big the number?
# You should be able to return results almost instantly.
# For example, the 123,456,789,987,745th Fibonacci number ends in 5.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# the (nth) parameter.

# output:
# the last digit of the nth Fibonacci number.

# Make the requirements explicit Identify rules:
# Can you provide a solution to this problem that will work no matter how big the number?
# You should be able to return results almost instantly.
# For example, the 123,456,789,987,745th Fibonacci number ends in 5.

# Mental model of the problem (optional):
# def fibonacci_last(nth)
# Can you provide a solution to this problem that will work no matter how big the number?
# You should be able to return results almost instantly.
# For example, the 123,456,789,987,745th Fibonacci number ends in 5.

# Examples / Test Cases, Validate understanding of the problem:
# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123_456_789) # -> 4
# p fibonacci_last(123_456_789_987_745) # -> 5

# Data Structure, How we represent data that we will work with when converting the input to output:
# variables. no arrays or hashes.

# Algorithm, Steps for converting input to output:
# the fibonacci_last method accepts the (nth) parameter and is defined as the following:
# the pisano_period variable is assigned the integer 60.
# the nth_mod_pisano variable is assigned the remainder of dividing the nth parameter
# by the pisano_period variable.
# the first variable is assigned the integer 0.












and Code. Implementation of Algorithm:




# tests:
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123_456_789) # -> 4
p fibonacci_last(123_456_789_987_745) # -> 5
