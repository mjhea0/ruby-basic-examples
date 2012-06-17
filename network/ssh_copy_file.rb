#!/usr/bin/ruby -w

require 'rubygems'
require 'net/ssh'

def copy_file(session, source_path, destination_path=nil)
	destination_path ||= source_path
	cmd = %{cat > "#{destination_path.gsub('"', '\"')}"}
	session.process.popen3(cmd) do |i, o, e|
		puts "Copying #{source_path} to #{destination_path}... "
		open(source_path) { |f| i.write(f.read) }
		puts 'Done.'
	end
end

Net::SSH.start('example.com', :username=>'yourName', :password=>'mypass') do |session|
	copy_file(session, '/home/test.rb')
end
