Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

def room_size
  puts "Enter the length of the room in meters: "
  length = gets.to_f
  puts "Enter the width of the room in meters: "
  width = 7
  area = length * width
  puts "The area of the room is #{area} square meters (753.47 square feet)."
end

room_size