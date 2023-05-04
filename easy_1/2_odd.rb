=begin

Description of Exercise:
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.

Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Description of Exercise:
Keep in mind that you're not allowed to use #odd? or #even? in your solution.

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
Identify expected input:
one integer argument, which may be positive, negative, or zero that is a valid integer value.
 
and output:
return true if the number's absolute value is odd. 

Make the requirements explicit Identify rules:
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.
Keep in mind that you're not allowed to use #odd? or #even? in your solution.

Mental model of the problem (optional):
Instruction:
Write a method. 

Syntax:
def method
  #stuff
end

Instruction:
that takes one integer argument, which may be positive, negative, or zero. 

Syntax:
def method(integer)
  #stuff
end

Instruction:
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.
Keep in mind that you're not allowed to use #odd? or #even? in your solution.

Syntax:
def is_odd?(integer)
  integer % 2 == 1
end

Examples / Test Cases, Validate understanding of the problem:
If when I run the output of the code is the same as the following examples then I understand and have solved the problem:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

The output of which are:
false
true
true
false
false
true

this was correct this code works.

Data Structure, How we represent data that we will work with when converting the input to output.
undetermined.

Algorithm, Steps for converting input to output:
1. define the is_odd? method that accepts the integer parameter as returning true if the integer's absolute value is odd. 

and Code.” Implementation of Algorithm:
def is_odd?(integer)
  integer % 2 == 1
end

tests:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

The output of which are:
false
true
true
false
false
true

this was correct this code works.

=end