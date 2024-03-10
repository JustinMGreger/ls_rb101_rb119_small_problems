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

output:
Make the requirements explicit Identify rules:
# Rewrite your recursive fibonacci method so that it computes its results without recursion.
# def fibonacci(number)
#   return number if number <= 1

#   fibonacci(number - 1) + fibonacci(number - 2)
# end

Mental model of the problem (optional):

# Examples / Test Cases, Validate understanding of the problem:
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:

# tests:
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
