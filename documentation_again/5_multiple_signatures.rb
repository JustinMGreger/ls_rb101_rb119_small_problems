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

puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }


=end