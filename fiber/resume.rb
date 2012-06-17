#!/usr/bin/ruby -w

f = Fiber.new do 
	p 1
	Fiber.yield
	p 2
	Fiber.yield
	p 3
end

f.resume #1
f.resume #2 
f.resume #3
