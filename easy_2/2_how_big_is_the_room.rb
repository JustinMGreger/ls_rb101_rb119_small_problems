# frozen_string_literal: true

def room_size
  sqmeters_to_sqfeet = 10.7639
  puts 'Enter the length of the room in meters: '
  length = gets.to_f
  puts 'Enter the width of the room in meters: '
  width = gets.to_f
  area_square_meter = (length * width).round(2)
  puts "The area of the room is #{area_square_meter} square meters (#{area_square_feet} square feet)."
end

room_size


Further Exploration
Modify this program to ask for the input measurements in feet, 
and display the results in square feet, square inches, and square centimeters.