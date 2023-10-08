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

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
PEDAC stands for “[Understand the] Problem,
Identify expected input:
output:
Make the requirements explicit Identify rules:
Mental model of the problem (optional):
Examples / Test Cases, Validate understanding of the problem:
Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code.” Implementation of Algorithm:
