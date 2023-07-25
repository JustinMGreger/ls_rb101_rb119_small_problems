# frozen_string_literal: true

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
# and each element has the running total from the original Array.

# Examples:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

#LS Solution:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# Enumerable#inject
# def running_total(array)
#  array.inject([[], 0]) do |(totals, sum), value|
#    new_sum = sum + value
#    [totals + [new_sum], new_sum]
#  end.first
# end

# Further Exploration
# Enumerable#each_with_object

def running_total(array)



end
# Tests:
p running_total([2, 5, 13]) == [2, 7, 20] # result: true.
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # result: true.
p running_total([3]) == [3] # result: true.
p running_total([]) == [] # result: true.
