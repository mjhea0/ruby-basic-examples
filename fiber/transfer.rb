#!/usr/bin/ruby -w

require 'fiber'

f1 = Fiber.new do |other|
	print "hello "
	other.transfer
end

f2 = Fiber.new do |f|
	print "world\n"
end

f1.resume(f2)
