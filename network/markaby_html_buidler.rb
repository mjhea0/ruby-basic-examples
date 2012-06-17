#!/usr/bin/ruby -w

require 'rubygems'
require 'markaby'

m = Markaby::Builder.new

m.html do
	head { title 'This is the title' }

	body do
		h1 'Hello world'
		h2 'Sub-heading'
		p %q{This is a test}
		h2 'Another sub-heading'
		p 'test:'
		ul do
			li 'Generating HTML from Ruby'
			li 'Keeping HTML structured'
			li 'Lots more..'
		end
	end
end

puts m
