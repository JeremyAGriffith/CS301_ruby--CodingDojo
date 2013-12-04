class Fixnum
	def prev
		self - 1
	end

	def skip
		self + 2
	end
end

print 1, " // ", 1.prev, " // ", 1.skip
################
class String
	def reverse_original
		new_s = ""
		count = self.length-1
		while count >= 0
			new_s += self[count]
			count -= 1
		end
		new_s
	end

	def reverse_original!
		count = 0
		while count < self.length/2
			temp = self[count]
			self[count] = self[self.length-1-count]
			self[self.length-1-count] = temp
			count += 1
		end
		true
	end
end

print "hello", " // ", "hello".reverse_original
x = "Hipes"
y = x
z = x
x.reverse_original!
print x, y, z
################
class Array
	def fltr
		temp = Array.new
		self.each_with_index do |n, i|
		temp.push self[i] if yield n
		end
		temp
	end
end

a = [1,2,3,4].fltr { |e| e<3 }
print a.inspect
################
class Hash
	def foreach
		self.each_key do |k|
			yield(k, self[k])
		end
	end
end

h = {:name => 'Dojo', :zipcode => 94043}
h.foreach { |key, value| puts "#{key} is #{value}" }