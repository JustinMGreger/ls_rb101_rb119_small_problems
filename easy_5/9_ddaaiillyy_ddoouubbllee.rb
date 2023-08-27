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

Mental model of the problem (optional):
* You may not use String#squeeze or String#squeeze!.
def crunch('')
returns a new string that contains the value of the original string with all consecutive duplicate characters
collapsed into a single character.
end

# test:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

Algorithm, Steps for converting input to output:
* You may not use String#squeeze or String#squeeze!.
def crunch('')
returns a new string that contains the value of the original string with all consecutive duplicate characters
collapsed into a single character.
end



and Code.” Implementation of Algorithm: