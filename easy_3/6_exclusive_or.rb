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

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
