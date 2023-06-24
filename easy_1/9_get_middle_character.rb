
Syntax:
def center_of(str)
  middle_index = str.length / 2
  if str.length.odd?
    middle_character = "'#{str[middle_index]}'"
  else
    middle_character = "'#{str[middle_index - 1..middle_index]}'"
  end
  puts middle_character
end
 
Explanation of Syntax:


Syntax
LS Solution:
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end
 
Explanation of Syntax:

Syntax:
def center_of(string)

Explanation:
def is definition
center_of is a method.
(string) is a parameter.
this means:
the center_of method accepts the (string) parameter and is defined as follows:

Syntax:
  center_index = string.size / 2

Explanation:
center_index is a variable
= means assignment
string is a parameter
.size means return the number of characters in the string.
/ is division.
2 is a integer.
this means:
the center_index variable is assigned the result of returning the number of characters in the string parameter then 
dividing that number by the integer 2.

Syntax:
  if string.size.odd?

Explanation:
if means if a condition is true then execute the code:
string is a parameter
.size means return the number of characters in the string.
.odd? return true if integer is odd.
this means:
if the result of returning the number of characters in the string parameter and then return true if that integer is odd is
true then execute the following code:



    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

this means compilation:
the center_of method accepts the (string) parameter and is defined as follows:
the center_index variable is assigned the result of returning the number of characters in the string parameter then 
dividing that number by the integer 2.
if the result of returning the number of characters in the string parameter and then return true if that integer is odd is
true then execute the following code: