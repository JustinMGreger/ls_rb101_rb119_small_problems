# frozen_string_literal: true

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

def xor?(arg_one, arg_two)
  if arg_one && !arg_two
    true
  elsif !arg_one && arg_two
    true
  else
    false
  end
end
