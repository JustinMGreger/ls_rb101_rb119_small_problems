# frozen_string_literal: true

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

# Example:
# square(5) == 25
# square(-8) == 64

# LS solution:
# def square(n)
#   multiply(n, n)
# end

# Further Exploration

# What if we wanted to generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc.
# How would we go about doing so while still using the multiply method?

def prompt(message)
  puts message
end

def input
  gets.chomp.to_f
end

def multiply(arg_one, arg_two)
  arg_one * arg_two
end

def power_to_the_n(number, power)
  result = 1
  power.to_i.times { result = multiply(result, number) }
  result
end

prompt '==> What number do you want to raise to the power?'
number = input
prompt '==> What power do you want?'
power = input

prompt  "==> The result is: #{power_to_the_n(number, power)}"
