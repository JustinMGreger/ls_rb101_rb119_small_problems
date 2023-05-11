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

Syntax:
   horizontal_rule = "+#{'-' * (message.size + 2)}+"

Explanation:
horizontal_rule is a variable.
= means assignment.
"+#{'-' * (message.size + 2)}+" is a string.
#{'-' * (message.size + 2)} is string interpolation.
- means -.
* means multiplication.
message is a parameter.
.size method is used to determine how many elements in a collection such as a array or string.
this means:
the variable horizontal_rule is assigned the result of the string interpolation where the number of how many elements are 
in the message parameter plus 2 is how many times the string - will be printed with the string + at the ends of the string.
the output of which is similair to:
+--+

Syntax:
   empty_line = "|#{' ' * (message.size + 2)}|"

Explanation:
empty_line is a variable.
= means assignment.
"|#{' ' * (message.size + 2)}|" is a string.
| means |.
#{' ' * (message.size + 2)} is string interpolation.
' ' is a space.
* means multiplication.
message is a parameter.
.size method is used to determine how many elements in a collection such as a array or string.
+ 2 means add 2.
this means:
the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains #{' ' * (message.size + 2)}
string interpolation where the ' ' space is multiplied by the result of determining how many elements are in the message 
parameter string and then adding 2 with the string | on each end of the string.
the output of which is similair to:
|  |

Syntax:
   puts horizontal_rule

Explanation:
puts is put s which is put string which means print to the screen the string.
horizontal_rule is a variable.
= means assignment.
"+#{'-' * (message.size + 2)}+" is a string.
#{'-' * (message.size + 2)} is string interpolation.
- means -.
* means multiplication.
message is a parameter.
.size method is used to determine how many elements in a collection such as a array or string.
this means:
the variable horizontal_rule is assigned the result of the string interpolation where the number of how many elements are 
in the message parameter plus 2 is how many times the string - will be printed with the string + at the ends of the string.
the output of which is similair to:
+--+
this means: print to the screen the variable horizontal_rule is assigned the result of the string interpolation where the
number of how many elements are in the message parameter plus 2 is how many times the string - will be printed with the 
string + at the ends of the string.
the output of which is similair to:
+--+

Syntax:
   puts empty_line

Explanation:
puts is put s which is put string which means print to the screen the string.
empty_line is a variable.
= means assignment.
"|#{' ' * (message.size + 2)}|" is a string.
| means |.
#{' ' * (message.size + 2)} is string interpolation.
' ' is a space.
* means multiplication.
message is a parameter.
.size method is used to determine how many elements in a collection such as a array or string.
+ 2 means add 2.
this means:
the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains #{' ' * (message.size + 2)}
string interpolation where the ' ' space is multiplied by the result of determining how many elements are in the message 
parameter string and then adding 2 with the string | on each end of the string.
the output of which is similair to:
|  |
this means:
print to the screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains 
#{' ' * (message.size + 2)} string interpolation where the ' ' space is multiplied by the result of determining how many 
elements are in the message parameter string and then adding 2 with the string | on each end of the string.
the output of which is similair to:
|  |

Syntax:
   puts "| #{message} |"

Explanation:
puts is put s which is put string which means print to the screen the string.
"| #{message} |" is a string.
#{message} is string interpolation.
message is a parameter.
this means:
print to the screen the string interpolation of the message parameter.
the output of which is similair to:
+--------+
|        |
| string |
|        |
+--------+

Syntax:
   puts empty_line

Explanation:
puts is put s which is put string which means print to the screen the string.
empty_line is a variable.
= means assignment.
"|#{' ' * (message.size + 2)}|" is a string.
| means |.
#{' ' * (message.size + 2)} is string interpolation.
' ' is a space.
* means multiplication.
message is a parameter.
.size method is used to determine how many elements in a collection such as a array or string.
+ 2 means add 2.
this means:
the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains #{' ' * (message.size + 2)}
string interpolation where the ' ' space is multiplied by the result of determining how many elements are in the message 
parameter string and then adding 2 with the string | on each end of the string.
the output of which is similair to:
|  |
this means:
print to the screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains 
#{' ' * (message.size + 2)} string interpolation where the ' ' space is multiplied by the result of determining how many 
elements are in the message parameter string and then adding 2 with the string | on each end of the string.
the output of which is similair to:
|  |

Syntax:
   puts horizontal_rule

Explanation:
   puts horizontal_rule

Explanation:
puts is put s which is put string which means print to the screen the string.
horizontal_rule is a variable.
= means assignment.
"+#{'-' * (message.size + 2)}+" is a string.
#{'-' * (message.size + 2)} is string interpolation.
- means -.
* means multiplication.
message is a parameter.
.size method is used to determine how many elements in a collection such as a array or string.
this means:
the variable horizontal_rule is assigned the result of the string interpolation where the number of how many elements are 
in the message parameter plus 2 is how many times the string - will be printed with the string + at the ends of the string.
the output of which is similair to:
+--+
this means: print to the screen the variable horizontal_rule is assigned the result of the string interpolation where the
number of how many elements are in the message parameter plus 2 is how many times the string - will be printed with the 
string + at the ends of the string.
the output of which is similair to:
+--+

Syntax:
end

Explanation:
this is the last line of the print_in_box method that is everything after this line is outside of the print_in_box method.

this all means:
the print_in_box method accepts the (message) parameter and is defined as follows: the variable horizontal_rule is 
assigned the result of the string interpolation where the number of how many elements are in the message parameter plus 2
is how many times the string - will be printed with the string + at the ends of the string and the output of which is 
similair to: +--+, the variable empty_line which is assigned the "|#{' ' * (message.size + 2)}|" string which contains 
#{' ' * (message.size + 2)} string interpolation where the ' ' space is multiplied by the result of determining how many 
elements are in the message parameter string and then adding 2 with the string | on each end of the string and the output 
of which is similair to: |  |, print to the screen the variable horizontal_rule is assigned the result of the string 
interpolation where the number of how many elements are in the message parameter plus 2 is how many times the string - 
will be printed with the string + at the ends of the string and the output of which is similair to: +--+, the variable 
empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains #{' ' * (message.size + 2)} string 
interpolation where the ' ' space is multiplied by the result of determining how many elements are in the message 
parameter string and then adding 2 with the string | on each end of the string and the output of which is similair to: 
|  |, print to the screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains 
#{' ' * (message.size + 2)} string interpolation where the ' ' space is multiplied by the result of determining how many 
elements are in the message parameter string and then adding 2 with the string | on each end of the string and the output 
of which is similair to: |  |, print to the screen the string interpolation of the message parameter and the output of 
which is similair to:
+--------+
|        |
| string |
|        |
+--------+, print to the screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which 
contains #{' ' * (message.size + 2)} string interpolation where the ' ' space is multiplied by the result of determining 
how many elements are in the message parameter string and then adding 2 with the string | on each end of the string and
the output of which is similair to: |  |, print to the screen the variable horizontal_rule is assigned the result of the 
string interpolation where the number of how many elements are in the message parameter plus 2 is how many times the 
string - will be printed with the string + at the ends of the string and the output of which is similair to: +--+ and 
this is the last line of the print_in_box method that is everything after this line is outside of the print_in_box method.

test 01:
print_in_box('To boldly go where no one has gone before.')

Expected output:
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

actual output:
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

result:
the code works.

test 02:
print_in_box('')

Expected output:
+--+
|  |
|  |
|  |
+--+

actual output:
+--+
|  |
|  |
|  |
+--+

result:
the code works.

=end