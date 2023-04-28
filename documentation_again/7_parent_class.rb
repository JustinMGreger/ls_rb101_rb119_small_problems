=begin

Description of Exercise:
Use irb to run the following code:

s = 'abc'
puts s.public_methods.inspect

You should find that it prints a list of all of the public methods available to the String s; this includes not only those
methods defined in the String class, but also methods that are inherited from Object (which inherits other methods from 
the BasicObject class and the Kernel module). That's a lot of methods.

How would you modify this code to print just the public methods that are defined or overridden by the String class? That 
is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
 Identify expected input: 
 s = 'abc'
puts s.public_methods.inspect
 
 and output:
print just the public methods that are defined or overridden by the String class.
Exclude all members that are only defined in Object, BasicObject, and Kernel.

Syntax:
s = 'abc'





 Make the requirements explicit
 Identify rules
 Mental model of the problem (optional)

Examples / Test Cases, 
 Validate understanding of the problem

Data Structure, 
 How we represent data that we will work with when converting the input to output.

Algorithm, 
 Steps for converting input to output

and Code.” 
 Implementation of Algorithm


=end