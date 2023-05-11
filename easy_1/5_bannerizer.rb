=begin

Description of Exercise:
Write a method that will take a short line of text, and print it within a box.

Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.


PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
Identify expected input: 
a short line of text

and output:
print a short line of text within a box.

Make the requirements explicit Identify rules:
Write a method that will take a short line of text, and print it within a box.
Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

Mental model of the problem (optional):
Write a method that will take a short line of text, and print it within a box.
Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+
You may assume that the input will always fit in your terminal window.

Syntax:
def method
  take a short line of text, and print it within a box.
end

Instruction:
Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+ 1
|                                            | 2
| To boldly go where no one has gone before. | 3
|                                            | 4
+--------------------------------------------+ 5
print_in_box('')
+--+ 1
|  | 2
|  | 3
|  | 4
+--+ 5

Syntax:
def print_in_box()
  take a short line of text, and print it within a box.
end

5 rows on third row so centered?

Syntax:
def print_in_box()
  take a short line of text, center and print it within a box.
end

Examples / Test Cases, Validate understanding of the problem:
Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
print_in_box('')
+--+
|  |
|  |
|  |
+--+

Data Structure, How we represent data that we will work with when converting the input to output:
the box. not determined data structure no hashes or arrays are essential.

Algorithm, Steps for converting input to output:
1. Write a method that will take a short line of text, and print it within a box.

and Code.” Implementation of Algorithm:

def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

Syntax:
def print_in_box(message)
(message) is a parameter.

Explanation:
def means definition.
print_in_box is the method name.
this means:
the print_in_box method accepts the (message) parameter and is defined as follows:


   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

=end