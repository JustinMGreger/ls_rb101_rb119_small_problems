# frozen_string_literal: true

# Write a method that takes a positive integer, n, as an argument, and displays a right triangle
# whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end
# at the lower-left of the triangle, and the other end at the upper-right.

# Examples:

def ask_for_stars
  puts 'How many stars do you want?'
  gets.to_i
end

def ask_for_corner
  puts 'What corner do you want the triangle to be in :top_right, :top_left, :bottom_right, :bottom_left?'
  gets.strip.to_sym
end

def calculate_for_corners(corner, num, nnn)
  corner_calculations = {
    top_right: [num - nnn - 1, nnn + 1],
    top_left: [0, nnn + 1],
    bottom_right: [nnn, num - nnn],
    bottom_left: [0, num - nnn]
  }

  corner_calculations[corner] || invalid_corner
end

def invalid_corner
  puts 'Invalid corner!'
  nil
end

def print_line(spaces, stars)
  puts (' ' * spaces) + ('*' * stars)
end

def triangle
  num = ask_for_stars
  corner = ask_for_corner

  num.times do |nnn|
    spaces, stars = calculate_for_corners(corner, num, nnn)
    
    break if spaces.nil? || stars.nil?

    print_line(spaces, stars)
  end
end

triangle
