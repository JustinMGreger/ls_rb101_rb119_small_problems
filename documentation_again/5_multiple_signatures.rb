=begin

Description of Exercise:
What do each of these puts statements output?

Initial Given Syntax:
a = %w(a b c d e)
puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

Explanation of Initial Given Syntax:

Syntax:
a = %w(a b c d e) 

Explanation:
a is a variable.
= means assignment.
%w is used to create an array of string literals, where each string is separated by whitespace.
(a b c d e) are string elements.
this means: 
the variable a is assigned to the (a b c d e) array of string literals, where each string is separated by whitespace 

Syntax:
puts a.fetch(7)

Explanation:
puts is put s which is put string which is print string to the screen.
a is a variable.
= means assignment.
%w is used to create an array of string literals, where each string is separated by whitespace.
(a b c d e) are string elements.
this means: 
the variable a is assigned to the (a b c d e) array of string literals, where each string is separated by whitespace 
.fetch method is used to retrieve the value of a specified key from a hash. 
(7) is a integer argument to the fetch method.
this means:
print to the screen the result of retrieving the value of integer 7 from the variable which a is assigned to the 
(a b c d e) array of string literals, where each string is separated by whitespace.
the output of which is:
`fetch': index 7 outside of array bounds: -5...5 (IndexError)
	from ruby.rb:2:in `<main>'

Syntax:
puts a.fetch(7, 'beats me')

Explanation:
puts is put s which is put string which is print string to the screen.
a is a variable.
= means assignment.
%w is used to create an array of string literals, where each string is separated by whitespace.
(a b c d e) are string elements.
this means: 
the variable a is assigned to the (a b c d e) array of string literals, where each string is separated by whitespace 
.fetch method is used to retrieve the value of a specified key from a hash. 
(7, 'beats me') are arguments to the fetch method where 7 is a integer and 'beats me' is a string.
this means:
print to the screen the retrieved value of the element at index 7 for the variable a is assigned to the (a b c d e) array
of string literals, where each string is separated by whitespace and if this fails then print to the screen the string
'beats me'.
the output of which is:
beats me







puts a.fetch(7) { |index| index**2 }


=end