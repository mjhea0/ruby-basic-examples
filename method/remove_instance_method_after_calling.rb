#!/usr/bin/ruby -w

class OneTimeContainer
	def initialize(value)
		@use_just_once_then_destroy = value
	end

	def get_value
		remove_instance_variable(:@use_just_once_then_destroy)
	end
end

object_1 = OneTimeContainer.new(6)
object_1.get_value
# => 6
object_1.get_value
# # NameError: instance variable @use_just_once_then_destroy not defined
#
object_2 = OneTimeContainer.new('ephemeron')
object_2.get_value
# => "ephemeron"
