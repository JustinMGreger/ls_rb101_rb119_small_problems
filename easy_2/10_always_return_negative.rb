# frozen_string_literal: true

def negative(number)
  if number.positive?
    negative_number = number * -1
    puts negative_number
  else
    puts number
  end
end

negative(number)
