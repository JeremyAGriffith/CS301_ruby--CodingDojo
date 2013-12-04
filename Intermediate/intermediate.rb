monster1 = {:health=>500}
monster2 = {:health=>500}

5.times do |i|
	atk = rand(100)
	monster2[:health] -= atk
	puts "ROUND #{i}",
		"monster1 attacks monster2 with #{atk} damage",
		"monster2's health is now #{monster2[:health]}/500"
	atk = rand(100)
	monster1[:health] -= atk
	puts "monster2 attacks monster1 with #{atk} damage",
		"monster1's health is now #{monster1[:health]}/500", ".......\n\n"
end
puts monster1[:health]>monster2[:health]? "monster1 wins the game!" : "monster2 wins the game!"