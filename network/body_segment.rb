#!/usr/bin/ruby -w

require 'uri'

Net::HTTP.get_response('www.oreilly.com', '/about/') do |response|
	response.read_body do |segment|
		puts "Received segment of #{segment.size} byte(s)!"
	end
end
