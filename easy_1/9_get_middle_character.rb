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




  middle_index = str.length / 2
  middle_character = if str.length.odd?
                       "'#{str[middle_index]}'"
                     else
                       "'#{str[middle_index - 1..middle_index]}'"
                     end
  puts middle_character
end

this means compilation:
the center_of method accepts the (str) parameter and is defined as the following: