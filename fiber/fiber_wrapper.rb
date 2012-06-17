#!/usr/bin/ruby -w

class Fiber
	def self.wrap
		if block_given?
			f = Fiber.new do |*args|
				yield *args
			end

			return lambda { |*args| f.resume(*args) if f.alive? }
		end
	end
end
