#!/usr/bin/ruby -w

require 'fiber'
f = Fiber.new do 
	#thread fiber
	p Fiber.current
end

# root fiber
p Fiber.current
f.resume
