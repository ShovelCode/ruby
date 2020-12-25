puts "Roulette Program has started!"

$accountValue
$totalAmountWanted

class Wheel
	$betValue
	
	attr_accessor :c
	
	def initialize()
		$betValue = 0
	end
	
	def spinWheel()
		rand(38)
	end
	
	def determineColor(num)
		case num
		when 1
			return "red"
		when 2
			return "black"
		when 3
			return "red"
		when 4
			return "black"
		when 5
			return "red"
		when 6
			return "black"
		when 7
			return "red"
		when 8
			return "black"
		when 9
			return "red"
		when 10
			return "black"
		when 11
			return "black"
		when 12
			return "red"
		when 13
			return "black"
		when 14
			return "red"
		when 15
			return "black"
		when 16
			return "red"
		when 17
			return "black"
		when 18
			return "red"
		when 19
			return "red"
		when 20
			return "black"
		when 21
			return "red"
		when 22
			return "black"
		when 23
			return "red"
		when 24
			return "black"
		when 25
			return "red"
		when 26
			return "black"
		when 27
			return "red"
		when 28
			return "black"
		when 29
			return "black"
		when 30
			return "red"
		when 31
			return "black"
		when 32
			return "red"
		when 33
			return "black"
		when 34
			return "red"
		when 35
			return "black"
		when 36
			return "red"
		when 37
			return "green"
		when 38
			return "green"
		end
	end
	
	def placeBet(num)
	end
	
	def doubleUp()
	end
	
	def validateAccountValue(num)
		if num >= 0
			$accountValue = num
		else
			puts "Amount too small, enter again:"
			self.validateAccountValue(gets.to_i)
		end
	end
end

puts "\n"
GameWheel = Wheel.new
puts "How much do you have to begin with? >> "
GameWheel.validateAccountValue(gets.to_i)
puts "What is your point goal? >> "
$totalAmountWanted = gets.to_i

until $accountValue >= $totalAmountWanted
	puts "\n\n"
	puts "Account value: #{$accountValue}"
	if $accountValue <= 0
		puts" Not enough funds"
		break
	end
	puts "What color do you bet on? >> "
	colorBetOn = gets
	colorBetOn.strip! #important
	if colorBetOn == "exit" then
		break
	end
	puts "How much do you bet? >> "
	bet = gets.to_i
	$accountValue -= bet
	roll = GameWheel.spinWheel()
	colorOfRoll = GameWheel.determineColor(roll)
	colorOfRoll.strip! #also important
	puts "The ball has landed on #{roll}, which is of color #{colorOfRoll}!"
		
	if colorOfRoll == colorBetOn then
		puts "You win!"
		$accountValue += bet
		$accountValue += bet
	elsif colorOfRoll != colorBetOn
		puts "You lose!"
	else
		puts "I don't know how I got here."
	end
end

puts "Roulette program terminated!"
