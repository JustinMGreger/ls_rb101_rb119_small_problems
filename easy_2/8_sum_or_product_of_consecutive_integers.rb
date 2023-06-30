# frozen_string_literal: true

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or
product of all numbers between 1 and the entered integer.
Try to use #inject in your solution to this problem.



def prompt(message)  
  puts message
end

prompt '>> Please enter an integer greater than 0:'
input = 5
if input is <= 0 then put 'error' and go back to asking the question in a loop until it is correct.

prompt ">> Enter 's' to compute the sum, 'p' to compute the product."
input = s
prompt "The sum of the integers between 1 and #{5} is #{15}."
input = p
prompt "The product of the integers between 1 and #{6} is #{720}."

if input is != s or p then put 'error' and go back to asking the question in a loop until it is correct.