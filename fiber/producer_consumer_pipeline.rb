# 此代码过于精妙
# 太精妙了
# 不好好看看不懂 NND

class PipelineElement
	attr_accessor :source

	def initialize
		@fiber_delegate = Fiber.new do
			process
		end
	end

	# 实现管道操作符
	def |(other)
		other.source = self
		other
	end

	def resume
		@fiber_delegate.resume
	end

	def process
		while value = input
			handle_value(value)
		end
	end

	def handle_value(value)
		output(value)
	end

	# 唤醒源对象
	def input
		@source.resume
	end

	# 让出自身的控制权
	def output(value)
		Fiber.yield(value)
	end
end

# 生产者
class Producer < PipelineElement
	def process
		while true
			value = readline.chomp
			handle_value(value)
		end
	end
end

# 过滤器
class Filter < PipelineElement
	def initialize
		@line = 1
		super()
	end

	def handle_value(value)
		value = sprintf("%5d %s", @line, value)
		output(value)
		@line = @line.succ
	end
end

# 消费者
class Consumer < PipelineElement
	def handle_value(value)
		exit if value.index('quit')
		puts value
	end
end

producer = Producer.new
filter = Filter.new
consumer = Consumer.new

pipeline = producer | filter | consumer
pipeline.resume
