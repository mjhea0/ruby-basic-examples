#!/usr/bin/ruby -w

require 'rubygems'
require 'net/ssh'


Net::SSH.start('example.com', :username=>'userName', :password=>'mypass') do |session|
	cmd = 'ls -l /home'
	session.process.popen3(cmd) do |stdin, stdout, stderr|
		puts stdout.read
	end
end
