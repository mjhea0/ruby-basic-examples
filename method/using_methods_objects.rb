#!/usr/bin/ruby -w

trane = "this is a test".method(:length) 
miles = "this is a sub".method("sub") 


trane.call # 13 
miles.call(/iles/, '.') 
