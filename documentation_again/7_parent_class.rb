# frozen_string_literal: true

# Use irb to run the following code:
# s = 'abc'
# puts s.public_methods.inspect

# You should find that it prints a list of all of the public methods available to the String s; this includes 
# not only those methods defined in the String class, but also methods that are inherited from Object 
# (which inherits other methods from the BasicObject class and the Kernel module). That's a lot of methods.

# How would you modify this code to print just the public methods that are defined or overridden by the String class? 
# That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

# LS solution:
s = 'abc'
puts s.public_methods(false).inspect

# output:
# [:each_grapheme_cluster, :slice, :slice!, :rpartition, :encoding, :force_encoding, :b, :valid_encoding?,
# :ascii_only?, :hash, :unicode_normalized?, :unicode_normalize, :unicode_normalize!, :encode, :encode!,
# :to_r, :include?, :%, :*, :+, :to_c, :count, :partition, :unpack, :unpack1, :+@, :-@, :<=>, :<<, :==, :===,
# :sum, :=~, :[], :[]=, :next, :empty?, :eql?, :casecmp, :casecmp?, :insert, :bytesize, :match, :match?, :succ!,
# :next!, :upto, :index, :byteindex, :rindex, :byterindex, :replace, :clear, :chr, :getbyte, :setbyte, :byteslice,
# :bytesplice, :scrub, :scrub!, :dedup, :freeze, :undump, :intern, :length, :size, :succ, :downcase, :capitalize,
# :upcase, :dump, :upcase!, :inspect, :swapcase!, :oct, downcase!, :capitalize!, :swapcase, :to_str, :codepoints,
# :split, :lines, :hex, :chars, :to_s, :to_i, :to_f, :reverse!, :concat, :grapheme_clusters, :reverse, :bytes,
# :start_with?, :prepend, :crypt, :ljust, :gsub, :end_with?, :scan, :strip, :to_sym, :center, :sub, :lstrip, :chop,
# :rjust, :ord, :sub!, :rstrip, :delete_prefix, :chomp, :strip!, :gsub!, :chop!, :chomp!, :delete_suffix, :lstrip!,
# :rstrip!, :delete_prefix!, :delete_suffix!, :tr, :tr_s, :delete, :squeeze, :tr!, :tr_s!, :delete!, :squeeze!,
# :each_line, :each_byte, :each_char, :each_codepoint]
