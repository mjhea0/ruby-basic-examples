#!/usr/bin/ruby -w

require 'date'

class Date
	def to_gm_time
		to_time(new_offset, :gm)
	end

	def to_local_time
		to_time(new_offset(DateTime.now.offset-offset), :local)
	end

	private
	def to_time(dest, method)
		usec = (dest.sec_fraction * 60 * 60 * 24 * (10**6)).to_i
		Time.send(method, dest.year, dest.month, dest.day, dest.hour, dest.min,
							dest.sec, usec)
	end
end
datetime = DateTime.new(1990, 10, 1, 22, 16, Rational(41,2))
puts datetime.to_gm_time
puts datetime.to_local_time
