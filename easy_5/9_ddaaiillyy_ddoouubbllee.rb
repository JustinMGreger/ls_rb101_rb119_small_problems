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

# Further Exploration

# You may have noticed that we continue iterating until index points past the end of the string.
# As a result, on the last iteration text[index] is the last character in text,
# while text[index + 1] is nil.
# Why do we do this?
# answer:
# to ensure that every character in the string is processed including the last character.

# What happens if we stop iterating when index is equal to text.length?
# answer:
# the loop would not process the last string.
# the string index starts at 0.
# the string has a length of n.
# which means the index of its characters range from 0 to n-1.
# stopping when index == text.length means the loop will not include the iteration for index = n-1 which is the last
# character.

# Can you determine why we didn't use String#each_char or String#chars to iterate through the string?
# answer:
# would be limited to working with the current character in the string instead of indexes.
# indexes can be faster.
# using indexes are easier to understand.

How would you update this method to use String#each_char or String#chars?

You can solve this problem using regular expressions (see the Regexp class documentation). For a fun challenge, give this a try with regular expressions. If you haven't already read our book, Introduction to Regular Expressions, you may want to keep it handy if you try this challenge.

Can you think of other solutions besides regular expressions?

# test:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
