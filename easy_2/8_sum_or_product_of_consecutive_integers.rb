# frozen_string_literal: true

def prompt(message)  
  puts message
end

def input  
  gets.chomp.to_i
end

def sum_of_integers(input)
  (1..input).reduce(0, :+)
end

def product_of_integers(input)
  (1..input).reduce(1, :*)
end

def sum_or_product_of_consecutive_integers
  prompt '>> Please enter an integer greater than 0:'
  input
  prompt '>> Enter 's' to compute the sum, 'p' to compute the product.'
  if input == 's'
    sum = sum_of_integers(input)
    prompt "The sum of the integers between 1 and #{input} is #{sum}."
  else
    product = product_of_integers(input)
    prompt "The product of the integers between 1 and #{input} is #{product}."
  end
end

syntax error, unexpected local variable or method, expecting end-of-input
  19  def sum_or_product_of_consecutive_integers
> 20    prompt '>> Please enter an integer greater than 0:'
> 21    input
> 22    prompt '>> Enter 's' to compute the sum, 'p' to compute the product.'
  30  end





