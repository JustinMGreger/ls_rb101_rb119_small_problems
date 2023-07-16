# frozen_string_literal: true

Mental model of the problem (optional):
def multisum(parameter)
  searches for all multiples of 3 or 5 that lie between 2..parameter.
  sum_of_multiples = 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + parameter)
end

# Tests:
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1_000) == 234_168
