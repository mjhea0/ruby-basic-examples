#!/usr/bin/ruby -w

require 'resolv'

ip = "192.0.34.166"

begin
	puts Resolv.getname(ip)
rescue
	puts "No hostname associated with #{ip}"
end
