#!/usr/bin/ruby -w

require 'rubygems'
require 'hpricot'
require 'open-uri'

doc = Hpricot(open('http://www.rubyinside.com/test.html'))
puts doc.search("h1").first.inner_html


list = doc.search("ul").first
list.search("li").each do |item|
	puts item.inner_html
end
