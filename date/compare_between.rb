#!/usr/bin/ruby -w

require 'date'

t0 = Time.local(2000,11,10,22,15)      # 10 Nov 2000 22:15
t1 = Time.local(2000,11,9,23,45)       #  9 Nov 2000 23:45
t2 = Time.local(2000,11,12,8,10)       # 12 Nov 2000  8:10
t3 = Time.local(2000,11,11,10,25)      # 11 Nov 2000 10:25

if t0 < t1 then puts "t0 < t1" end
if t1 != t2 then puts "t1 != t2" end
if t1 <= t2 then puts "t1 <= t2" end

if t3.between?(t1,t2)
	puts "t3 is between t1 and t2"
end
