# frozen_string_literal: true

# Write a method that takes a string argument and returns a new string that contains the value of the original
# string with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# my solution:
# def crunch(string_parameter)
#   return string_parameter if string_parameter.empty?

#   new_string = [string_parameter[0]]
#   (1...string_parameter.length).each do |i|
#     new_string << string_parameter[i] if string_parameter[i] != string_parameter[i - 1]
#   end

#   new_string.join
# end

# LS solution:
# def crunch(text)
#   index = 0
#   crunch_text = ''
#   while index <= text.length - 1
#     crunch_text << text[index] unless text[index] == text[index + 1]
#     index += 1
#   end
#   crunch_text
# end

# test:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
