#!/usr/bin/ruby -w

require 'drb' 


class TestServer 
	def add(*args) 
		args.inject {|n,v| n + v} 
	end 
end 

server = TestServer.new 
DRb.start_service('druby://localhost:9000', server) 
DRb.thread.join # Don't exit just yet! 

require 'drb' 

DRb.start_service() 
obj = DRbObject.new(nil, 'druby://localhost:9000') 
# Now use obj 
# puts "Sum is: #{obj.add(1, 2, 3)}" 
