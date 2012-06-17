#!/usr/bin/ruby -w

my_array = Array.new

def my_array.random_dump(number)
	number.times { self << rand(100) }
end

p my_array.random_dump(3)
p my_array.random_dump(2)
p my_array                                      # => [6, 45, 12, 49, 66]

# That's enough of that.
class << my_array
	remove_method(:random_dump)
end

my_array.random_dump(4)
# NoMethodError: undefined method 'random_dump' for [6, 45, 12, 49, 66]:Array
