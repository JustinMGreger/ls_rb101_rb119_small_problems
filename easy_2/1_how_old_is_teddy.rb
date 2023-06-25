# frozen_string_literal: true

def teddy_age
  puts "enter a name: "
  name = gets.chomp
  random_age = rand(20..200)
  puts "Teddy is #{random_age} years old!"
end

teddy_age

Further Exploration
Modify this program to ask for a name, and then print the age for that person. 


#{name}