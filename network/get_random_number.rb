#!/usr/bin/ruby -w

class RandomOrg

	require "net/http"
	require "thread"

	def initialize(min=0,max=1,buff=1000,slack=300)
		@site = "www.random.org"
		@min, @max = min, max
		@bufsize, @slack = buff, slack
		@buffer = Queue.new
		@url  = "/cgi-bin/randnum?num=nnn&min=#@min&max=#@max&col=1"
		@thread = Thread.new { fillbuffer }
	end

	def fillbuffer
		h = Net::HTTP.new(@site, 80)
		true_url = @url.sub(/nnn/,"#{@bufsize-@slack}")
		resp, data = h.get(true_url, nil)
		data.split.each {|x| @buffer.enq x }
	end

	def rand
		if @buffer.size < @slack
			if ! @thread.alive?
				@thread = Thread.new { fillbuffer }
			end
		end
		num = nil
		num = @buffer.deq until num!=nil
		num.to_i
	end

end


t = RandomOrg.new(1,6,1000,300)

count = {1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0}

10000.times do |n|
	x = t.rand
	count[x] += 1
end

p count
