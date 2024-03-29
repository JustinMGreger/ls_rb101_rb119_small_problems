# frozen_string_literal: true

# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

# Examples:
# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
# The tests above should print true.

# LS solution:
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

# Tests:
p calculate_bonus(2800, true) == 1400 # result: true.
p calculate_bonus(1000, false).zero? # result: true.
p calculate_bonus(50_000, true) == 25_000 # result: true.
