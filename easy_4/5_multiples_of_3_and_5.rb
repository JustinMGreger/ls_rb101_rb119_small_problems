# frozen_string_literal: true

# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# ls solution modified to by rubocop compliant:
# def multiple?(number, divisor)
#  (number % divisor).zero?
# end

# def multisum(max_value)
#  sum = 0
#  1.upto(max_value) do |number|
#    sum += number if multiple?(number, 3) || multiple?(number, 5)
#  end
#  sum
# end

# Tests:
# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1_000) == 234_168

# Further Exploration

# Investigate Enumerable.inject (also known as Enumerable.reduce), 
# Answer:
# The inject method combines all elements of an enumerable object (like an array or a hash) by applying a 
# binary operation, specified by a block or a symbol that names a method or operator.

# How might this method be useful in solving this problem? 
# (Note that Enumerable methods are available when working with Arrays.) 
# Answer:
# combine all elements of numbers from 3 to the parameter by applying a block of code with the addition assignment.

# Try writing such a solution. 
# Answer:

def multiple?(number, divisor)
  (number % divisor).zero?
end

def multisum(max_value)
  (1..max_value).select { |number| multiple?(number, 3) || multiple?(number, 5) }.inject { |sum, n| sum + n } 
end

# Tests:
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1_000) == 234_168

# Which is clearer? 
# Answer:
# the inject method.

# Which is more succinct?
# Answer:
# the inject method.