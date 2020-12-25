puts "Hello World"
puts "Enter number: "
repeat = gets
((repeat.to_i)-1).times do 
	puts rand(10)
end
