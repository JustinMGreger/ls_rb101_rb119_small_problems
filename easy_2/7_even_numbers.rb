# frozen_string_literal: true

def even_numbers
  puts (1..99).to_a.select(&:even?)
end

even_numbers
