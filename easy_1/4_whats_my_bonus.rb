# frozen_string_literal: true

def calculate_bonus(integer, boolean)
  boolean ? (integer / 2) : 0
end

# Tests:
p calculate_bonus(2800, true) == 1400
p calculate_bonus(1000, false) == 0
p calculate_bonus(50000, true) == 25000
