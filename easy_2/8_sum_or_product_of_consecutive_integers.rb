# frozen_string_literal: true

def prompt(message)  
  puts message
end

Sum or Product of Consecutive Integers

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or
product of all numbers between 1 and the entered integer.

Examples:

prompt >> Please enter an integer greater than 0:
5
prompt >> Enter 's' to compute the sum, 'p' to compute the product.
s
prompt The sum of the integers between 1 and 5 is 15.


prompt >> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.