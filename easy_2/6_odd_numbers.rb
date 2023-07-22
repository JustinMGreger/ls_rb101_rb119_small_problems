# frozen_string_literal: true

# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

def odd_numbers
  puts (1..99).to_a.select(&:odd?)
end

odd_numbers
