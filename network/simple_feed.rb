#!/usr/bin/ruby -w

require 'rss/2.0'
require 'open-uri'

url = 'http://www.oreillynet.com/pub/feed/1?format=rss2'
feed = RSS::Parser.parse(open(url).read, false)
puts "#{feed.channel.title}"

feed.items.each do |item|
	puts item.title
	puts " (#{item.link})"
	puts
	puts item.description
end
