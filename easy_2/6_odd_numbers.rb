# frozen_string_literal: true

def odd_numbers
  (1..99).each do |number|
    puts number if number.odd?
  end
end

odd_numbers
