# frozen_string_literal: true

def tip_calculator
  puts 'What is the bill?'
  bill = gets.chomp.to_f
  puts 'What is the tip percentage?'
  tip_rate = gets.chomp.to_f / 100
  tip =  (bill * tip_rate).round(2)
  total = tip +  bill
  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

tip_calculator
