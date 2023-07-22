# frozen_string_literal: true

# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to
# determine the sum or product of all numbers between 1 and the entered integer.

# Examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# LS solution:
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end

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
