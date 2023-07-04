# frozen_string_literal: true

def prompt(message)
  puts message
end

def input
  gets.chomp.to_i
end

prompt '==> Enter the first number:'
first_number = input

prompt '==> Enter the second number:'
second_number = input

def addition_method(first_number, second_number)
  addition = first_number + second_number
  prompt "==> #{first_number} + #{second_number} = #{addition}"
end

def subtraction_method(first_number, second_number)
  subtraction = first_number - second_number
  prompt "==> #{first_number} - #{second_number} = #{subtraction}"
end

def product_method(first_number, second_number)
  product = first_number * second_number
  prompt "==> #{first_number} * #{second_number} = #{product}"
end

def quotient_method(first_number, second_number)
  quotient = first_number / second_number
  prompt "==> #{first_number} / #{second_number} = #{quotient}"
end

def remainder_method(first_number, second_number)
  remainder = first_number % second_number
  prompt "==> #{first_number} % #{second_number} = #{remainder}"
end

def power_method(first_number, second_number)
  power = first_number**second_number
  prompt "==> #{first_number} ** #{second_number} = #{power}"
end

addition_method(first_number, second_number)
subtraction_method(first_number, second_number)
product_method(first_number, second_number)
quotient_method(first_number, second_number)
remainder_method(first_number, second_number)
power_method(first_number, second_number)

Discussion

There are some edge cases to consider in this exercise. 
We have to be careful of not having a second number that is zero. 
What if we wanted to use floats instead of integers? How does this change this problem?