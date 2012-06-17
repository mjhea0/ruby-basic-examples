#!/usr/bin/ruby -w

require 'net/http'
require 'uri'

module Net
	class HTTP
		def HTTP.get_with_headers(uri, headers=nil)
			uri = URI.parse(uri) if uri.respond_to? :to_str
			start(uri.host, uri.port) do |http|
				path_query = uri.path + (uri.query ? ('?' + uri.query) : '')
				return http.get(path_query, headers)
			end
		end
	end
end

res = Net::HTTP.get_with_headers('http://www.google.com/',
																 {'Accept-Language' => 'de'})

s = res.body.size
res.body[s-200..s-140]
