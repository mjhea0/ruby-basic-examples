#!/usr/bin/ruby -w

fiber = Fiber.new do 
	x ||= 0
	puts x += 1
	Fiber.yield
	puts x += 1
	Fiber.yield
	puts x += 1
	Fiber.yield
end

fiber.resume
fiber.resume
fiber.resume

# 1
# 2
# 3
