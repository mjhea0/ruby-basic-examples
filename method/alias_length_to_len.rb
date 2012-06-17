#!/usr/bin/ruby -w

class Array
	alias :len :length
end

puts [1,2,3,4].len
puts [1,2,3,4].length
