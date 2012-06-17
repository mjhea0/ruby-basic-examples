#!/usr/bin/ruby -w

f = Fiber.new do |a, b|
	Fiber.yield a + b, a - b
	p a, b
end

p f.resume(10, 10)
p f.resume(3, 4)

# [20, 0]
# 10
# 10
# [10, 10]
