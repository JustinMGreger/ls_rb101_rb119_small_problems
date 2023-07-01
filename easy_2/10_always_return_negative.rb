

if 5  is a positive number then * -1 == -5
if -3  is negative then the original number.
if 0 is 0 then the original number.


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
