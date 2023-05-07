=begin

Description of Exercise:
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. The length of the string should match the given integer.

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

Description of Exercise:
The tests above should print true.

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
Identify expected input: 
Write a method that takes one argument, a positive integer.

and output:
return a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.
Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.

Make the requirements explicit Identify rules:
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. 
The length of the string should match the given integer.
Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.

Mental model of the problem (optional):
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, 
always starting with 1. 
The length of the string should match the given integer.
Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.

Syntax:
puts stringy(6) == '101010'

Explanation:
puts is put s which is put string which is print to the screen the string.
stringy is a method.
(6) is a argument passed to the method.
== means equal to.
'101010' is a string.
this means:
print to the screen the result of the stringy method accepting the argument 6 which is the string '101010'.

Instruction:
Write a method that takes one argument, a positive integer, 

Syntax:
def stringy(parameter)

Instruction:
and returns a string of alternating 1s and 0s, always starting with 1. 

answer:
1 or 0 starting with 1.
index starts at 0 which means 0 = 1
index 1 would be = '0'.
index 0 is even and index 1 is odd.
this means:
even index is = 1 and odd index is = 0.
some syntax determines if the index is even or odd.
index.even
these integers are combined into a new string somehow.
this means:
integer = index.even? ? 1 : 0
I decided to combine them inside of a array data structure.
these integers will be inside of the array and turned into strings somehow.
this means:
integers array [] << integer

the syntax so far:
def stringy(parameter)
integers_array = []

integer = index.even? ? 1 : 0
integers_array << integer
end
somehow make the integers_array into a string possibly concatenation.
end

Instruction:
The length of the string should match the given integer.

Syntax example:
puts stringy(6) == '101010'
'101010' is a 6 characters long string.

this means:
the argument is the length of the string which is how many times the block of code is run.

the syntax so far:
def stringy(parameter)
integers_array = []

parameter.times do |index|

integer = index.even? ? 1 : 0
integers_array << integer
end
somehow make the integers_array into a string possibly concatenation.
end

Instructions:
The tests above should print true

In referrence to:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(parameter)
integers_array = []

parameter.times do |index|

integer = index.even? ? 1 : 0
integers_array << integer
end
integers_array
end

test
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

the output of which is:     
false [1, 0, 1, 0, 1, 0] compared to '101010'
false [1, 0, 1, 0, 1, 0, 1, 0, 1] compared to '101010101'
false [1, 0, 1, 0] compared to '1010'
false [1, 0, 1, 0, 1, 0, 1] compared to '1010101'

integers_array needs to become a string.
the array.join method will accomplish this.
syntax:
integers_array.join

Syntax:
def stringy(parameter)
  integers_array = []

  parameter.times do |index|
    integer = index.even? ? 1 : 0
    integers_array << integer
  end
  integers_array.join
end

Examples / Test Cases, Validate understanding of the problem:
def stringy(parameter)
  integers_array = []

  parameter.times do |index|
    integer = index.even? ? 1 : 0
    integers_array << integer
  end
  integers_array.join
end

tests:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
The tests above should print true.
this means:
if the output is not true for the tests run on the syntax then I do not understand the problem.

the output of which is:
true
true
true
true

the code works.

Data Structure, How we represent data that we will work with when converting the input to output:

Algorithm, Steps for converting input to output:

and Code.” Implementation of Algorithm:

=end