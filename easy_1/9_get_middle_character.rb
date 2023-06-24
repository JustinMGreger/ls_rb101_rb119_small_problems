
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

Syntax:
    string[center_index]

Explanation:
string is a parameter
[center_index] this means extract the character in string at the index of center_index.
center_index is a variable
= means assignment
string is a parameter
.size means return the number of characters in the string.
/ is division.
2 is a integer.
this means:
the center_index variable is assigned the result of returning the number of characters in the string parameter then 
dividing that number by the integer 2.
this means:
extract the character in the string parameter at the index of the center_index variable which is assigned the result of 
returning the number of characters in the string parameter then dividing that number by the integer 2.

Syntax:
  else

Explanation:
if the above if false then execute the following code:

Syntax:
    string[center_index - 1, 2]

Explanation:
string is a parameter
[center_index - 1, 2] are two string arugments.
center_index - 1 is a string arugment specifies the starting index that contains the result of:
center_index is a variable
= means assignment
string is a parameter
.size means return the number of characters in the string.
/ is division.
2 is a integer.
this means:
the center_index variable is assigned the result of returning the number of characters in the string parameter then 
dividing that number by the integer 2.
- is subtraction.
1 is a integer.
2 is a string argument that specifies the length of the substring to be extracted.
this means:
extract a substring from the string parameter that starts at the position that is the result of the center_index variable
which is assigned the result of returning the number of characters in the string parameter then dividing that number by 
the integer 2 subtracted by 1 and has a length of 2.

Syntax:
  end

Explanation:
this is the last line of the else statement that is everything after this line is outside of the else statement.

end

this means compilation:
the center_of method accepts the (string) parameter and is defined as follows:
the center_index variable is assigned the result of returning the number of characters in the string parameter then 
dividing that number by the integer 2.
if the result of returning the number of characters in the string parameter and then return true if that integer is odd is
true then execute the following code:
extract the character in the string parameter at the index of the center_index variable which is assigned the result of 
returning the number of characters in the string parameter then dividing that number by the integer 2.
if the above if false then execute the following code:
extract a substring from the string parameter that starts at the position that is the result of the center_index variable
which is assigned the result of returning the number of characters in the string parameter then dividing that number by 
the integer 2 subtracted by 1 and has a length of 2.
this is the last line of the else statement that is everything after this line is outside of the else statement.