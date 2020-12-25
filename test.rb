def abc
	"Hello"
end

comp1 = "Hello" == "Hi"
comp2 = "Hello" == "Hello"
comp3 = abc() == "Hello"
puts comp1
puts comp2
puts comp3

puts "Enter color: "
color = gets
puts color
color.strip!
puts color
puts color == "green"




