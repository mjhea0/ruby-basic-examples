#!/usr/bin/ruby -w

require 'net/http' 

h = Net::HTTP.new('www.google.com', 80) 
response = h.get('/index.html', nil) 

if response.message == "OK" 
	puts response.body.scan(/<img src="(.*?)"/m).uniq 
end 
