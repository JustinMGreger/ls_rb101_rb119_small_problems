=begin

Description of Exercise:
The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. 
Assume you have the following code:

Initial Given Syntax:
a = [1, 4, 8, 11, 15, 19]

Explanation of Initial Given Syntax:
a is a variable.
= means assignment.
[1, 4, 8, 11, 15, 19] is a array of integer elements.
this means the variable a is assigned the [1, 4, 8, 11, 15, 19] array of integer elements.

Description of Exercise:
How would you search this Array to find the first element whose value exceeds 8?

Syntax of Solution:
a = [1, 4, 8, 11, 15, 19]
value = a.bsearch { |element| element > 8 }
puts value


=end