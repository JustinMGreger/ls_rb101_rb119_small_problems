=begin

Description of Exercise:
Use irb to run the following code:

s = 'abc'
puts s.public_methods.inspect

You should find that it prints a list of all of the public methods available to the String s; this includes not only those
methods defined in the String class, but also methods that are inherited from Object (which inherits other methods from 
the BasicObject class and the Kernel module). That's a lot of methods.

How would you modify this code to print just the public methods that are defined or overridden by the String class? That 
is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

PEDAC has two primary objectives: process the problem (PEDA) and code with intent (C).

PEDAC stands for “[Understand the] Problem, 
 Identify expected input: 
 s = 'abc'
puts s.public_methods.inspect
 
 and output:
print just the public methods that are defined or overridden by the String class.
Exclude all members that are only defined in Object, BasicObject, and Kernel.

Syntax:
s = 'abc'

Explanation:
s is variable.
= means assigned.
'abc' is a string.
this means:
the variable s is assigned the string 'abc'.

Syntax:
puts s.public_methods.inspect

Explanation:
puts is put s which is put string which means print to the screen the string.
s is variable.
= means assigned.
'abc' is a string.
this means:
the variable s is assigned the string 'abc'.
.public_methods method returns an array of all the public instance methods available for an object.
.inspect method return a string representation of the object.
this means:
print to the screen the variable s is assigned the string 'abc' which is returned as an array of all the public instance 
methods available for an object and then returned as a string representation of the object.
the result of which is:
[:each_grapheme_cluster, :slice, :slice!, :rpartition, :encoding, :force_encoding, :b, :valid_encoding?, :ascii_only?, 
:hash, :unicode_normalized?, :unicode_normalize, :unicode_normalize!, :encode, :encode!, :to_r, :include?, :%, :*, :+, 
:to_c, :count, :partition, :unpack, :unpack1, :+@, :-@, :<=>, :<<, :==, :===, :sum, :=~, :[], :[]=, :next, :empty?, :eql?,
:casecmp, :casecmp?, :insert, :bytesize, :match, :match?, :succ!, :next!, :upto, :index, :byteindex, :rindex, :byterindex,
:replace, :clear, :chr, :getbyte, :setbyte, :byteslice, :bytesplice, :scrub, :scrub!, :dedup, :freeze, :undump, :intern, 
:length, :size, :succ, :downcase, :capitalize, :upcase, :dump, :upcase!, :inspect, :swapcase!, :oct, :downcase!, 
:capitalize!, :swapcase, :to_str, :codepoints, :split, :lines, :hex, :chars, :to_s, :to_i, :to_f, :reverse!, :concat, 
:grapheme_clusters, :reverse, :bytes, :start_with?, :prepend, :crypt, :ljust, :gsub, :end_with?, :scan, :strip, :to_sym, 
:center, :sub, :lstrip, :chop, :rjust, :ord, :sub!, :rstrip, :delete_prefix, :chomp, :strip!, :gsub!, :chop!, :chomp!, 
:delete_suffix, :lstrip!, :rstrip!, :delete_prefix!, :delete_suffix!, :tr, :tr_s, :delete, :squeeze, :tr!, :tr_s!, 
:delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint, :clamp, :between?, :<=, :>=, :<, :>, 
:singleton_class, :dup, :itself, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, 
:instance_variables, :instance_variable_get, :instance_variable_set, :instance_variable_defined?, 
:remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :display, :public_send, :extend, :class, :clone, :tap, 
:frozen?, :yield_self, :then, :!~, :nil?, :respond_to?, :public_method, :method, :singleton_method, 
:define_singleton_method, :object_id, :send, :to_enum, :enum_for, :!, :equal?, :__send__, :!=, :instance_eval, 
:instance_exec, :__id__]

 Make the requirements explicit Identify rules:
print just the public methods that are defined or overridden by the String class.
Exclude all members that are only defined in Object, BasicObject, and Kernel.

Mental model of the problem (optional):
print just the public methods that are defined or overridden by the String class.
Exclude all members that are only defined in Object, BasicObject, and Kernel.
According to the Ruby Documentation:
The class String has the Parent Object.
I am looking for the .public_methods method.
The .public_methods method is not in the class String.
The .public_methods method is in the class Object.
public_methods(all=true) → array
Returns the list of public methods accessible to obj. 
If the all parameter is set to false, only those methods in the receiver will be listed.
The String class is the receiver.
This means: 
if public_methods(false) → array 
Returns the list of public methods accessible to String.
this would exclude all members that are only defined in Object, BasicObject, and Kernel.

Examples / Test Cases, Validate understanding of the problem:
If public_methods(false) → array 
does not return the list of public methods accessible to String and exclude all members that are only defined in Object, 
BasicObject, and Kernel then my understanding is wrong.
If it does then my understanding and thus solution is correct.

Data Structure,  How we represent data that we will work with when converting the input to output.
The result will be an array.

Algorithm,  Steps for converting input to output:

print to the screen the variable s which is assigned the string 'abc' which the public_methods method accepts the argument 
(false) returns as an array of all the public instance methods available for the class String and then returns as a 
string representation of the class String.


and Code.” Implementation of Algorithm:

puts s = 'abc'.public_methods(false).inspect




=end