#!/usr/bin/ruby -w

require 'open-uri'

output = File.new('1.8.2-patch1.gz', 'w')

open('ftp://ftp.ruby-lang.org/pub/ruby/1.8/1.8.2-patch1.gz') do |f|
	output.print f.read
end

output.close
