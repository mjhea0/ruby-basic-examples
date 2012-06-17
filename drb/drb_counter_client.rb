require 'drb'
require 'drb/observer'

class Counter
	include DRb::DRbObservable

	def run
		5.times do |count|
			changed
			notify_observers(count)
		end
	end
end

counter = Counter.new
DRb.start_service('druby://localhost:9001', counter)
DRb.thread.join

# This client programinteracts with the server, registering a listener object to receive
#callbacks before invoking the server’s run method.
require 'drb'

class Listener
	include DRbUndumped
	def update(value)
		puts value
	end
end

DRb.start_service
counter = DRbObject.new(nil, "druby://localhost:9001")
listener = Listener.new
counter.add_observer(listener)
counter.run
