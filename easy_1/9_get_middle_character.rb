# frozen_string_literal: true

def center_of(str)
  middle_index = str.length / 2
  middle_character = if str.length.odd?
                       "'#{str[middle_index]}'"
                     else
                       "'#{str[middle_index - 1..middle_index]}'"
                     end
  puts middle_character
end

Explanation of Syntax:
Syntax:
def center_of(str)

Explanation:
def means definition.
center_of is a method.
(str) is a parameter.
this means:
the center_of method accepts the (str) parameter and is defined as the following:



Syntax:
  middle_index = str.length / 2

Explanation:
middle_index is a variable.
= is assignment.
str is a parameter.
.length returns the number of characters in a string.
/ is division.
2 is a integer.
this means:
the middle_index variable is assigned the result of returning the number of characters in the str parameter that is then
divided by the integer 2.

Syntax:
  middle_character = if str.length.odd?

Explanaiton:
middle_character is a variable.
= is assignment.
if means if a condition is boolean true then execute the following code:
str is a parameter.
.length returns the number of characters in a string.
.odd? returns boolean true if a number is odd.
this means:
the middle_character variable is assigned the result of: if return boolean true if the result of returning the number of 
characters in the str parameter is odd is boolean true then execute the following code:

Syntax:  
"'#{str[middle_index]}'"

Explanation:
"'#{str[middle_index]}'" is a string which contains:
'#{str[middle_index]}' is a string which contains:
#{str[middle_index]} string interpolation which contains:
str[middle_index] means extract the character in str at index middle_index which contains:
str is a parameter. 
[middle_index] means extract at the middle_index index which contains:
middle_index is a variable.
= is assignment.
str is a parameter.
.length returns the number of characters in a string.
/ is division.
2 is a integer.
this means:
the middle_index variable is assigned the result of returning the number of characters in the str parameter that is then
divided by the integer 2.
this means:
the "'#{str[middle_index]}'" string contains: the '#{str[middle_index]}' string which contains: #{str[middle_index]} 
string interpolation which contains: the result of extracting the character at the [middle_index] index which contains: 
the middle_index variable which is assigned the result of returning the number of characters in the str parameter that is 
then divided by the integer 2 of the str parameter.

Syntax:
                     else

Explanaiton:
if the above are boolean false then execute the following code:

Syntax:
                       "'#{str[middle_index - 1..middle_index]}'"

Explanaiton:
"'#{str[middle_index - 1..middle_index]}'" is a string which contains:
'#{str[middle_index - 1..middle_index]}' is a string which contains:
#{str[middle_index - 1..middle_index]} is string interpolation which contains:
str[middle_index - 1..middle_index] means extract a sub string at the range that starts at middle_index - 1 and ends at 
middle_index from str which contains:
str is a parameter.
[middle_index - 1..middle_index] means extract a sub string at the range that starts at middle_index - 1 and ends at 
middle_index which contains:
middle_index is a variable.
= is assignment.
str is a parameter.
.length returns the number of characters in a string.
/ is division.
2 is a integer.
this means:
the middle_index variable is assigned the result of returning the number of characters in the str parameter that is then
divided by the integer 2.
- is subtraction.
1 is a integer.
.. means inclusive range.
middle_index is a variable.
= is assignment.
str is a parameter.
.length returns the number of characters in a string.
/ is division.
2 is a integer.
this means:
the middle_index variable is assigned the result of returning the number of characters in the str parameter that is then
divided by the integer 2.
this means:
the "'#{str[middle_index - 1..middle_index]}'" string contains: the '#{str[middle_index - 1..middle_index]}' string which
contains: the #{str[middle_index - 1..middle_index]} string interpolation which contains the result of: 
str[middle_index - 1..middle_index] which means extract a sub string at the range that starts at and includes the result 
of the middle_index variable which is assigned the result of returning the number of characters in the str parameter that
is then divided by the integer 2 subtracted by 1 that ends with and includes the middle_index variable which is assigned 
the result of returning the number of characters in the str parameter that is then divided by the integer 2 from the str 
parameter which closes the string interpolation which closes the string which closes the string.

                     end
  puts middle_character
end

this means compilation:
the center_of method accepts the (str) parameter and is defined as the following:
the middle_index variable is assigned the result of returning the number of characters in the str parameter that is then
divided by the integer 2.
the middle_character variable is assigned the result of: if return boolean true if the result of returning the number of 
characters in the str parameter is odd is boolean true then execute the following code:
the "'#{str[middle_index]}'" string contains: the '#{str[middle_index]}' string which contains: #{str[middle_index]} 
string interpolation which contains: the result of extracting the character at the [middle_index] index which contains: 
the middle_index variable which is assigned the result of returning the number of characters in the str parameter that is 
then divided by the integer 2 of the str parameter.
if the above are boolean false then execute the following code:
the "'#{str[middle_index - 1..middle_index]}'" string contains: the '#{str[middle_index - 1..middle_index]}' string which
contains: the #{str[middle_index - 1..middle_index]} string interpolation which contains the result of: 
str[middle_index - 1..middle_index] which means extract a sub string at the range that starts at and includes the result 
of the middle_index variable which is assigned the result of returning the number of characters in the str parameter that
is then divided by the integer 2 subtracted by 1 that ends with and includes the middle_index variable which is assigned 
the result of returning the number of characters in the str parameter that is then divided by the integer 2 from the str 
parameter which closes the string interpolation which closes the string which closes the string.