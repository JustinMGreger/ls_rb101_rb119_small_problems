# frozen_string_literal: true

# Write a method that takes a string argument and returns a new string that contains the value of the original
# string with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# my solution:
def crunch(string_parameter)
  if not string_parameter:
    return string_parameter

  new_string = [string_parameter[0]]
  for i in range(1, len(string_parameter)):

    if string_parameter[i] != string_parameter[i - 1]:
      new_string.append(string_parameter[i])

      return ''.join(new_string)
end

# test:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
