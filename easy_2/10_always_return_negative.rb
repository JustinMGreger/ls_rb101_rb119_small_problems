# frozen_string_literal: true

def negative(number)
  if number > 0
    negative_number = number * -1
    puts negative_number
  else
    puts number
  end
end

negative(-3)
-3

Test
negative(-3) == -3
success!