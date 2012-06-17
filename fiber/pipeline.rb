# 此代码过于精妙

class PipelineElement
	attr_accessor :source

	def initialize
		@fiber_delegate = Fiber.new do
			process
		end
	end

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

	def input
		@source.resume
	end

	def output(value)
		Fiber.yield(value)
	end
end
