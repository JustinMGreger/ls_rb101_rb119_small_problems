
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

Test:
center_of('I love ruby') 

expected output:
'e'

actual output:

result:

center_of('Launch School') 

expected output:
' '

actual output:

result:

center_of('Launch')

expected output:
'un'

actual output:

result:

center_of('Launchschool') 

expected output:
'hs'

actual output:

result:

center_of('x') 

expected output:
'x'

actual output:

result: