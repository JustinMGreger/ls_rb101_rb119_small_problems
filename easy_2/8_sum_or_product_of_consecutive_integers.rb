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
  prompt 'Please enter an integer greater than 0:'
  input = integer_input
  while input <= 0
    prompt 'Please enter an integer greater than 0:'
    input = integer_input
  end
  input
end

def operation_prompt
  prompt "Enter 's' to compute the sum, 'p' to compute the product."
  opp = operation
  until %w[s p].include?(opp)
    prompt "error! Enter 's' to compute the sum, 'p' to compute the product."
    opp = operation
  end
  opp
end

def operation_flow(input, opp)
  num_list = numbers(input)
  if opp == 's'
    result = sum(num_list)
    prompt "The sum of the integers between 1 and #{input} is #{result}."
  elsif opp == 'p'
    result = product(num_list)
    prompt "The product of the integers between 1 and #{input} is #{result}."
  end
end

input = integer_prompt
opp = operation_prompt
operation_flow(input, opp)
