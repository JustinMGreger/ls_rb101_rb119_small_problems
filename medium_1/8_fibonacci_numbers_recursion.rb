# frozen_string_literal: true

# The Fibonacci series is a sequence of numbers starting with 1 and 1
# where each number is the sum of the two previous numbers:
# the 3rd Fibonacci number is 1 + 1 = 2,
# the 4th is 1 + 2 = 3,
# the 5th is 2 + 3 = 5, and so on.
# In mathematical terms:
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2
# Sequences like this translate naturally as "recursive" methods.
# A recursive method is one in which the method calls itself.
# For example:
# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end
# sum is a recursive method that computes the sum of all integers between 1 and n.
# Recursive methods have three primary qualities:
# They call themselves at least once.
# They have a condition that stops the recursion (n == 1 above).
# They use the result returned by themselves.
# In the code above, sum calls itself once; it uses a condition of n == 1 to stop recursing;
# and, n + sum(n - 1) uses the return value of the recursive call to compute a new return value.

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
# Examples:
# fibonacci(1) == 1
# fibonacci(2) == 1
# fibonacci(3) == 2
# fibonacci(4) == 3
# fibonacci(5) == 5
# fibonacci(12) == 144
# fibonacci(20) == 6765

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# nth integer.

# output:
# the nth Fibonacci number.

# Make the requirements explicit Identify rules:
# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.
# Recursive methods have three primary qualities:
# They call themselves at least once.
# They have a condition that stops the recursion (n == 1 above).
# They use the result returned by themselves.

# Mental model of the problem (optional):
# def fibonacci(number)
# computes the (number)th Fibonacci number, where (number)th is the parameter.
# Recursive methods have three primary qualities:
# They call themselves at least once.
# They have a condition that stops the recursion (n == 1 above).
# They use the result returned by themselves.

# Examples / Test Cases, Validate understanding of the problem:
# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

# Data Structure, How we represent data that we will work with when converting the input to output:
# none.

# Algorithm, Steps for converting input to output:
# the fibonacci method accepts the number parameter and is defined as the following:
# if the number parameter is less than or equal to the integer 1 return the number
# parameter.
# return the sum of adding the result of passing the result of subtracting the number
# parameter by the integer 1 to the fibonacci method with the result of passing the
# result of subtracting the number parameter by the integer 2 to the fibonacci method.
# this is the last line of the fibonacci method.

# and Code. Implementation of Algorithm:
# def fibonacci(number)
#   return number if number <= 1

#   fibonacci(number - 1) + fibonacci(number - 2)
# end

# LS Solution:
# def fibonacci(nth)
#   return 1 if nth <= 2
#   fibonacci(nth - 1) + fibonacci(nth - 2)
# end

# A tail recursive solution for this exercise is:
def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

# tests:
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

# Further Exploration

# We will revisit Fibonacci numbers in the next exercise, and, in particular,
# we will discuss some problems with our recursive solution.
# Before you move on, take some time to think about our solution (not the tail recursive solution).
# Can you identify any faults with it?
# Not bugs, but problems that impact its usability.
# How might you try to repair the issues you identify?
# Don't do any coding right now.
# response:
# fault efficiency:
# this performs calculations more than once which increases as the nth parameter increases
# which is highly inefficient for larger values of 'nth'.
# solution memoization:
# store the results of each calculation the first time they are computed in a hash or array.
# this enables the stored result to be returned immediately when it is called.
# this would eliminate the need for calculating the same fibonacci values multiple times.
# solution iterate:
# another way to solve this is to iterate through the numbers from 0 up to nth,
# storing only the last two calculated values at any time.
# fault stack overflow risk:
# each recursive call consumes a certain amount of stack space.
# this method makes two recursive calls for each non-base case.
# as the nth number grows so does the number of recursive calls
# this can quickly exhaust the available stack space resulting
# in a stack overflow error.
# solution iterate:
# another way to solve this is to iterate through the numbers from 0 up to nth,
# storing only the last two calculated values at any time.
# solution memoization:
# store the results of each calculation the first time they are computed in a hash or array
# this enables the stored result to be returned immediately when it is called.
# this would eliminate the need for calculating the same fibonacci values.
# fault handling of the sequence start:
# the method starts the fibonacci sequence with two 1s,
# the traditional fibonacci sequence starts with 0 and 1.
# this could be an issue if specific applications expect the sequence to start with 0.
# solution:
# adjust the base case to return 0 for nth == 1 and 1 for nth == 2,
# and modify the recursive call accordingly.
