# frozen_string_literal: true

def running_total(array)
  new_array = [array].inject { |sum, n| sum + n } 
  new_array
end

# Tests:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
