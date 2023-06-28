# frozen_string_literal: true

def odd_numbers
  1.upto(99) { |value| puts value if value.odd? }
end

odd_numbers
