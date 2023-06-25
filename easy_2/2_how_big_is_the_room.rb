# frozen_string_literal: true

def room_size
  sqmeters_to_sqfeet = 10.7639
  puts 'Enter the length of the room in meters: '
  length = gets.to_f
  puts 'Enter the width of the room in meters: '
  width = gets.to_f
  area_square_meter = (length * width).round(2)
  area_square_feet  = (area_square_meter * sqmeters_to_sqfeet).round(2)
  puts "The area of the room is #{area_square_meter} square meters (#{area_square_feet} square feet)."
end

room_size
