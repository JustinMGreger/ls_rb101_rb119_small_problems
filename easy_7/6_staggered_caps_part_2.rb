# frozen_string_literal: true

# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

# Example:
# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# LS Solution from previous exercise:
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for “[Understand the] Problem,

# Identify expected input:
# a string parameter.

# output:
# modified string.

# Make the requirements explicit Identify rules:
# Modify the method from the previous exercise.
# the modified method ignores non-alphabetic characters when determining to uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value.

# Mental model of the problem (optional):
# the Modified staggered_case method ignores /[^A-Za-z]/ characters in determining .uppercase or .lowercase each letter.
# The /[^A-Za-z]/ characters should still be included in the return value.

# Examples / Test Cases, Validate understanding of the problem:
# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Data Structure, How we represent data that we will work with when converting the input to output:
# array.

# Algorithm, Steps for converting input to output:
# 1. the staggered_case method accepts the string parameter.
# 2. the result varible is assigned the '' string.
# 3. the need_upper varible is assigned the boolean true.
# 4. break the string parameter into an array of string elements and pass the following block of code to each element:
# 5. if the char block parameter matches /[^A-Za-z]/append the char block parameter to the result and skip the rest
# of the iteration.
# 6. if need_upper is true the result varible is assigned to the result of adding the char block parameter that
# is upcase.
# 7. if the above is not true then the result varible is assigned to the result of adding the char block parameter
# that is downcase to it.
# 8. and this is the last line of the if statement.
# 9. the need_upper varible is assigned to false need_upper varible.
# 10. and this is the last line of the .each method.
# 11. and return the value assigned to the result varible.
# 12. and this is the last line of the staggered_case method.

# and Code.” Implementation of Algorithm:
# def staggered_case(string)
#   result = []
#   need_upper = true
#   string.chars.each do |char|
#     result << process_character(char, need_upper)
#     need_upper = toggle_uppercase(need_upper, char)
#   end
#   result.join
# end

# def process_character(char, need_upper)
#   char if char =~ /[^A-Za-z]/

#   need_upper ? char.upcase : char.downcase
# end

# def toggle_uppercase(need_upper, char)
#   char =~ /[A-Za-z]/ ? !need_upper : need_upper
# end

# LS Solution:
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#     end
#   end
#   result
# end

# Further Exploration

# Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining
# the upper/lowercase state.
# That is, you want a method that can perform the same actions that this method does,
# or operates like the previous version.

# Hint: Use a keyword argument.

# modified solution:
def staggered_case(string, count_non_alphabetical: false)
  count_non_alphabetical ? toggle_case_for_all(string) : toggle_case_for_alphabeticals(string)
end

def toggle_case_for_alphabeticals(string)
  need_upper = true

  string.chars.map do |char|
    if char =~ /[a-z]/i
      char = need_upper ? char.upcase : char.downcase
      need_upper = !need_upper
    end
    char
  end.join
end

def toggle_case_for_all(string)
  need_upper = true

  string.chars.map do |char|
    char = need_upper ? char.upcase : char.downcase
    need_upper = !need_upper
    char
  end.join
end

# tests:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
