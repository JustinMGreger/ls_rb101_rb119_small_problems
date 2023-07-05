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
until second_number != 0
  prompt '==> Enter the second number:'
  second_number = input
end

def product_method(first_number, second_number)
  product = first_number * second_number
  prompt "==> #{first_number} * #{second_number} = #{product}"
end

product_method(first_number, second_number)

Further Exploration

For fun: what happens if the first argument is an Array? What do you think is happening here?