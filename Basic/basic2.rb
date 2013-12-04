a = [3,5,1,2,7,9,8,13,25,32]
print a.reduce :+
a2 = a.find_all { |i| i>10 }
print " // ", a2, "\n=========\n"
################
a = ['John','KB','Oliver','Cory','Matthew','Christopher']
print a.shuffle
a2 = a.find_all { |i| i.length>5 }
print " // ", a2, "\n=========\n"
################
a = ('a'..'z').to_a.shuffle
print a.last, " // ", a.first, "\n"
puts "first letter is a VOWEL!!!" if 'aeiou'.include?(a.first)
puts "=========\n"
################
a = (1..10).collect { rand(55..100) }
print a, "\n=========\n"
################
print a.sort!, " // ", a.min, " // ", a.max, "\n=========\n"
################
s = ((1..5).map { (65+rand(26)).chr }).join
print s, "\n=========\n"
################
a = (1..10).collect { ((1..5).map { (65+rand(26)).chr }).join }
print a