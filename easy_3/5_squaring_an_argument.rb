# frozen_string_literal: true

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
  multiply(number, number) * power
end
 
prompt "==> What number do you want to raise to the power?"
number = input
prompt '==> What power do you want?'
power = input

prompt  "==> The result is: #{power_to_the_n(number, power)}"
