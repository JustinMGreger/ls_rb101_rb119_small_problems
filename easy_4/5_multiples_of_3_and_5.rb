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
How might this method be useful in solving this problem? 
(Note that Enumerable methods are available when working with Arrays.) 
Answer:




Try writing such a solution. 
Which is clearer? 
Which is more succinct?