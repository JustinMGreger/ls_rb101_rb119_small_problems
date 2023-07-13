
Description of Exercise:
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
Identify expected input: 
two arguments, a positive integer and a boolean.

and output:
calculates the bonus for a given salary if the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.
tests:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

Make the requirements explicit Identify rules:
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

Mental model of the problem (optional):
Instruction:
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. 
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

Syntax:
def calculate_bonus(integer, boolean)
calculate bonus If the boolean is true, the bonus should be half of the salary. 
If the boolean is false, the bonus should be 0.

Instruction:
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.
If the boolean is true, the bonus should be half of the salary.
50000 / 2 == 25000
If the boolean is false, the bonus should be 0. 
Syntax:
if true then bonus = integer /2
if false then bonus = 0

Syntax:
def calculate_bonus(integer, boolean)
boolean. if true then bonus = integer /2 && if false then bonus = 0

Examples / Test Cases, Validate understanding of the problem:

tests:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

Data Structure, How we represent data that we will work with when converting the input to output:
array or not determined. 

Algorithm, Steps for converting input to output:
1. Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
2. If the boolean is true, the bonus should be half of the salary. 
3. If the boolean is false, the bonus should be 0.
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
The tests above should print true.

and Code.” Implementation of Algorithm:

Syntax:
def calculate_bonus(integer, boolean)
  boolean ? (integer / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

the output of which is:
true
true
true

the code works.
