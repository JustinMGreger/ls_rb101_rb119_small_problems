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

Syntax:
print_in_box('To boldly go where no one has gone before.')

Explanation:
print_in_box is a method.
('To boldly go where no one has gone before.') is a argument passed to the method.

the implied syntax:
def print_in_box(parameter)
  stuff
end

Syntax:
+--------------------------------------------+
+--------------------------------------------+

Explanation:
this is printed to the screen which means puts which is put s which is put string which means print to the screen the 
string.
rows 1 & 5 are the same.
+--------------------------------------------+ is a string.
+ is the first character of the string.
- is a dash symbol that goes from one end of the string to the other.
+ is the last character of the string.
this means:
print to the screen the +--------------------------------------------+ string which opens with the + character and - is a 
dash symbol that goes from one end of the string to the other and ends with the + character.

the implied syntax:
puts '+--------------------------------------------+'

Syntax:
|                                            |
|                                            |

Explanation:
this is printed to the screen which means puts which is put s which is put string which means print to the screen the 
string.
rows 2 & 4 are the same.
|                                            | is a string.
| is the first character of the string.
' ' is the blank space character goes from one end of the string to the other.
|is the last character of the string.
this means:
print to the screen the |                                            | string which opens with the | character and ' ' is 
the blank space character goes from one end of the string to the other and ends with the | character.

the implied syntax:
puts '|                                            |'


Syntax:
| To boldly go where no one has gone before. | 

Explanation:
this is printed to the screen which means puts which is put s which is put string which means print to the screen the 
string.
this is row 3.
| To boldly go where no one has gone before. | is a string.
| is the first character of the string.
' ' is the blank space character.
To boldly go where no one has gone before. is the argument passed to the method which is the paramter.
' ' is the blank space character.
|is the last character of the string.
this means:
print to the screen the | To boldly go where no one has gone before. | string which contains: the | first character of the
string and the ' ' blank space character and To boldly go where no one has gone before. which is the argument passed to 
the method which is the paramter and the ' ' blank space character and the | which is the last character of the string.

the implied syntax:
puts '| To boldly go where no one has gone before. |'










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

Further Exploration:
Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window 
(80 columns, including the sides of the box). 
For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.

2 columns on each side = 4 columns on the side.
80 columns - 4 columns = 76 columns of the message.

Syntax of Solution:
def print_in_box(message)
  max_width = 76 

  if message.length > max_width
    message = message[0..(max_width-4)] + '...'
  end

  if message.length > max_width
    words = message.split(' ')
    lines = ['']
    words.each do |word|
      if (lines[-1] + word).length > max_width
        lines << ''
      end
      lines[-1] += word + ' '
    end
    message = lines.join("\n").strip
  end

  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

Explanation of Syntax of Solution:
Syntax:
def print_in_box(message)

Explanation:
def means definition.
print_in_box is a method.
(message) is a parameter.
this means:
the print_in_box method accepts the (message) parameter and is defined as:

Syntax:
  max_width = 76 

Explanation:
max_width is a varaible.
= means assignment.
76 is a integer.
this means:
the variable max_width is assigned the integer 76.

Syntax:
  if message.length > max_width

Explanation:
if means if a condition is true then execute the code.
message is a parameter.
.length method returns the count of elements.
> means greater than.
max_width is a varaible.
= means assignment.
76 is a integer.
this means:
the variable max_width is assigned the integer 76.
this means:
if the message parameter's count of elements is greater than the variable max_width which is assigned the integer 76
then execute the code.

Syntax:
    message = message[0..(max_width-4)] + '...'

Explanation:
message is a parameter.
= means assignment.
message is a parameter.
[0..(max_width-4)]
.. means the range of indices of the characters that should be included in the substring.
max_width is a varaible.
= means assignment.
76 is a integer.
this means:
the variable max_width is assigned the integer 76.
- 4 means subtract 4.
+ means concatenate/
'...' is a string.
this means:
the message parameter is assigned the result of the message parameter substring reduced to a count of elements equal to 
the range of indices of the characters that should be included in the substring which are the variable max_width which is
assigned the integer 76 subtracted by 4 which is 72 whose ending is concatenated with the '...'string.

Syntax:
  end

Explanation:
this is the last line of the if statement that is everything after this line is outside of the if statement.

Syntax:
  if message.length > max_width

Explanation:
if means if a condition is true then execute the code.
message is a parameter.
.length method returns the count of elements.
> means greater than.
max_width is a varaible.
= means assignment.
76 is a integer.
this means:
the variable max_width is assigned the integer 76.
this means:
if the message parameter's count of elements is greater than the variable max_width which is assigned the integer 76
then execute the code.

