Write a method that takes a non-empty string argument, 
and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
PEDAC stands for “[Understand the] Problem, 
Identify expected input: 
a non-empty string argument

and output:
return the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

Make the requirements explicit Identify rules:
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.

Mental model of the problem (optional):
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. 
If the argument has an even length, you should return exactly two characters.
end method.
the middle character or characters are printed to the screen as a string.

Examples / Test Cases, Validate understanding of the problem:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

the center_of method is properly written if it passes the above tests.

Data Structure, How we represent data that we will work with when converting the input to output:
strings.

Algorithm, Steps for converting input to output:
1. center_of method takes a non-empty string argument, 
2. returns the middle character or characters of the argument. 
3. If the argument has an odd length, you should return exactly one character. 
4. If the argument has an even length, you should return exactly two characters.
5. end method.

and Code.” Implementation of Algorithm:

def center_of(str)
  middle_index = str.length / 2
  if str.length.odd?
    middle_character = "'#{str[middle_index]}'"
  else 
    middle_character = "'#{str[middle_index - 1..middle_index]}'"
  end
  puts middle_character
end  

test:
center_of('I love ruby') 

expected output:
'e'

actual output:
'e'
 
result:
success.

test:
center_of('Launch School') 

expected output:
' '

actual output:
' '
result:
success.

test:
center_of('Launch') 

expected output:
'un'

actual output:
\'un'

result:
something is wrong.

test:
center_of('Launchschool') 

expected output:
'hs'

actual output:

result:

test:
center_of('x') 

expected output:
'x'

actual output:

result: