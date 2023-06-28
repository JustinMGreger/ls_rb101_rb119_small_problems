# frozen_string_literal: true

def odd_numbers
  value = 1
  while value <= 99
    puts value
    value += 2
  end
end

odd_numbers

Further Exploration

Repeat this exercise with a technique different from the one you just used, and different from the solution shown above. 
You may want to explore the use Integer#upto or Array#select methods 