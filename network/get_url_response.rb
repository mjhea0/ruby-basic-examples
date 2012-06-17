#!/usr/bin/ruby -w

require 'uri'
Net::HTTP.get(URI.parse("http://www.oreilly.com"))
response = Net::HTTP.get_response('www.oreilly.com', '/about/')

puts "Success!" if response.is_a? Net::HTTPOK
# Success!
