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

Description of Exercise:
The Integer#remainder method performs a remainder operation in Ruby. 
Rewrite #is_odd? to use Integer#remainder instead of %. 
Note: before version 2.4, Ruby used the Numeric#remainder method instead.

previous answer:
def is_odd?(integer)
  integer % 2 == 1
end

according to the most recent Ruby documentation:
https://ruby-doc.org/3.2.2/Integer.html#method-i-remainder
there you will find:
remainder(other) → real_number
Returns the remainder after dividing self by other.
Examples:
11.remainder(4)              # => 3
11.remainder(-4)             # => 3
-11.remainder(4)             # => -3
-11.remainder(-4)            # => -3
12.remainder(4)              # => 0
12.remainder(-4)             # => 0
-12.remainder(4)             # => 0
-12.remainder(-4)            # => 0
13.remainder(4.0)            # => 1.0
13.remainder(Rational(4, 1)) # => (1/1)

new answer:
def is_odd?(integer)
  integer.remainder(2) == 1
end

tests:             original output of the code using integer % 2 == 1 
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

The output of which are:
puts is_odd?(2) == false same output of the code using integer % 2 == 1
puts is_odd?(5) == true same output of the code using integer % 2 == 1 
puts is_odd?(-17) == false difference detected the original output of the code using integer % 2 == 1 was true.
puts is_odd?(-8) == false same output of the code using integer % 2 == 1 
puts is_odd?(0) == false same output of the code using integer % 2 == 1 
puts is_odd?(7) == true same output of the code using integer % 2 == 1 

Explantion:
the remainder(2) method being called on -17 has a remainder of -1.
-1 is not equal to 1 which is why it returns false.
the % method returns 1 on -17 % 2.
1 is equal to 1 which is why it returns true.
the way the % method and the remainder method are programmed are why they return different answers.
