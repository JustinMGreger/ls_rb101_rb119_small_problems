# frozen_string_literal: true

def calculate_bonus(integer, boolean)
  boolean ? (integer / 2) : 0
end

# Tests:
p calculate_bonus(2800, true) == 1400 # result: true.
p calculate_bonus(1000, false).zero? # result: true.
p calculate_bonus(50_000, true) == 25_000 # result: true.
