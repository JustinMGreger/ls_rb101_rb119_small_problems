# frozen_string_literal: true

# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

# Example:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# LS Solution from previous exercise:
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

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

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:

# tests:
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
