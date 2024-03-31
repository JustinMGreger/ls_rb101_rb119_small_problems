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

and Code. Implementation of Algorithm:
