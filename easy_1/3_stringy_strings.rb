
def stringy(parameter, optional_parameter = 1)
  integers_array = []
  parameter.times do |index|
    integer = index.even? ? optional_parameter : (optional_parameter - 1).abs
    integers_array << integer
  end
  integers_array.join
end

# Tests:
p stringy(6) == '101010'
p stringy(9) == '101010101'
p stringy(4) == '1010'
p stringy(7) == '1010101'
