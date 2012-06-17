#!/usr/bin/ruby -w

require 'date'
def remaining(date, event)
	intervals = [["day", 1], ["hour", 24], ["minute", 60], ["second", 60]]
	elapsed = DateTime.now - date
	tense = elapsed > 0 ? "since" : "until"
	interval = 1.0
	parts = intervals.collect do |name, new_interval|
		interval /= new_interval
		number, elapsed = elapsed.abs.divmod(interval)
		"#{number.to_i} #{name}#{"s" unless number == 1}"
	end
	puts "#{parts.join(", ")} #{tense} #{event}."
end

remaining(DateTime.new(2006, 4, 15, 0, 0, 0, DateTime.now.offset),"the book deadline")
