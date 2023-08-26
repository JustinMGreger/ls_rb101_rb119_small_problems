# frozen_string_literal: true

# Write a method that takes a string argument and returns a new string that contains the value of the original
# string with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Identify expected input: 
a string argument



Make the requirements explicit Identify rules:
1. Write a method that takes a string argument.
2. The method returns a new string that contains the value of the original string with all consecutive duplicate
characters collapsed into a single character.
3. You may not use String#squeeze or String#squeeze!.

Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm: