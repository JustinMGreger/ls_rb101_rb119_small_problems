# frozen_string_literal: true

# Write a program that reads the content of a text file
# and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

# Example text:
# Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.

# The longest sentence in the above text is the last sentence; it is 86 words long.
# (Note that each -- counts as a word.)

# Another Example
# Download the book at http://www.gutenberg.org/cache/epub/84/pg84.txt
# , and run your program on this file.
# The longest sentence in this book is 157 words long.

# Hint:
# If you have a variable str that contains a bunch of sentences,
# you can split into an array of sentences like this:
# sentences = text.split(/\.|\?|!/)
# This statement uses a regular expression (regex).
# Regex are very useful for string operations,
# but we don't cover them in any detail until RB130.
# If you haven't already read our book, Introduction to Regular Expressions,
# you may do so now, but it isn't necessary
# - this hint is all you need to know about regex for this problem.

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# the content of a text file.

# output:
# the longest sentence in the file based on number of words.
# You should also print the number of words in the longest sentence.

# Make the requirements explicit Identify rules:
# Write a program that reads the content of a text file
# and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

# Mental model of the problem (optional):
# def program(text)
# sentences = text.split(/\.|\?|!/)
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# prints the longest sentence in the file based on number of words and
# print the number of words in the longest sentence.

# Examples / Test Cases, Validate understanding of the problem:
# Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.
# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.
# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.
# The longest sentence in the above text is the last sentence; it is 86 words long.
# (Note that each -- counts as a word.)
# Download the book at http://www.gutenberg.org/cache/epub/84/pg84.txt
# , and run your program on this file.
# The longest sentence in this book is 157 words long.

# Data Structure, How we represent data that we will work with when converting the input to output:
# an array.

# Algorithm, Steps for converting input to output:
# the split_into_sentences method accepts the (text) parameter and is defined as the following:
# split the text parameter into an array of substrings based on the /\.|\?|!/ regular expression
# which contains: the / which starts the regex which is followed by the \. which is the literal .
# followed by the | logical or followed by the \? which is the literal ? followed by the | logical or
# followed by the ! followed by the / which closes the regex.
# this is the last line of the split_into_sentences method.
# the count_words method accepts the (sentence) parameter
# and is defined as the following:
# the word_pattern variable is assigned the /(--|\b[\w-]+\b)/ regex
# which contains: the / which opens the regex which is followed by
# (--|\b[\w-]+\b) grouping which contains: ( which opens the
# grouping followed by the -- literal -- string followed by the
# | logical or followed by the \b word boundary followed by the
# [\w-]+ character class that contains: the [ which opens the
# character class which is followed by the \w which matches
# any alphanumeric character and the underscore which is
# followed by the - hyphen followed by the ] which closes the
# character class followed by the + character which means 1 or
# more followed the \b word boundary followed by the ) which
# closes the grouping followed by the / which closes the regex.
# The scan method is called on the sentence parameter which
# takes the word_pattern variable as an argument  and returns
# an array of all occurrences in the string that match the
# word_pattern then return the number of elements in the array.
# this is the last line of the count_words method.
# the find_longest_sentence method accepts the (sentences)
# parameter and is defined as the following:
# the longest_sentence variable is assigned the '' string.
# the max_word_count variable is assigned the integer 0.
# pass the following block of code to each element in the
# sentences parameter:
# the word_count variable is assigned the result of passing
# the sentence block parameter to the count_words method.
# if the word_count variable is greater than the max_word_count
# variable then the longest_sentence variable is assigned
# the sentence block parameter.
# the max_word_count variable is assigned the word_count variable.
# this is the last line of the if statement method.
# this is the last line of the .each method.
# return the [longest_sentence, max_word_count] new array with
# the longest_sentence and max_word_count as the elements of the array.
# this is the last line of the find_longest_sentence method.
# the analyze_text method accepts the (text) parameter and is defined
# as the following:
# the sentences variable is assigned to the result of passing the text
# parameter to the split_into_sentences method.
# the longest_sentence, max_word_count are dual assigned the result
# of passing the sentences variable to the find_longest_sentence method.
# print to the screen the "The longest sentence is:\n#{longest_sentence.strip}"
# string which contains: the The longest sentence is:\n string followed by the
# #{longest_sentence.strip} string interpolation which contains: the result
# of removing leading and trailing whitespace from the longest_sentence variable.
# print to the screen the "The number of words in the longest sentence: #{max_word_count}"
# string which contains: the The number of words in the longest sentence: string
# followed by the #{max_word_count} string interpolation which contains:
# the max_word_count variable.
# this is the last line of the analyze_text method.
# the test_text variable is assigned the
# 'Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.
# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.
# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.' string.
# return the result of passing the test_text variable
# to the analyze_text method.

# and Code. Implementation of Algorithm:
# def split_into_sentences(text)
#   text.split(/\.|\?|!/)
# end

# def count_words(sentence)
#   word_pattern = /(--|\b[\w-]+\b)/
#   sentence.scan(word_pattern).count
# end

