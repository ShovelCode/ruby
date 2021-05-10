class Wheel
  # array of black numbers
  $black_numbers = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35]
  # array of red numbers
  $red_numbers = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36]

  # constructor
  def initialize(bank, bet, color, goal)
    @bank = bank
    @initial_bank = bank
    @bet = bet
    @color = color
    @goal = goal
  end

  # method that prints out user's input
  def print_results
    puts "For your bank you entered: $" + @bank.to_s
    puts "For the amount to bet you entered: $" + @bet.to_s
    puts "For the color you want to bet you entered: " + @color.to_s
    puts "For your goal amount you entered: $" + @goal.to_s
  end

  # method that displays message when player loses all his available bank
  def you_lose
    puts
    puts "I'm sorry you are out of money.  You need more than $" + @initial_bank.to_s + " to win your goal of $" + @goal.to_s
  end

  # method that displays message when player wins enough money up to his stated goal
  def you_win
    puts
    puts "You win! $" + @initial_bank.to_s + " was enough for you to win your goal of $" + @goal.to_s
  end

  # method that generates random number from 0-38 (roulette wheel has 38 slots)
  def spin
    rand_num = rand(38) # function generates random number from 0-37 (0 and 37 representing green numbers)

    if $black_numbers.include?(rand_num) # if random number generated is a black number then wheel_color set to black
      wheel_color = "black"
    elsif $red_numbers.include?(rand_num) # if random number generated is a red number then wheel_color set to red
      wheel_color = "red"
    else
      wheel_color = "green" # else wheel_color is set to green
    end
  end

  # simulated roll that calls spin method
  # returns value true/false to simulate win
  def roll
    winning_color = spin #@ calls spin method

    if @color == winning_color # compares users choice of color with randomly generated color
      win = true
    else
      win = false
    end
  end

  # prints winning message if roll won
  def win_roll
    printf("$%-20sWin $%-14s $%-s", @bet.to_s, @bet.to_s, (@bank + @bet).to_s)
    puts
  end

  # prints losing message if roll lost
  def lose_roll
    printf("$%-20sLose $%-13s $%-s", @bet.to_s, @bet.to_s, (@bank - @bet).to_s)
    puts
  end

  # method that adds the amount of the bet to the players bank if the player wins the round
  def bet_won
    @bank += @bet
  end

  # method that subtracts the amount of the bet from the players bet if player loses the round
  def bet_lost
    @bank -= @bet
  end

  # method that doubles the bet amount
  def double_bet
    @bet *= 2
  end

end

begin   # beginning of exception handling for the first input

  puts "How much money do you want to start with in your bank?"
  bank = gets.chomp.to_i  # converted to integer
  if bank <= 0    # Must bet at least one dollar
    raise 'Enter a valid amount'  #if not it raises the exception with the message
  end
rescue Exception => e # catches the exception
  puts e.message #  prints message given to the exception
  retry # sends user back to the command prompt asking them to put their input
end # ending to the exception handling

begin

  puts "What is the amount you want to bet?"
  bet = gets.chomp.to_i # converted to integer
  if bet <= 0 # ensures bet is at least one dollar
    raise 'Enter a valid amount'  # if not the exception is raised
  end
rescue Exception => e # exception is captured
  puts e.message  # error message is printed
  retry # user gets a chance to right his wrongs (starts again from begin statement)
end

begin

  puts "What color do you want to bet on? Please enter 'red' or 'black'"
  color = gets.chomp.downcase.to_s #  converts to lowercase and into a string
  if (color != "red") && (color != "black") # if the value doesn't match red or black
    raise 'Ener Red or Black'               # then exception is raised
  end
rescue Exception => e # exception is caught
  puts e.message      # error message is printed
  retry # you done goofed, try again (starts again from begin statement)
end

begin

  puts "What is the total amount of money you want your bank to reach?"
  goal = gets.chomp.to_i # converted to integer
  if bank >= goal # goal has to be bigger than the bank, or else why even play?
    raise 'Be profitable you buffoon' # try to make at least one dollar
  end
rescue Exception => e # exception is caught
  puts e.message  # user gets an inspirational message, shoot for the stars
  retry # back to the top (starts again from begin statement)
end
# boolean that keeps the rolls active in the while loop
# changes to false only if the player wins up to his goal amount or loses his bank
play = true

# new object created
sucker = Wheel.new(bank, bet, color, goal)
puts
sucker.print_results # prints players input

puts
# puts "Bet\t\t\t\tWin/Lose\t\t\t\tAmount" # prints heading
printf("%-20s %-20s%-s", "Bet", "Win/Loss", "Amount")
puts

while play # while boolean flag == true then wheel will continue spinning

  if bet > bank # if bet is greater than player's bank then player loses
    sucker.you_lose
    play = false
  elsif bank == goal || bank > goal # if bank is equal to or greater than goal then player wins
    sucker.you_win
    play = false
  else # if neither above choice then wheel keeps spinning
    did_win = sucker.roll # Wheel object call roll method to simulate roll

    # if player wins the round then winning round is printed, bet amount is added to players bank and the
    # bet amount is doubled
    if did_win == true
      sucker.win_roll
      bank = sucker.bet_won
      bet = sucker.double_bet

    # if player loses the round then losing round is printed, bet amount is subtracted from player's bank and the
    # bet amount is doubled
    else
      sucker.lose_roll
      bank = sucker.bet_lost
      bet = sucker.double_bet
    end

  end


end
