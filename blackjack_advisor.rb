def blackjack_helper
  puts "Welcome to the blackjack helper!"
  puts "Please enter Kings, Queens, and Jacks as 10, and Aces as A."
  puts "What is your first card?"
  card1 = gets.chomp
  puts "What is your second card?"
  card2 = gets.chomp
  puts "What is the dealer's card?"
  dealer_total = gets.chomp

  if card1 == "A"
    card1 = 11
  end
  if card2 == "A"
    card2 = 11
  end
  player_total = card1.to_i + card2.to_i
  puts "Your total is #{player_total}"
end
blackjack_helper
