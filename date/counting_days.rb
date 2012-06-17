#!/usr/bin/ruby -w

require 'date'

def last_modified(file)
	t1 = File.stat(file).ctime
	t2 = Time.now
	elapsed = (t2-t1)/(60*60*24)
	puts "#{file} was last modified #{elapsed} days ago."
end

last_modified("/Users/debugger/.vimrc")
