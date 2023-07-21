# frozen_string_literal: true

# Mad libs are a simple game where you create a story template with blanks for words.
# You, or another player, then construct a list of words and place them into the story,
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and
# injects those into a story that you create.

# Example:

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
sentence_three = "#{adverb} #{noun} #{verb} #{adjective}"

puts [sentence_one, sentence_two, sentence_three].sample
