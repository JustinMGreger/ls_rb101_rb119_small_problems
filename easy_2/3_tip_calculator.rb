def tip_calculator
  puts 'What is the bill?' 
  bill = gets.chomp.to_f 
  puts 'What is the tip percentage?'
  tip_rate = gets.chomp.to_f 
  tip =  (bill * tip_rate).round(2)
The program must compute the tip and then display both the tip and the total amount of the bill.
end
Example:



200


15

puts "The tip is $#{30.0}"
puts "The total is $#{230.0}"