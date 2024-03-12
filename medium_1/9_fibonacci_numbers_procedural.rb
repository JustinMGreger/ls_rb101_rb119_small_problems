# frozen_string_literal: true
# In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number.
# In a language that is not optimized for recursion,
# some (not all) recursive methods can be extremely slow and require massive quantities of memory and/or stack space.

# Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion;
# as a result, the Fibonacci solution is only useful up to about fibonacci(40).
# With higher values of nth, the recursive solution is impractical.
# (Our tail recursive solution did much better, but even that failed at around fibonacci(8200).)

# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# Examples:
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# number.

# output:
# the nth Fibonacci number.

# Make the requirements explicit Identify rules:
# Rewrite your recursive fibonacci method so that it computes its results without recursion.
# def fibonacci(number)
#   return number if number <= 1

#   fibonacci(number - 1) + fibonacci(number - 2)
# end

# Mental model of the problem (optional):
# def fibonacci(number)
#  return number if number <= 1
#  Rewrite your recursive fibonacci method so that it computes its results without recursion.
#   fibonacci(number - 1) + fibonacci(number - 2)
# end


# Examples / Test Cases, Validate understanding of the problem:
# p fibonacci(20) == 6765
# p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501

# Data Structure, How we represent data that we will work with when converting the input to output:
# none beyond varibles.

# Algorithm, Steps for converting input to output:
# the fibonacci method accepts the (number) parameter and is defined as the following:
# if the number parameter is less than or equal to the integer 1 return the value
# assigned to the number parameter.
# the prev varible is assigned the integer 0
# the current varible is assigned the integer 1
# for the result of subtracting the number parameter by the integer 1 times execute
# the following code:
# the temp varible is assigned the current varible
# the current varible is assigned the result of adding the prev varible to the
# current varible
# the prev varible is assigned the temp varible
# this is the last line of the .times method.
# return the value assigned to the current varible.
# this is the last line of the fibonacci method.

# and Code. Implementation of Algorithm:
# def fibonacci(number)
#   return number if number <= 1

#   prev = 0
#   current = 1
#   (number - 1).times do
#     temp = current
#     current = prev + current
#     prev = temp
#   end
#   current
# end

# LS Solution:
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end

# tests:
p fibonacci(20) == 6765
p fibonacci(100) == 354_224_848_179_261_915_075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
