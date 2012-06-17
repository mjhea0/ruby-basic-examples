#!/usr/bin/ruby -w

require 'uri'
Net::HTTP.get(URI.parse("http://www.oreilly.com"))
response = Net::HTTP.get_response('www.oreilly.com', '/about/')


response.each_key { |key| puts key }
# x-cache
# # p3p
# # content-type
# # date
# # server
# # transfer-encoding
