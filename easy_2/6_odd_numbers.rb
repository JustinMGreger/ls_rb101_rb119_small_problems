# frozen_string_literal: true

def odd_numbers
  (1..99).to_a.select { |value| puts value.odd? }.each
end

odd_numbers
