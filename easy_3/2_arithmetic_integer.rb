# frozen_string_literal: true

def prompt(message) 
  puts message
end

def input  
  gets.chomp.to_i
end

def first_number
  prompt '==> Enter the first number:'
  input
end

def second_number
  prompt '==> Enter the second number:'
  input
end

def addition_method(first_number, second_number)
  addition = first_number + second_number
  prompt "==> #{first_number} + #{second_number} = #{addition}"
end

def subtraction_method(first_number, second_number)
  subtraction = first_number - second_number
  prompt "==> #{first_number} - #{second_number} = #{subtraction}"
end

def product_method(first_number, second_number)
  prompt "==> #{first_number} * #{second_number} = #{product}"
end

def quotient_method(first_number, second_number)
  prompt "==> #{first_number} / #{second_number} = #{quotient}"
end

def remainder_method(first_number, second_number)
  prompt "==> #{first_number} % #{second_number} = #{remainder}"
end

def power_method(first_number, second_number)
  prompt "==> #{first_number} ** #{second_number} = #{power}"
end

addition_method(first_number, second_number)
subtraction_method(first_number, second_number)
product_method(first_number, second_number)
quotient_method(first_number, second_number)
remainder_method(first_number, second_number)
power_method(first_number, second_number)
