=begin

Description of Exercise:
Consider the following method and a call to that method:

Initial Syntax Given:
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

Description of Exercise:
Use the ruby documentation to determine what this code will print.

Explanation of Initial Syntax Given:

Syntax:
def my_method(a, b = 2, c = 3, d)

Explanation:
def means definition.
my_method is a method.
(a, b = 2, c = 3, d) are parameters.
a is a parameter without a assigned value.
b is a parameter assigned the integer 2.
c is a parameter assigned the integer 3.
d is a paramter without a assigned value.
this means: 
the my_method method accepts the (a, b = 2, c = 3, d) parameters which contain: the a parameter which is not assigned a 
value, the b parameter which is assigned the integer 2, the c parameter which is assigned the integer 3, and the d 
paramter which is not assigned a value.

Syntax:
  p [a, b, c, d]

Explanation:
p means output.
[a, b, c, d] are a array of parameter elements where the a parameter which is not assigned a value, the b parameter which 
is assigned the integer 2, the c parameter which is assigned the integer 3, and the d paramter which is not assigned a 
value.
this means:
output the [a, b, c, d] array of parameter elements where the a parameter which is not assigned a value, the b parameter 
which is assigned the integer 2, the c parameter which is assigned the integer 3, and the d paramter which is not assigned 
a value.

syntax:
end

Explanation:
this is the last line of the my_method method that is everything after this line is outside of the my_method method.

=end