# frozen_string_literal: true

# Mad libs are a simple game where you create a story template with blanks for words.
# You, or another player, then construct a list of words and place them into the story,
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and
# injects those into a story that you create.

# Example:
# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

# LS solution:
print 'Enter a noun: '
noun = gets.chomp

print 'Enter a verb: '
verb = gets.chomp

print 'Enter an adjective: '
adjective = gets.chomp

print 'Enter an adverb: '
adverb = gets.chomp

sentence_one = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_two = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_three = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_one, sentence_two, sentence_three].sample
