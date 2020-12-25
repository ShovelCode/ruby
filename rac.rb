puts "Ruby App Catalog 1.3"


def add2
	num1 = 0
	num2 = 0
	puts "First number: "
	num1 = gets
	puts "Second number: "
	num2 = gets
	puts num1.to_f + num2.to_f
	main
end

def say_hello
	puts "Hello"
	main
end

def cubicvolume
	puts "Number1"
	num1 = gets.chomp.to_f
	puts "Number2"
	num2 = gets.chomp.to_f
	puts "Number3"
	num3 = gets.chomp.to_f
	puts num1 * num2 * num3
	main
end

def main
puts "0: Dyadic Addition"
puts "1: Cubic Volume"
puts "What is your selection?"
selection = gets.chomp

if selection == "0"
	add2
	elsif selection == "1"
		cubicvolume
	elsif selection == "-1"
		abort "Program Ended"
	elsif
		main
end
end

main

