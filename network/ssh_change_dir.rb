#!/usr/bin/ruby -w

require 'rubygems'
require 'net/ssh'


Net::SSH.start('example.com', :username=>'yourName',
							 :password=>'mypass') do |session|
	shell = session.shell.sync
	puts "#{shell.pwd.stdout}"
	shell.cd 'test_dir'
	puts "#{shell.pwd.stdout}"
	puts 'Directory contents:'
	puts shell.ls("-l").stdout
	shell.exit
end
