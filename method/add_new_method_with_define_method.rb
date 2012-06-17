#!/usr/bin/ruby -w

class String
	define_method('last') do |n|
		self[-n, n]
	end
end

puts "Here's a string.".last(7)               # => "string."
