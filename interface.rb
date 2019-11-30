horses = ["Aurora", # 0
          "Dissidents", # 1
          "Indiscipline", # 2
          "Treefingers", # 3 
        ]

balance = 100
continue = "Y"
while continue == "Y" && balance > 0
  puts "Welcome!"
  puts "Horses running today:"

  # Display horses for the day
  horses.each_with_index do |horse, index|
    puts "#{index + 1}. #{horse}"
  end

  # Get user choice as an integer
  puts "Which horse would you like to bet on? Pick a number"
  user_pick_index = gets.chomp.to_i - 1

  # Pick the winner
  winner = horses.sample

  # Determine the race result
  if winner == horses[user_pick_index]
    balance += 50
    puts "You win!"
  else
    balance -= 10
    puts "You lose, the winning horse was #{winner}"
  end

  puts "Your balance is #{balance}$"
  puts "Would you like to play again? Y|N"
  continue = gets.chomp
end

if balance == 0
  puts "Go home, you're broke!"
else
  puts "Thanks for playing!"
end

# Part 1 - Simple horse race program 
# 1 - Define horses running (as an array) 
# 2 - Display names of horses running today (using .each_with_index) 
# 3 - Ask end-user which horse they want to bet on
# 4 - Get end-user's choice (pick a number between 0 and 3) 
# 5 - Pick a winner (.sample the horse) 
# 6 - Display race results (compare winning horse with our choice)

# Part 2 - Loop
# 1 - At the end of the race, ask end-user if they want to play again
# 2 - Store end-user's choice
# 3 - Loop with while / until based on end-user's choice

# Part 3 - Money
# Start with 100, +50 if win, or -10 if lose