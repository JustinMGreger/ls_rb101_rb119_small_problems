# frozen_string_literal: true

def running_total([array])
  [array].modify the array so that each element is the sum of the current element and all previous elements.
  return [new_array] with the same number of elements 
end
# 2. 
# 3. return the transformed Array 
# example: 
# [14, 11, 7, 15, 20][2] == 32 (14 + 11 + 7)
# [14, 11, 7, 15, 20][3] == 47 (14 + 11 + 7 + 15)










# Tests:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
