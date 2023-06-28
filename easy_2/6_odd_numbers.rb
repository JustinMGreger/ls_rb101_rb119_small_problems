# frozen_string_literal: true

def odd_numbers
  puts ((1..99).to_a.select (&:odd?))
end

odd_numbers

W: [Correctable] Lint/AmbiguousOperator: Ambiguous block operator. Parenthesize the method arguments if it's surely a block operator, or add a whitespace to the right of the & if it should be a binary AND.
puts (1..99).to_a.select &:odd?