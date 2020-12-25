#A Ruby App catalog
require 'net/smtp'
puts "Ruby App Catalog 1.3"


def send_email(to,opts={})
  opts[:server]      ||= 'localhost'
  opts[:from]        ||= 'email@example.com'
  opts[:from_alias]  ||= 'Example Emailer'
  opts[:subject]     ||= "You need to see this"
  opts[:body]        ||= "Important stuff!"

  msg = <<END_OF_MESSAGE
From: #{opts[:from_alias]} <#{opts[:from]}>
To: <#{to}>
Subject: #{opts[:subject]}

#{opts[:body]}
END_OF_MESSAGE

  Net::SMTP.start(opts[:server]) do |smtp|
    smtp.send_message msg, opts[:from], to
  end
  main
end

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

def iterationdemo
	a = [3, 2, 1] #Array literal
	a[3] = a[2] - 1
	a.each do |x|
	print x + 1
	end
	puts "\n"
	main
end

def comparestrings
	puts "String1: "
	string1 = gets.chomp
	puts "String2: "
	string2 = gets.chomp
	puts string1 == string2
	main
end

def integer_to_unicode
	puts "Integer: "
	num = gets.chomp.to_i
	puts num.to_c
	main
end

def main
puts "0: Dyadic Addition"
puts "1: Cubic Volume"
puts "2: Iteration Over Array Literal"
puts "3: email vde435@gmail.com"
puts "4: Compare Two Strings"
puts "5: Character Lookup"
puts "What is your selection?"
selection = gets.chomp

if selection == "0"
	add2
	elsif selection == "1"
		cubicvolume
	elsif selection == "2"
		iterationdemo
	elsif selection == "3"
		send_email "vde435@gmail.com", :body => "Email from the RAC"
	elsif selection == "4"
		comparestrings
	elsif selection == "5"
		integer_to_unicode
	elsif selection == "-1"
		abort "Program Ended"
	elsif
		main
	end
end 

main
