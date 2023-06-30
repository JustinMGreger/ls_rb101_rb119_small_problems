# frozen_string_literal: true

def prompt(message)
  puts ">> #{message}"
end

def integer_input
  gets.chomp.to_i
end

def operation
  gets.chomp.downcase
end

def numbers(integer_input)
  (1..integer_input).to_a
end

def sum(numbers)
  numbers.inject(:+)
end

def product(numbers)
  numbers.inject(:*)
end

def integer_prompt
  prompt '>> Please enter an integer greater than 0:'
  integer_input
end

def integer_error
  return unless integer_input <= 0

  prompt 'error! >> Please enter an integer greater than 0:'
  integer_input
end

def operation_prompt
  prompt ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation
end

def operation_flow
  if operation == 's'
    prompt "The sum of the integers between 1 and #{integer_input} is #{sum}."
  elsif operation == 'p'
    prompt "The product of the integers between 1 and #{integer_input} is #{product}."
  else
    prompt "error! >> Enter 's' to compute the sum, 'p' to compute the product."
    operation
  end
end
