# frozen_string_literal: true

def what_is_the_bill
  puts 'What is the bill?'
end

def what_is_the_tip_percentage
  puts 'What is the tip percentage?'
end

def tip_calculator()
  bill = gets.chomp.to_f

  tip_rate = gets.chomp.to_f / 100
  tip = (bill * tip_rate).round(2)
  total = (tip + bill).round(2)
  puts "The tip is $#{format('%.2f', tip)}"
  puts "The total is $#{format('%.2f', total)}"
end

tip_calculator
