#!/usr/bin/ruby -w

require 'uri'

text = %{"test
	<a href="http://www.a.com/">http://www.a.com/</a>, and be sure
	to check http://www.a.com/blog/. Email me at <a href="mailto:b@a.com">b@a.com</a>.
}

END_CHARS = %{.,'?!:;}
p URI.extract(text, ['http']).collect { |u| END_CHARS.index(u[-1]) ? u.chop : u }
