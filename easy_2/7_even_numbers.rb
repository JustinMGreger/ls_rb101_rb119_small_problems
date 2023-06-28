# frozen_string_literal: true

def even_numbers
  value = 1
  while value <= 99
    puts value if value.even?
    value += 1
  end
end

even_numbers
