# frozen_string_literal: true

def prompt(message)
  puts message
end

prompt 'what is the first argument you want to multiply by?'
input = gets.chomp.to_i
first_argument = input
prompt 'what is the first argument you want to multiply by?'
second_argument = input

def multiply(first_argument, second_argument)
  product = first_argument * second_argument
  prompt product
end
