# frozen_string_literal: true

# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

def even_numbers
  puts (1..99).to_a.select(&:even?)
end

even_numbers
