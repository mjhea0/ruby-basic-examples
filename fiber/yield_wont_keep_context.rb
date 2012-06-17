#!/usr/bin/ruby -w

def test
	yield
	yield
	yield
end

test {x ||= 0; p x += 1}
# 1
# 1
# 1
