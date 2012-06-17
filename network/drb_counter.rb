#!/usr/bin/ruby -w

require 'drb'
class Counter
	attr_reader:count
	def initialize
		@count = 0

	end
	def increment
		@count += 1
	end
end

counter = Counter.new
DRb.start_service("druby://localhost:8888", counter)
DRb.thread.join

# accesses the Counter object that has been exported by the server:
#
require 'drb'

DRb.start_service
counter = DRbObject.new(nil, "druby://localhost:8888")

5.times do
	counter.increment
	puts counter.count
end
