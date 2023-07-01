# frozen_string_literal: true

def negative(number)
  if number > 0
    negative_number = number * -1
    puts negative_number
  else
    number
  end
end

Tests:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
