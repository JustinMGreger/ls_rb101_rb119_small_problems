# frozen_string_literal: true

# ls solution modified to by rubocop compliant:
def multiple?(number, divisor)
  (number % divisor).zero?
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    sum += number if multiple?(number, 3) || multiple?(number, 5)
  end
  sum
end

# Tests:
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1_000) == 234_168

# Further Exploration

# Investigate Enumerable.inject (also known as Enumerable.reduce), 
# Answer:
# The inject method combines all elements of an enumerable object (like an array or a hash) by applying a 
# binary operation, specified by a block or a symbol that names a method or operator.

# How might this method be useful in solving this problem? 
# (Note that Enumerable methods are available when working with Arrays.) 
# Answer:
# combine all elements of numbers from 3 to the parameter by applying a block of code with the addition assignment.

Try writing such a solution. 
Which is clearer? 
Which is more succinct?