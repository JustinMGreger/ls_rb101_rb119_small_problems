
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


  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

this means compilation:
the center_of method accepts the (string) parameter and is defined as follows: