# frozen_string_literal: true

Try to use #inject in your solution to this problem.

def prompt(message)  
  puts message
end

def integer_input  
  gets.chomp.to_i
end

def operation  
  gets.chomp
end

def sum(integer_input)
  #inject
  #{integer_input}
end

def product(integer_input)
  #inject
  #{integer_input}
end

prompt '>> Please enter an integer greater than 0:'
integer_input 
if integer_input <= 0 then prompt 'error' and 
  go back to prompt '>> Please enter an integer greater than 0:' in a loop until it is correct.

  prompt ">> Enter 's' to compute the sum, 'p' to compute the product."
if operation = 's'
  prompt "The sum of the integers between 1 and #{integer_input} is #{15}."
elsif operation = 'p'
  prompt "The product of the integers between 1 and #{integer_input} is #{720}."
else
  prompt 'error' and go back to asking the question in a loop until it is correct.
end