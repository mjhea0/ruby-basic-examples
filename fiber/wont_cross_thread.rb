#!/usr/bin/ruby -w

require 'fiber'

f = nil

Thread.new do 
	f = Fiber.new {}
end.join

f.resume
