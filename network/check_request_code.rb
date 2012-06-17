#!/usr/bin/ruby -w

require 'net/http'         # The library we need
host = 'www.example.com'   # The web server
path = '/index.html'       # The file we want

http = Net::HTTP.new(host)      # Create a connection
headers, body = http.get(path)  # Request the file

if headers.code == "200"        # Check the status code # NOTE: code is not a number!
	print body                    # Print body if we got it
else                            # Otherwise
	puts "#{headers.code} #{headers.message}" # Display error message
end
