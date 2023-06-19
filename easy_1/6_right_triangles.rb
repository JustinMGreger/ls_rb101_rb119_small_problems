# frozen_string_literal: true

def ask_for_stars
  puts 'How many stars do you want?'
  gets.to_i
end

def ask_for_corner
  puts 'What corner do you want the triangle to be in :top_right, :top_left, :bottom_right, :bottom_left?'
  gets.strip.to_sym
end

def calculate_for_corners(corner, num, n)
  corner_calculations = {
    top_right: [num - n - 1, n + 1],
    top_left: [0, n + 1],
    bottom_right: [0, n + 1],
    bottom_left: [0, num - n]
  }

  corner_calculations[corner] || invalid_corner
end

def invalid_corner
  puts 'Invalid corner!'
  nil
end

def calculate_spaces_and_stars(corner, num, n)
  if [:bottom_right].include?(corner)
    return [n, num - n]
  else
    return calculate_for_corners(corner, num, n)
  end
end

def print_line(spaces, stars)
  puts (' ' * spaces) + ('*' * stars)
end

def triangle()
  num = ask_for_stars
  corner = ask_for_corner

  num.times do |n|
    spaces, stars = calculate_spaces_and_stars(corner, num, n)
    return if spaces.nil? || stars.nil?
    print_line(spaces, stars)
  end
end

triangle