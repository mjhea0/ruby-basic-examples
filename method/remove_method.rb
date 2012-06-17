#!/usr/bin/ruby -w

class RandomizingArray < Array
	def <<(e)
		insert(rand(size), e)
	end

	def [](i)
		super(rand(size))
	end
end

a = RandomizingArray.new
a << 1 << 2 << 3 << 4 << 5 << 6           # => [6, 3, 4, 5, 2, 1]

p a[0]
p a[0]
p a[0]
p

class RandomizingArray
	remove_method('[]')
end

a[0]                                      # => 6
a[0]                                      # => 6
a[0]                                      # => 6>>>>>>>>>>>
