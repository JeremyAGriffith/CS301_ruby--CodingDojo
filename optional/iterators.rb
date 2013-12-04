class Array
	def iterate!
		self.each_with_index do |n, i|
			self[i] = yield n
		end
	end

	def iterate
		self.collect { |n, i| yield n }
	end
end

a = [1,2,3,4,5]
puts a.inspect
a.iterate! { |e| e ** 2 }
puts a.inspect

a = [1,2,3]
puts a.inspect
a2 = a.iterate { |e| e ** 2 }
print a, " // ", a2
