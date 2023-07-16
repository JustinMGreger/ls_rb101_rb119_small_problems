# frozen_string_literal: true

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the 
sum of those multiples. 
For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

# Tests:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1_000) == 234_168

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem, 


Mental model of the problem (optional):
def multisum(parameter)
  parameter > 1
  searches for all multiples of 3 or 5 that lie between 1..parameter.
  sum_of_multiples = 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + parameter)
end

Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
