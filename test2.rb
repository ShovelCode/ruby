puts "Test 2 Up and Running!"
$value1
$value2

def validateValue1(num)
	if num > 100 and num < 150
		$value1 = num
	else 
		puts "Not in the correct range, enter again:"
		num2 = gets
		validateValue1(num2.to_i)
	end
end

puts "Enter number"
num = gets
validateValue1(num.to_i)
puts "Test 2 shutting down NOW!"