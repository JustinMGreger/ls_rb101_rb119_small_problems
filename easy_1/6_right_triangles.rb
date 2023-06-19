def triangle()
  puts 'How many stars do you want?'
  num = gets.to_i

  puts 'What corner do you want the triangle to be in :top_right, :top_left, :bottom_right, :bottom_left?'
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
      puts 'Invalid corner!'
      return
    end
    puts (' ' * spaces) + ('*' * stars)
  end
end

triangle
