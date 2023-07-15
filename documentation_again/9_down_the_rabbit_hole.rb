# frozen_string_literal: true

# Description of Exercise:
# Find the documentation for YAML::load_file.

# Answer:
# If you go to the current ruby documentation:
# https://ruby-doc.org/3.2.2/stdlibs/yaml/YAML.html
# it says:
# YAML Ain’t Markup Language
# This module provides a Ruby interface for data serialization in YAML format.
# The YAML module is an alias of Psych, the YAML engine for Ruby.

# The rest of the information is of minimal utility.

# This means you can search for Psych in the ruby documentation which results in:
# https://ruby-doc.org/3.2.2/exts/psych/Psych.html

# there you will find the method load_file:
# https://ruby-doc.org/3.2.2/exts/psych/Psych.html#method-c-load_file

# there you will find:
# load_file(filename, **kwargs)
# Loads the document contained in filename. Returns the yaml contained in filename as a Ruby object, or if the file is 
# empty, it returns the specified fallback return value, which defaults to false. See load for options.

# Another option is to look at older ruby docs for example 1.8.6:
# https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file

# there you will find:
# load_file( filepath )
# Load a document from the file located at filepath.

# YAML.load_file( 'animals.yaml' )
#=> ['badger', 'elephant', 'tiger']
