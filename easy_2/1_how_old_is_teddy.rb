# frozen_string_literal: true

# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.

# Example Output:
# Teddy is 69 years old!

# LS solution:
# age = rand(20..200)
# puts "Teddy is #{age} years old!"

# Further Exploration

# Modify this program to ask for a name, and then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

def teddy_age
  puts 'enter a name: '
  name = gets.chomp
  name = 'Teddy' if name.empty?
  random_age = rand(20..200)
  puts "#{name} is #{random_age} years old!"
end

teddy_age
