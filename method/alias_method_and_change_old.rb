#!/usr/bin/ruby -w

class Array
	alias :length_old :length

	def length
		return length_old / 2
	end
end

array = [1, 2, 3, 4]
array.length                                       # => 2
array.size                                         # => 4
array.length_old                                   # => 4

class Array
	alias :length :length_old
end

puts array.length                                  # => 4
