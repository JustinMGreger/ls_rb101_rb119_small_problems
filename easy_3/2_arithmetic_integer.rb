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




prompt addition_method(first_number, second_number) "==> #{first_number} + #{second_number} = #{addition}"
prompt subtraction_method(first_number, second_number) "==> #{first_number} - #{second_number} = #{subtraction}"
prompt product_method(first_number, second_number) "==> #{first_number} * #{second_number} = #{}"
prompt quotient_method(first_number, second_number) "==> #{first_number} / #{second_number} = #{}"
prompt remainder_method(first_number, second_number) "==> #{first_number} % #{second_number} = #{}"
prompt power_method(first_number, second_number) "==> #{first_number} ** #{second_number} = #{}"