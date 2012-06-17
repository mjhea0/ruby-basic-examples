#!/usr/bin/ruby -w

require 'rubygems'
require 'feed_tools'

feed = FeedTools::Feed.open('http://www.rubyinside.com/feed/')

puts "This feed's title is #{feed.title}"
puts "This feed's Web site is at #{feed.link}"

feed.items.each do |item|
	puts item.title + "\n---\n" + item.description + "\n\n"
end