Syntax:
    words = message.split(' ')

Explanation:
words is a variable.
= means assignment.
message is a parameter.
.split method means seperate the string into substrings based on a specific character.
(' ') means split into an array of substrings where each substring is separated by a space character. 
this means:
the variable words is assigned the result of spliting the message parameter into an array of substrings where each 
substring is separated by a space character.

Syntax:
    lines = ['']

Explanation:
lines is a variable.
= means assignment.
[''] is a array with a empty string element.
this means:
the variable lines is assigned a array with a empty string element.

Syntax:
    words.each do |word|

Explanation
words is a variable.
= means assignment.
message is a parameter.
.split method means seperate the string into substrings based on a specific character.
(' ') means split into an array of substrings where each substring is separated by a space character. 
this means:
the variable words is assigned the result of spliting the message parameter into an array of substrings where each 
substring is separated by a space character.
.each method applies a block of code to each element in a collection.
do means open block of code.
|word| are the elements in the words array.
this means:
the variable words is assigned the result of spliting the message parameter into an array of substrings where each 
substring is separated by a space character then apply the block of code to each word element in the words array.

Syntax:
      if (lines[-1] + word).length > max_width

Explanation:
if statements mean if a condition is boolean true then execute the code.
the condition being evaluated is (lines[-1] + word).length > max_width
lines is a variable.
= means assignment.
[''] is a array with a empty string element.
this means:
the variable lines is assigned a array with a empty string element.
[-1] means access the last element of an array.
+ means concatenation.
|word| are the elements in the words array.
.length method returns the amount of characters in a string or array.
> greater than.
max_width is a varaible.
= means assignment.
76 is a integer.
this means:
the variable max_width is assigned the integer 76.
this means:
determine if the variable lines which is assigned a array with a empty string element access the last element of that 
array and concatenate the elements in the words array and return the amount of characters in this array is greater than 
the variable max_width which is assigned the integer 76 and if that is true then execute the following code:

Syntax:
        lines << ''

Explanation:
lines is a variable.
= means assignment.
[''] is a array with a empty string element.
this means:
the variable lines is assigned a array with a empty string element.
<< means append to the end of the array.
'' means a empty string element.
this means:
append a empty string element to the end of the variable lines which is assigned a array with a empty string element.

Syntax:
      end

Explanation:
this is the last line of the if statement that is everything after this line is outside of the if statement.

Syntax:
      lines[-1] += word + ' '

Explanation:
lines is a variable.
= means assignment.
[''] is a array with a empty string element.
this means:
the variable lines is assigned a array with a empty string element.
[-1] means access the last element of an array.
+= means reassign a variable by adding or concatenating it with another value back to the original variable.
|word| are the elements in the words array.
+ means concatenation.
' ' is a string literal that represents a single space character.
this means:
access the last element of the variable lines which is assigned a array with a empty string element then concatenate the 
word elements in the words array and a string literal that represents a single space character to it and then assign the
result back to the last element of the lines array.

Syntax:
    end

Explanation:
this is the last line of the .each method that is everything after this is outside of the .each method.

Syntax:
    message = lines.join("\n").strip

Explanation:
message is a parameter.
= means assignment.
lines is a variable.
= means assignment.
[''] is a array with a empty string element.
this means:
the variable lines is assigned a array with a empty string element.
.join method combines the elements of a array into a single string.
("\n") means new line character specifically at the \ the following portion of the string is on a new line.
.strip method removes whitespace characters from the beginning and end of a string. 
this means:
the message parameter is assigned the variable lines which is assigned a array with a empty string element which combines 
the elements of a array into a single string and into multiple lines then remove the whitespace characters from the 
beginning and end of the strings.

Syntax:
  end

Explanation:
this is the last line of the if statement that is everything after this line is outside of the if statement.

Syntax:
  horizontal_rule = "+#{'-' * (message.size + 2)}+"

Explanation:
horizontal_rule is a variable.
= means assignment.
"+#{'-' * (message.size + 2)}+" is a string.
+ means concatenation.
#{'-' * (message.size + 2)} is string interpolation.
'-' is a hyphen.
* means multiplication.
(message.size + 2) is what is being used to multiply hyphen by.
message is a parameter.
.size method determines the amount of characters in a enumerable object.
+ is addition.
2 is a integer.
+ means concatenation.
this means:
the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" string which contains string concatenation
and #{'-' * (message.size + 2)} string interpolation where the hyphen character is multiplied by sum of the amount of 
characters in the message parameter which has the integer 2 is added to it which is then concatenated.

