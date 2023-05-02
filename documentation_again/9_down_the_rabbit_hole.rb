=begin

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


=end