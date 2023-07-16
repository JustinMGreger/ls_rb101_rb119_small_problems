# frozen_string_literal: true

puts s = 'abc'.public_methods(false).inspect

# output:
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
:delete!, :squeeze!, :each_line, :each_byte, :each_char, :each_codepoint]