Syntax:
  empty_line = "|#{' ' * (message.size + 2)}|"

Explanation:
empty_line is a variable.
= means assignment.
"|#{' ' * (message.size + 2)}|" is a string.
| is a frame string.
#{' ' * (message.size + 2)} is string interpolation.
' ' is a single space character.
* means multiplication.
(message.size + 2) is that which is being multiplied.
message is a parameter.
.size method determines the amount of characters in a enumerable object.
+ is addition.
2 is a integer.
| is a frame string.
this means:
the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the frame string and
#{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by the result of 
determining the amount of characters in the message parameter which is increased by the integer 2 which has the frame 
string at the end.

Syntax:
  puts horizontal_rule

Explanation:
puts is put s which is put string which means print to the screen the string.
horizontal_rule is a variable.
= means assignment.
"+#{'-' * (message.size + 2)}+" is a string.
+ means concatenation.
#{'-' * (message.size + 2)} is string interpolation.
'-' is a hyphen.
* means multiplication.
(message.size + 2) is what is being used to multiply hyphen by.
message is a parameter.
.size method determines the amount of characters in a enumerable object.
+ is addition.
2 is a integer.
+ means concatenation.
this means:
the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" string which contains string concatenation
and #{'-' * (message.size + 2)} string interpolation where the hyphen character is multiplied by sum of the amount of 
characters in the message parameter which has the integer 2 is added to it which is then concatenated.
this means:
print to the screen the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" string which contains 
string concatenation and #{'-' * (message.size + 2)} string interpolation where the hyphen character is multiplied by sum
of the amount of characters in the message parameter which has the integer 2 is added to it which is then concatenated.

Syntax:
  puts empty_line

Explanation:
puts is put s which is put string which means print to the screen the string.
empty_line is a variable.
= means assignment.
"|#{' ' * (message.size + 2)}|" is a string.
| is a frame string.
#{' ' * (message.size + 2)} is string interpolation.
' ' is a single space character.
* means multiplication.
(message.size + 2) is that which is being multiplied.
message is a parameter.
.size method determines the amount of characters in a enumerable object.
+ is addition.
2 is a integer.
| is a frame string.
this means:
the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the frame string and
#{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by the result of 
determining the amount of characters in the message parameter which is increased by the integer 2 which has the frame 
string at the end.
this means:
print to the screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the 
frame string and #{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by 
the result of determining the amount of characters in the message parameter which is increased by the integer 2 which has 
the frame string at the end.

Syntax:
  puts "| #{message} |"

Explanation:
puts is put s which is put string which means print to the screen the string.
"| #{message} |" is a string.
| is a frame string.
#{message} is string interpolation.
message is a parameter.
| is a frame string.
this means:
print to the screen the "| #{message} |" string which begins with a frame string and contains #{message} string 
interpolation of which message is a parameter and ends with a frame string.

Syntax:
  puts empty_line

Explanation:
puts is put s which is put string which means print to the screen the string.
empty_line is a variable.
= means assignment.
"|#{' ' * (message.size + 2)}|" is a string.
| is a frame string.
#{' ' * (message.size + 2)} is string interpolation.
' ' is a single space character.
* means multiplication.
(message.size + 2) is that which is being multiplied.
message is a parameter.
.size method determines the amount of characters in a enumerable object.
+ is addition.
2 is a integer.
| is a frame string.
this means:
the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the frame string and
#{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by the result of 
determining the amount of characters in the message parameter which is increased by the integer 2 which has the frame 
string at the end.
this means:
print to the screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the 
frame string and #{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by 
the result of determining the amount of characters in the message parameter which is increased by the integer 2 which has 
the frame string at the end.

Syntax:
  puts horizontal_rule

Explanation:
puts is put s which is put string which means print to the screen the string.
horizontal_rule is a variable.
= means assignment.
"+#{'-' * (message.size + 2)}+" is a string.
+ means concatenation.
#{'-' * (message.size + 2)} is string interpolation.
'-' is a hyphen.
* means multiplication.
(message.size + 2) is what is being used to multiply hyphen by.
message is a parameter.
.size method determines the amount of characters in a enumerable object.
+ is addition.
2 is a integer.
+ means concatenation.
this means:
the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" string which contains string concatenation
and #{'-' * (message.size + 2)} string interpolation where the hyphen character is multiplied by sum of the amount of 
characters in the message parameter which has the integer 2 is added to it which is then concatenated.
this means:
print to the screen the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" string which contains 
string concatenation and #{'-' * (message.size + 2)} string interpolation where the hyphen character is multiplied by sum
of the amount of characters in the message parameter which has the integer 2 is added to it which is then concatenated.

