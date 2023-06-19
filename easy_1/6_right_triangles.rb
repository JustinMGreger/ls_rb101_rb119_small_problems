# My solution.
def triangle(n) 
  n.times do |i|
    puts ('*' * (i + 1)).rjust(n)
  end
end
# LS solution.
def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

# Further Exploration:
# Try modifying your solution so it prints the triangle upside down from its current orientation.

def triangle(num)
  spaces = 0
  stars = num

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

# Further Exploration:
# Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

def triangle()
  puts "How many stars do you want?"
  num = gets.to_i

  puts "What corner do you want the triangle to be in :top_right, :top_left, :bottom_right, :bottom_left?"
  corner = gets.strip.to_sym

  num.times do |n|
    case corner
    when :top_right
      spaces = num - n - 1
      stars = n + 1
    when :top_left
      spaces = 0
      stars = n + 1
    when :bottom_right
      spaces = n
      stars = num - n
    when :bottom_left
      spaces = 0
      stars = num - n
    else
      puts "Invalid corner!"
      return
    end
    puts (' ' * spaces) + ('*' * stars)
  end
end

triangle()
