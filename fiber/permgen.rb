#!/usr/bin/ruby -w

def permgen (a, n)
	if n == 0 then
		puts a.join(" ")
	else
		# n.times => 
		# 0
		# 1
		# 2
		# 3
		n.times do |i|
			a[n - 1], a[i] = a[i], a[n - 1]
			# n = 0的时候
			# a[-1], a[0] = a[0], a[-1] 最后一个元素和第一个元素交换了 => [4, 2, 3, 1]
			permgen(a, n - 1)
			# 对[4, 2, 3]进行全排列,这个排列结果再append上1进行排列
			a[n - 1], a[i] = a[i], a[n - 1]
			# 还原数组避免排列重复,下次n => 3
		end
	end
end

permgen([1,2,3,4],4)
