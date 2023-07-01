# frozen_string_literal: true

def prompt(message)
  puts message
end

def solicit_numbers
  prompt '==> Enter the 1st number:'
  1st_number = gets.chomp.to_i
end

Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

prompt '==> Enter the 2nd number:'
15
prompt '==> Enter the 3rd number:'
20
prompt '==> Enter the 4th number:'
17
prompt '==> Enter the 5th number:'
23
prompt '==> Enter the last number:'
17
prompt "The number 17 appears in [25, 15, 20, 17, 23]."


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].