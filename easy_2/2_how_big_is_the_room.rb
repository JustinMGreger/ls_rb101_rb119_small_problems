Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Note: 1  == 10.7639 

Do not worry about validating the input at this time.

def room_size
  puts "Enter the length of the room in meters: "
  length = gets.to_f
  puts "Enter the width of the room in meters: "
  width = gets.to_f
  area_square_meter = (length * width).round(2)
  area_square_feet  = area_square_meter * 10.7639
  puts "The area of the room is #{area_square_meter} square meters (#{area_square_feet} square feet)."
end

room_size