# frozen_string_literal: true

# LS solution:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# Further Exploration

# Try solving this problem using 
#  Enumerable#each_with_object
# def running_total(array)
#   array.each_with_object([]) do |num, new_array|
#     new_array << (new_array.last || 0) + num
#   end
# end

# Enumerable#inject 

# Tests:
p running_total([2, 5, 13]) == [2, 7, 20] # result: true.
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # result: true.
p running_total([3]) == [3] # result: true.
p running_total([]) == [] # result: true.
