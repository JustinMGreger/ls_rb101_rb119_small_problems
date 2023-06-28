# frozen_string_literal: true

to the console, with each number on a separate line.

def odd_numbers
  (1..99).each do |number|
    puts number if number.odd?
  end
end

odd_numbers
