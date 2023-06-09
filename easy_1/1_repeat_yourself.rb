=begin

Description of Exercise:
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the 
integer indicates.

Example:
repeat('Hello', 3)

Output:
Hello
Hello
Hello

PEDAC stands for “[Understand the] Problem, 
Identify expected input:
Write a method that takes two arguments, a string and a positive integer
 
and output:
print the string as many times as the integer indicates.
 
Make the requirements explicit Identify rules:
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the 
integer indicates.

Mental model of the problem (optional):
Example:
repeat('Hello', 3)

Output:
Hello
Hello
Hello

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the 
integer indicates.

syntax:
repeat('Hello', 3)

explanation:
repeat is a method.
('Hello', 3) are arguments that is a string and a integer.
this means:
repeat calls the repeat method that accepts the ('Hello', 3) arguments where 'Hello' is a string and 3 is a integer.
the syntax is similar to:
def repeat(string, integer)

Syntax:
Hello
Hello
Hello

Explanation:
Hello is a string that has been printed to the screen 3 times.
Hello is a string.
printed to the screen is puts.
3 is a integer.
times is the .times method.
which would be:
puts string integer.times
the syntax is similar to:
integer.times do
  puts string
end

combining both:
def repeat(string, integer)
integer.times do
  puts string
end

refactoring it:
def repeat(string, integer)
  integer.times do
    puts string
  end
end

refactored with the original example as a call:
def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)

the output of which is:
Hello
Hello
Hello

Examples / Test Cases, Validate understanding of the problem:
if this is correct then the output will match.

Data Structure, How we represent data that we will work with when converting the input to output.
not determined.

Algorithm, Steps for converting input to output:
1. the repeat method accepts two parameters of which 1 is a string and 1 is a integer.
2. define the repeat method as printing the string a integer amount of times.
3. call the repeat method and pass th arguments ('Hello', 3).

and Code.” Implementation of Algorithm:

 def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)

the output of which is:
Hello
Hello
Hello

this matches the original output which is:
Hello
Hello
Hello

=end