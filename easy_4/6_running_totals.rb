# frozen_string_literal: true

# LS solution:
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

# Enumerable#inject 
def running_total(array)
  array.inject([[], 0]) do |(totals, sum), value|
    new_sum = sum + value
    [totals + [new_sum], new_sum]
  end.first
end

# Enumerable#each_with_object

# Tests:
p running_total([2, 5, 13]) == [2, 7, 20] # result: true.
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # result: true.
p running_total([3]) == [3] # result: true.
p running_total([]) == [] # result: true.
