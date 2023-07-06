# frozen_string_literal: true

def xor?(arg_one, arg_two)
  if arg_one && !arg_two
    true
  elsif !arg_one && arg_two
    true
  else
    false
  end
end

p xor?(5.even?, 4.even?) == true # result: true
p xor?(5.odd?, 4.odd?) == true # result: true
p xor?(5.odd?, 4.even?) == false # result: true
p xor?(5.even?, 4.odd?) == false # result: true

# Further Exploration

# Can you think of a situation in which a boolean xor method would be useful? 
# Answer: game theory analysis.

# Suppose you were modeling a light at the top of a flight of stairs wired in such a way that the light can be turned on 
# or off using either the switch at the bottom of the stairs or the switch at the top of the stairs. 
# This is an xor configuration, and it can be modeled in ruby using the xor method. 

# Think of some additional examples.
# A/B testing, device control, and user privileges.

|| and && are so-called short circuit operators in that the second operand is not evaluated if its value is not needed. 
Does the xor method perform short-circuit evaluation of its operands? Why or why not? 
Does short-circuit evaluation in xor operations even make sense?
