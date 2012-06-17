#!/usr/bin/ruby -w

require 'open-uri'

url = "http://www.google.com/search?q=ruby"

open(url) { |page| page_content = page.read()
	links = page_content.scan(/<a class=l.*?href=\"(.*?)\"/).flatten
	links.each {|link| puts link}
}
