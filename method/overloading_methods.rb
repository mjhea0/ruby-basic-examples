#!/usr/bin/ruby -w

class Rectangle
	def initialize(*args)
		case args.size
		when 2
			@top_left, @bottom_right = args
		when 3
			@top_left, length, width = args
			@bottom_right = [@top_left[0] + length, @top_left[1] - width]
		else
			raise ArgumentError, "This method takes either 2 or 3 arguments."
		end
	end
end

puts Rectangle.new([10, 23], [14, 13])
puts Rectangle.new([10, 23], 4, 10)
puts Rectangle.new
