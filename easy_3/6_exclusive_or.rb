# frozen_string_literal: true

# The || operator returns a truthy value if either or both of its operands are truthy.
# If both operands are falsey, it returns a falsey value.
# The && operator returns a truthy value if both of its operands are truthy,
# and a falsey value if either operand is falsey.
# This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.
# Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# Examples:




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

# || and && are so-called short circuit operators in that the second operand is
# not evaluated if its value is not needed.
# Does the xor method perform short-circuit evaluation of its operands?
# Why or why not?
# Answer: No. xor returns true if exactly 1 of the operands is true.

# Does short-circuit evaluation in xor operations even make sense?
# Answer: No. Both operands have to be evaluated which means it is not a short circuit operator.
