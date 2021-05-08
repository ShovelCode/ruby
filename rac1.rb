puts "Ruby App Collection 1.0"
 
 
def add2
    num1 = 0
    num2 = 0
    puts "First number: "
    num1 = gets
    puts "Second number: "
    num2 = gets
    puts num1.to_f + num2.to_f
end
 
def say_hello
    puts "Hello"
end
 
def cubicvolume
    puts "Number1"
    num1 = gets.chomp.to_f
    puts "Number2"
    num2 = gets.chomp.to_f
    puts "Number3"
    num3 = gets.chomp.to_f
    puts num1 * num2 * num3
end
 
puts "0: Dyadic Addition"
puts "1: Cubic Volume"
puts "What is your selection?"
selection = gets.chomp
 
if selection == "0"
    add2
    elsif selection == "1"
    cubicvolume
    
end
