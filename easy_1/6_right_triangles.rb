def ask_for_stars
  puts 'How many stars do you want?'
  gets.to_i
end

def ask_for_corner
  puts 'What corner do you want the triangle to be in :top_right, :top_left, :bottom_right, :bottom_left?'
  gets.strip.to_sym
end

def calculate_spaces_and_stars(corner, num, n)
  case corner
  when :top_right
    [num - n - 1, n + 1]
  when :top_left
    [0, n + 1]
  when :bottom_right
    [n, num - n]
  when :bottom_left
    [0, num - n]
  else
    puts 'Invalid corner!'
    nil
  end
end

def print_line(spaces, stars)
  puts (' ' * spaces) + ('*' * stars)
end

def triangle
  num = ask_for_stars
  corner = ask_for_corner

  num.times do |n|
    spaces, stars = calculate_spaces_and_stars(corner, num, n)
    return if spaces.nil? || stars.nil?
    print_line(spaces, stars)
  end
end

triangle
