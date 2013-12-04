first_number = 10
second_number = 11
operation = rand(1..4)

case operation
when 1
	answer = first_number + second_number
	operation = "addition"
when 2
	answer = first_number - second_number
	operation = "subtraction"
when 3
	answer = first_number * second_number
	operation = "multiplication"
else
	answer = first_number / second_number
	operation = "division"
end

puts "The answer is #{answer}", "Operation used is #{operation}"