Syntax:
end

Explanation:
this is the last line of the print_in_box method that is everything after this line is outside of the print_in_box method.

this all means:
the print_in_box method accepts the (message) parameter and is defined as: the variable max_width is assigned the integer
76 and if the message parameter's count of elements is greater than the variable max_width which is assigned the integer 
76 then execute the code: the message parameter is assigned the result of the message parameter substring reduced to a 
count of elements equal to the range of indices of the characters that should be included in the substring which are the 
variable max_width which is assigned the integer 76 subtracted by 4 which is 72 whose ending is concatenated with the 
'...'string and this is the last line of the if statement that is everything after this line is outside of the if 
statement and if the message parameter's count of elements is greater than the variable max_width which is assigned the 
integer 76 then execute the code: the variable words is assigned the result of spliting the message parameter into an 
array of substrings where each substring is separated by a space character and the variable lines is assigned a array with
a empty string element and the variable words is assigned the result of spliting the message parameter into an array of 
substrings where each substring is separated by a space character then apply the block of code to each word element in the
words array and determine if the variable lines which is assigned a array with a empty string element access the last 
element of that array and concatenate the elements in the words array and return the amount of characters in this array is
greater than the variable max_width which is assigned the integer 76 and if that is true then execute the following code:
append a empty string element to the end of the variable lines which is assigned a array with a empty string element and
this is the last line of the if statement that is everything after this line is outside of the if statement and access the
last element of the variable lines which is assigned a array with a empty string element then concatenate the word 
elements in the words array and a string literal that represents a single space character to it and then assign the result
back to the last element of the lines array and this is the last line of the .each method that is everything after this is
outside of the .each method and the message parameter is assigned the variable lines which is assigned a array with a 
empty string element which combines the elements of a array into a single string and into multiple lines then remove the 
whitespace characters from the beginning and end of the strings and this is the last line of the if statement that is 
everything after this line is outside of the if statement and the variable horizontal_rule is assigned the 
"+#{'-' * (message.size + 2)}+" string which contains string concatenation and #{'-' * (message.size + 2)} string 
interpolation where the hyphen character is multiplied by sum of the amount of characters in the message parameter which 
has the integer 2 is added to it which is then concatenated and the variable empty_line is assigned the 
"|#{' ' * (message.size + 2)}|" string which contains the frame string and #{' ' * (message.size + 2)} string 
interpolation which contains the single space character multiplied by the result of determining the amount of characters 
in the message parameter which is increased by the integer 2 which has the frame string at the end and print to the screen
the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" string which contains string concatenation 
and #{'-' * (message.size + 2)} string interpolation where the hyphen character is multiplied by sum of the amount of 
characters in the message parameter which has the integer 2 is added to it which is then concatenated and print to the 
screen the variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the frame string and 
#{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by the result of 
determining the amount of characters in the message parameter which is increased by the integer 2 which has the frame 
string at the end and print to the screen the "| #{message} |" string which begins with a frame string and contains 
#{message} string interpolation of which message is a parameter and ends with a frame string and print to the screen the 
variable empty_line is assigned the "|#{' ' * (message.size + 2)}|" string which contains the frame string and 
#{' ' * (message.size + 2)} string interpolation which contains the single space character multiplied by the result of 
determining the amount of characters in the message parameter which is increased by the integer 2 which has the frame 
string at the end and print to the screen the variable horizontal_rule is assigned the "+#{'-' * (message.size + 2)}+" 
string which contains string concatenation and #{'-' * (message.size + 2)} string interpolation where the hyphen character 
is multiplied by sum of the amount of characters in the message parameter which has the integer 2 is added to it which is
then concatenated and this is the last line of the print_in_box method that is everything after this line is outside of 
the print_in_box method.

test:
def print_in_box(message)
  max_width = 76 

  if message.length > max_width
    message = message[0..(max_width-4)] + '...'
  end

  if message.length > max_width
    words = message.split(' ')
    lines = ['']
    words.each do |word|
      if (lines[-1] + word).length > max_width
        lines << ''
      end
      lines[-1] += word + ' '
    end
    message = lines.join("\n").strip
  end

  horizontal_rule = "+#{'-' * (message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box '!"#$%&\()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~;'

the output of which is:
+------------------------------------------------------------------------------+
|                                                                              |
| !"#$%&\()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghi... |
|                                                                              |
+------------------------------------------------------------------------------+

=end