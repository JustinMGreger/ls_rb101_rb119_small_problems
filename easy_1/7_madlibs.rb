# frozen_string_literal: true
puts 'Enter a noun: '
noun = gets.chomp
puts 'Enter a verb: '
verb = gets.chomp
puts 'Enter an adjective: '
adjective = gets.chomp
puts 'Enter an adverb: '
adverb = gets.chomp

sentence_one = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_two = "#{noun} #{verb} #{adverb} #{adjective}"
sentence_three =   "#{adverb} #{noun} #{verb} #{adjective}"

puts [sentence_one, sentence_two, sentence_three].sample
