puts "Welcome to the blackjack helper!"
puts "Please enter Kings, Queens, and Jacks as 10, and Aces as A."
puts "What is your first card?"
card1 = gets.chomp
puts "What is your second card?"
card2 = gets.chomp
puts "What is the dealer's card?"
dealer_total = gets.chomp

card1 = 11 if card1 == "a"
card2 = 11 if card2 == "a"
dealer_total = 11 if dealer_total == "a"
player_total = card1 + card2
puts "Your total is #{player_total}"
