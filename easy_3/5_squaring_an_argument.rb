# frozen_string_literal: true

def multiply(arg_one, arg_two)
  arg_one * arg_two
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64
