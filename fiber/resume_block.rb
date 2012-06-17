#!/usr/bin/ruby -w

f = Fiber.new do |a, b, c|
	p a, b, c
end

# transfer block
f.resume(1, "two", [3, 6, 9])
