=begin

Description of Exercise:
Use irb to run the following code:

Initial Given Syntax:
a = [5, 9, 3, 11]
puts a.min

Explanation of Initial Given Syntax:

Syntax:
a = [5, 9, 3, 11]

Explanation:
a is a variable.
= means assignment.
[5, 9, 3, 11] is a array of integers.
this means: 
the variable a is assigned the [5, 9, 3, 11] array of integers.

Syntax:
puts a.min

Explanation:
puts means put s which is put string which is print to the screen the string.
a is a variable.
= means assignment.
[5, 9, 3, 11] is a array of integers.
this means: 
the variable a is assigned the [5, 9, 3, 11] array of integers.
.min method returns the minimum value.
this means:
print to the screen the variable a which is assigned the [5, 9, 3, 11] array of integers that calls the .min method which 
returns the minimum value.
the output of which is:
3

Description of Exercise:
Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
 Identify expected input:
a = [5, 9, 3, 11]
puts a.min
 
and output:
print the two smallest values in the Array.

Make the requirements explicit Identify rules:
the following code prints the smallest value in the Array.
a = [5, 9, 3, 11]
puts a.min
Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

Mental model of the problem (optional):
the following code prints the smallest value in the Array.

a = [5, 9, 3, 11]

Syntax:
a = [5, 9, 3, 11]

Explanation:
a is a variable.
= means assignment.
[5, 9, 3, 11] is a array of integers.
this means: 
the variable a is assigned the [5, 9, 3, 11] array of integers.

Syntax:
puts a.min

Explanation:
puts means put s which is put string which is print to the screen the string.
a is a variable.
= means assignment.
[5, 9, 3, 11] is a array of integers.
this means: 
the variable a is assigned the [5, 9, 3, 11] array of integers.
.min method returns the minimum value.
this means:
print to the screen the variable a which is assigned the [5, 9, 3, 11] array of integers that calls the .min method which 
returns the minimum value.
the output of which is:
3

Find the documentation for the #min method and change the above code to print the two smallest values in the Array.
According to https://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-min   :
.min method is defined as:
Returns the object in enum with the minimum value.
If the n argument is given, minimum n elements are returned as an array.
An example is given:
a = %w[albatross dog horse]
a.min(2)                                  #=> ["albatross", "dog"]

potential solution:
a = [5, 9, 3, 11]
puts a.min(2)
could print the two smallest values in the Array.

Examples / Test Cases, Validate understanding of the problem:
If:
a = [5, 9, 3, 11]
puts a.min(1)
prints the same result as the original code then my understanding of the problem is correct.
If this is not so then my then my understanding of the problem is incorrect.

If: 
a = [5, 9, 3, 11]
puts a.min(2)
prints the two smallest values in the Array then my understanding of the problem and solution is correct.
If this is not so then my then my understanding of the problem and solution is incorrect.

Data Structure, How we represent data that we will work with when converting the input to output:
Array.

Algorithm, Steps for converting input to output:
1. create the variable a.
2. create a array of integer elements containting 5, 9, 3, 11.
3. assignt that array to the variable a.
4. print to the screen the minimum 2 elements as a array from the variable a.

and Code.”  Implementation of Algorithm:

a = [5, 9, 3, 11]
puts a.min(2)

the output of which is:
3
5

=end