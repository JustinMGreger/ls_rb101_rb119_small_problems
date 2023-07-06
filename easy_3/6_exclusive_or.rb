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
