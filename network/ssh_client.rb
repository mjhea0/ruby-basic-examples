#!/usr/bin/ruby -w

require 'rubygems'
require 'net/ssh'

Net::SSH.start('example.com', :username=>'userName', :password=>'mypass') do |session|
	#
end
