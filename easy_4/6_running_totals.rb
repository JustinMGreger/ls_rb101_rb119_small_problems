# frozen_string_literal: true

# Enumerable#inject 

# Tests:
p running_total([2, 5, 13]) == [2, 7, 20] # result: true.
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67] # result: true.
p running_total([3]) == [3] # result: true.
p running_total([]) == [] # result: true.
