# frozen_string_literal: true

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or
product of all numbers between 1 and the entered integer.

Your own solution probably should try to validate input and issue error messages as needed.
Try to use #inject in your solution to this problem.



def prompt(message)  
  puts message
end


prompt '>> Please enter an integer greater than 0:'
5
prompt ">> Enter 's' to compute the sum, 'p' to compute the product."
s
prompt The sum of the integers between 1 and 5 is 15.

p
The product of the integers between 1 and 6 is 720.
