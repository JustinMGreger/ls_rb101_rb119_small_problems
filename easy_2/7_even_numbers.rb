# frozen_string_literal: true

# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# LS solution:
# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end

def even_numbers
  puts (1..99).to_a.select(&:even?)
end

even_numbers
