# frozen_string_literal: true

def odd_numbers
  (1..99).to_a.select &:odd?
end

odd_numbers
