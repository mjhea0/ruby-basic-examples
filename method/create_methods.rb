#!/usr/bin/ruby -w

count = Proc.new { [1,2,3,4,5].each do |i| print i end; puts }
your_proc = lambda { puts "L?" }
my_proc = proc { puts "?" }

# What kind of objects did you just create?
puts count.class, your_proc.class, my_proc.class

# Calling all procs
count.call
your_proc.call
my_proc.call
