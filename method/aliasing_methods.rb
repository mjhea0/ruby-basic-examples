#!/usr/bin/ruby -w

class MyClass
	attr_accessor :name, :unit_price

	def initialize(name, unit_price)
		@name, @unit_price = name, unit_price
	end

	def price(quantity=1)
		@unit_price * quantity
	end

	# Make MyClass#cost an alias for MyClass#price
	alias :cost :price

	# The attr_accessor decorator created two methods called "unit_price" and
	# "unit_price=". I'll create aliases for those methods as well.
	alias :unit_cost :unit_price
	alias :unit_cost= :unit_price=
end

bacon = MyClass.new("Bacon", 3.95)
bacon.price(100)                                   # => 395.0
bacon.cost(100)                                    # => 395.0

bacon.unit_price                                   # => 3.95
bacon.unit_cost                                    # => 3.95
bacon.unit_cost = 3.99
bacon.cost(100)                                    # => 399.0
