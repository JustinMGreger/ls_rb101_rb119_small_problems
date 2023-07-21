# frozen_string_literal: true

# Build a program that asks a user for the length and width of a room in meters and then displays the area
# of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run:

def room_size
  puts 'Enter the length of the room in feet: '
  length = gets.to_f
  puts 'Enter the width of the room in feet: '
  width = gets.to_f
  area_square_feet = (length * width).round(2)
  area_square_inches = (area_square_feet * 12).round(2)
  area_square_centimeters = (area_square_inches * 2.54).round(2)
  puts "The area of the room is #{area_square_feet} square feet (#{area_square_inches} square inches)" \
  "(#{area_square_centimeters} square centimeters)."
end

room_size
