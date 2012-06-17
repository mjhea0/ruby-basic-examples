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

class Fiber
	def self.wrap
		if block_given?
			f=Fiber.new do |*args|
				yield *args
			end
			return lambda{|*args| f.resume(*args) if f.alive? }
		end
	end
end

class FiberIterator
	def initialize
		@fiber_wrap = Fiber.wrap do
			yield
		end
	end
	def each
		while value = @fiber_wrap.call
			yield value
		end
	end
end

def perm(a)
	FiberIterator.new { permgen(a,a.size) }
end

it = perm([1,2,3,4])
for a in it
	puts a.join(" ")
end
