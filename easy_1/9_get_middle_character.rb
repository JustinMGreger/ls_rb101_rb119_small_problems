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





  middle_character = if str.length.odd?
                       "'#{str[middle_index]}'"
                     else
                       "'#{str[middle_index - 1..middle_index]}'"
                     end
  puts middle_character
end

this means compilation:
the center_of method accepts the (str) parameter and is defined as the following:
the middle_index variable is assigned the result of returning the number of characters in the str parameter that is then
divided by the integer 2.