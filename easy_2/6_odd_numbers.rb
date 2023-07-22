# frozen_string_literal: true

# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# LS solution:
# value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# Further Exploration

# Repeat this exercise with a technique different from the one you just used,
# and different from the solution shown above.
# You may want to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?

# Integer#upto:
# def odd_numbers
#   1.upto(99) do |i|
#     puts i if i % 2 == 1
#   end
# end

# odd_numbers

# Array#select:

Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
[1..99]




# Integer#odd?:
# def odd_numbers
#   puts (1..99).to_a.select(&:odd?)
# end

# odd_numbers
