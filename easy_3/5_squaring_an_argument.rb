# frozen_string_literal: true

def prompt(message)
  puts message
end

def multiply(arg_one, arg_two)
  arg_one * arg_two
end

def square(number)
  multiply(number, number)
end

prompt square(5) == 25 # result is true.
prompt square(-8) == 64 # result is true.

Further Exploration

What if we wanted to generalize this : cubed, to the 4th power, to the 5th, etc. 
How would we go about doing so while still using the multiply method?

def power_to_the_n(n)
end

prompt "==> What number do you want to raise to the power?"
prompt '==> What power do you want?'
