#!/usr/bin/ruby -w

require 'resolv'

Resolv::DNS.open do |dns|
	mail_servers = dns.getresources("google.com", Resolv::DNS::Resource::IN::MX)
	mail_servers.each do |server|
		puts "#{server.exchange.to_s} - #{server.preference}"
	end
end
