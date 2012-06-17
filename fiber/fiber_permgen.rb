#!/usr/bin/ruby -w

require 'fiber'

def permgen (a, n)
	if n == 0 then
		Fiber.yield(a)
	else
		n.times do |i|
			a[n - 1], a[i] = a[i], a[n - 1]
			permgen(a, n - 1)
			a[n - 1], a[i] = a[i], a[n - 1]
		end
	end
end

def perm(a)
	f = Fiber.new do
		permgen(a, a.size)
	end

	return lambda { f.resume if f.alive? }
end

it = perm([1,2,3,4])

while a = it.call
	puts a.join(" ")
end
