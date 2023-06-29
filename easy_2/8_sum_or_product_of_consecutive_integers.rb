# frozen_string_literal: true

def prompt(message)  
  puts message
end

def input_integer
  gets.chomp.to_i
end

def input_string
  gets.chomp
end

def sum_of_integers(input)
  (1..input).reduce(0, :+)
end

def product_of_integers(input)
  (1..input).reduce(1, :*)
end

def sum_or_product_of_consecutive_integers
  prompt '>> Please enter an integer greater than 0:'
  number = input_integer
  prompt ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = input_string
  if operation == 's'
    sum = sum_of_integers(number)
    prompt "The sum of the integers between 1 and #{number} is #{sum}."
  else
    product = product_of_integers(number)
    prompt "The product of the integers between 1 and #{number} is #{product}."
  end
end

sum_or_product_of_consecutive_integers