# def find_longest_sentence(sentences)
#   longest_sentence = ''
#   max_word_count = 0

#   sentences.each do |sentence|
#     word_count = count_words(sentence)
#     if word_count > max_word_count
#       longest_sentence = sentence
#       max_word_count = word_count
#     end
#   end

#   [longest_sentence, max_word_count]
# end

# def analyze_text(text)
#   sentences = split_into_sentences(text)
#   longest_sentence, max_word_count = find_longest_sentence(sentences)

#   puts "The longest sentence is:\n#{longest_sentence.strip}"
#   puts "The number of words in the longest sentence: #{max_word_count}"
# end

# test_text = 'Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.
# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.
# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.'

# analyze_text(test_text)

# LS Solution:
# text = File.read('sample_text.txt')
# sentences = text.split(/\.|\?|!/)
# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# largest_sentence = largest_sentence.strip
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

# Further Exploration:

# You may have noticed that our solution fails to print the period at the end of the sentence.
# Can you write a solution that keeps the period printed at the end of each sentence?

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

# Identify expected input:
# sample_text.txt

# output:
# the longest sentence in the file based on number of words.
# You should also print the number of words in the longest sentence.
# keep the period printed at the end of each sentence.

# Make the requirements explicit Identify rules:
# Write a program that reads the content of a text file
# and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.
# keep the period printed at the end of each sentence.

# Mental model of the problem (optional):
# text = File.read('sample_text.txt')
# and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.
# keep the period printed at the end of each sentence.

# Examples / Test Cases, Validate understanding of the problem:
# sample_text.txt contains:
# 'Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth.'

# Data Structure, How we represent data that we will work with when converting the input to output:
# an array.

# Algorithm, Steps for converting input to output:
# the text variable is assigned the result of calling the .read method
# on the File class in Ruby that provides methods for handling files,
# such as reading from or writing to them to opens the sample_text.txt
# file in read-only mode, reads the entire content of the file, and
# then automatically closes the file and return the content as a single
# string.
# the sentences variable is assigned the result of splitting the text
# variable into an array of substrings by the /(?<=[.?!])/ regex which
# contains: the / which opens the regex followed by (?<=[.?!]) which
# contains (?<= ) which looks for a position in the string that is
# preceded by a certain pattern which contains: [.?!] which matches
# one of the punctuation marks ., ? or ! which is then followed
# by the / which closes the regex.
# pass the elements in the sentences variable to the following block
# of code and permentalty modify the result into an array assigned to the sentences variable:
# permanently remove the leading and trailing whitespace from the sentence block parameter.
# permanently remove the '!' string from the end of the sentence block parameter
# or permanently remove the '?' string from the end of the sentence block parameter.
# return the value assigned to the sentence block parameter
# this is the last line of the .map method.
# the largest_sentence variable is assigned the result of iterating through each element
# in the sentences variable for each element, execute the following block of code:
# split the sentence block parameter into an array of substrings then return the number
# of element in that array and evaluate its result by keeping track of the element for
# which the block returns the highest value and return the element that had the highest
# block return value.
# the number_of_words variable is assigned the result of splitting the largest_sentence
# variable into an array of substrings then return the number of elements in the array.
# print to the screeen the "#{largest_sentence}" string which contains: the
# #{largest_sentence} string interpolation which contains the largest_sentence variable.
# print to the screen the "Containing #{number_of_words} words" string which contains:
# the Containing string followed by the #{number_of_words} string interpolation which
# contains: the number_of_words variable followed by the words string.

# and Code. Implementation of Algorithm:
# text = File.read('sample_text.txt')

# sentences = text.split(/(?<=[.?!])/)

# sentences.map! do |sentence|
#   sentence.strip!
#   sentence.chomp!('!') || sentence.chomp!('?')
#   sentence
# end

# largest_sentence = sentences.max_by { |sentence| sentence.split.size }
# number_of_words = largest_sentence.split.size

# puts "#{largest_sentence}"
# puts "Containing #{number_of_words} words"

# Further Exploration:
# What about finding the longest paragraph or longest word?
# How would we go about solving that problem?

# PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).
# PEDAC stands for [Understand the] Problem,

Identify expected input:
output:
Make the requirements explicit Identify rules:
Mental model of the problem (optional):

# Examples / Test Cases, Validate understanding of the problem:
# puts "the longest sentence is: #{largest_sentence}"
# puts "Containing #{number_of_words} words"
# puts "The longest paragraph is: #{longest_paragraph}"
# puts "Containing #{number_paragraph_words} words"
# puts "The longest word is: #{longest_word}"
# puts "Containing #{number_longest_word} characters"

Data Structure, How we represent data that we will work with when converting the input to output:
Algorithm, Steps for converting input to output:
and Code. Implementation of Algorithm:

puts "the longest sentence is: #{largest_sentence}"
puts "Containing #{number_of_words} words"
puts "The longest paragraph is: #{longest_paragraph}"
puts "Containing #{number_paragraph_words} words"
puts "The longest word is: #{longest_word}"
puts "Containing #{number_longest_word} characters"
