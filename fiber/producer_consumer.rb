#!/usr/bin/ruby -w

require 'fiber'

# 生产者把东西给消费者去消费
def send(x)
	Fiber.yield(x)
end

# 消费者唤醒生产者去搞生产
def receive(producer)
	producer.resume 
end

# 生产者
def producer
	Fiber.new do
		while true
			x = readline.chomp
			send(x)
		end
	end
end

# 消费者
def consumer(producer)
	while true
		x = receive(producer)
		break if x == 'quit'
		puts x
	end
end

if $0==__FILE__
	consumer(producer)
end
