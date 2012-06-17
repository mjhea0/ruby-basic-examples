#!/usr/bin/ruby -w

def double(a) 
	2*a 
end 

mObj = method(:double)
[ 1, 3, 5, 7 ].collect(&mObj) # [2, 6, 10, 14]
