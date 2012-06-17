#!/usr/bin/ruby -w

require 'uri'

text = %{"test
	<a href="http://www.example.com/">http://www.example.com/</a>, and be sure
	to check out my weblog at http://www.example.com/blog/. Email me at <a
	href="mailto:b@e.com">b@e.com</a>.}

p URI.extract(text)
