

Description of Exercise:
Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, 
you are tasked with writing a program that loads some text messages from a YAML file. 
We do this with YAML::load_file:

Initial Given Syntax:
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

Syntax:
require 'yaml'

Explanation:
require means find and load a file.
'yaml' is YAML Ain’t Markup Language which is a Ruby module that provides a Ruby interface for data serialization in YAML
format.
this means: find and load the YAML module.

Syntax:
MESSAGES = YAML.load_file('calculator_messages.yml')

Explanation:
MESSAGES is a constant.
= means assignment.
YAML is YAML Ain’t Markup Language which is a Ruby module that provides a Ruby interface for data serialization in YAML
format.
.load_file('calculator_messages.yml') according to the ruby docs:
https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file
means: load_file( filepath ) which is used to load a document from the file located at filepath.
'calculator_messages.yml' is a YAML file.
this means:
the constant MESSAGES is assigned the result of loading the calculator_messages.yml YAML file and using the YAML Ruby 
module to provide a Ruby interface for data serialization in YAML format.

this all means:
find and load the YAML module.
the constant MESSAGES is assigned the result of loading the calculator_messages.yml YAML file and using the YAML Ruby 
module to provide a Ruby interface for data serialization in YAML format.

the result of which is:
:in `initialize': No such file or directory @ rb_sysopen - calculator_messages.yml (Errno::ENOENT)
	from /opt/homebrew/Cellar/ruby/3.2.1/lib/ruby/3.2.0/psych.rb:670:in `open'
	from /opt/homebrew/Cellar/ruby/3.2.1/lib/ruby/3.2.0/psych.rb:670:in `load_file'

Description of Exercise:
Find the documentation for YAML::load_file.

Answer:
If you go to the current ruby documentation:
https://ruby-doc.org/3.2.2/stdlibs/yaml/YAML.html
it says:
YAML Ain’t Markup Language
This module provides a Ruby interface for data serialization in YAML format.
The YAML module is an alias of Psych, the YAML engine for Ruby.

The rest of the information is of minimal utility.

This means you can search for Psych in the ruby documentation which results in:
https://ruby-doc.org/3.2.2/exts/psych/Psych.html

there you will find the method load_file:
https://ruby-doc.org/3.2.2/exts/psych/Psych.html#method-c-load_file

there you will find:
load_file(filename, **kwargs)
Loads the document contained in filename. Returns the yaml contained in filename as a Ruby object, or if the file is empty,
it returns the specified fallback return value, which defaults to false. See load for options.

Another option is to look at older ruby docs for example 1.8.6:
https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file

there you will find:
load_file( filepath )
Load a document from the file located at filepath.

YAML.load_file( 'animals.yaml' )
   #=> ['badger', 'elephant', 'tiger']
