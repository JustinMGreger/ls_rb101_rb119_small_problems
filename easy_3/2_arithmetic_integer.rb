# frozen_string_literal: true

def prompt(message) 
  puts message
end

def input  
  gets.chomp
end

def first_number
  prompt '==> Enter the first number:'
  input
end

def second_number
  prompt '==> Enter the second number:'
  input
end

prompt addition ==> 23 + second_number = 40
prompt subtraction ==> 23 - second_number = 6
prompt product ==> 23 * second_number = 391
prompt quotient ==> 23 / second_number = 1
prompt remainder ==> 23 % second_number = 6
prompt power ==> 23 ** second_number = 141050039560662968926103