# frozen_string_literal: true

def teddy_age
  puts "enter a name: "
  name = gets.chomp
  random_age = rand(20..200)
  puts "#{name} is #{random_age} years old!"
end

teddy_age
