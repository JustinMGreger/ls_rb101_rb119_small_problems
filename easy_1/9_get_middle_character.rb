
def center_of(str)
  middle_index = str.length / 2
  if str.length.odd?
    middle_character = "'#{str[middle_index]}'"
  else
    middle_character = "'#{str[middle_index - 1..middle_index]}'"
  end
  puts middle_character
end
 
LS Solution:
def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end