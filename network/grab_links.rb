#!/usr/bin/ruby -w

require 'rexml/document'
require 'rexml/streamlistener'
require 'set'

class LinkGrabber
	include REXML::StreamListener
	attr_reader :links

	def initialize(interesting_tags = {'a' => %w{href}, 'img' => %w{src}}.freeze)
		@tags = interesting_tags
		@links = Set.new
	end

	def tag_start(name, attrs)
		@tags[name].each do |uri_attr|
			@links << attrs[uri_attr] if attrs[uri_attr]
		end if @tags[name]
	end

	def parse(text)
		REXML::Document.parse_stream(text, self)
	end
end


text = %{"test
	<a href="http://www.example.com/">http://www.example.com/</a>, http://www.example.com/blog/. Email me at <a	href="mailto:bob@example.com">b@e.com</a>.
}

grabber = LinkGrabber.new
grabber.parse(text)
p grabber.links
