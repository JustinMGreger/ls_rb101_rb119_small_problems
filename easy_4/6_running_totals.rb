# frozen_string_literal: true

# Write a method that takes an Array of numbers, and returns an Array with the same number of elements,
# and each element has the running total from the original Array.

# Examples:
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# A running total is the sum of all values in a list up to and including the current element.
# Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7),
# while the running total at index 3 is 47 (14 + 11 + 7 + 15).

# LS Solution:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# Further Exploration

# Try solving this problem using Enumerable#each_with_object or Enumerable#inject
# (note that Enumerable methods can be applied to Arrays).

# Enumerable#each_with_object
# def running_total(numbers)
#   numbers.each_with_object([]) do |number, totals|
#     previous_total = totals.last || 0
#     totals << previous_total + number
#   end
# end

# Enumerable#inject
# def running_total(array)
#  array.inject([[], 0]) do |(totals, sum), value|
#    new_sum = sum + value
#    [totals + [new_sum], new_sum]
#  end.first
# end

# Tests:
# p running_total([2, 5, 13]) == [2, 7, 20] # result: true.
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # result: true.
# p running_total([3]) == [3] # result: true.
# p running_total([]) == [] # result: true.
