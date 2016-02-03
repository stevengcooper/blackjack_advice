hash_h = Hash.new("Hit")
hash_s = Hash.new("Stand")
hash_sp = Hash.new("Split")
hash_dhit = Hash.new("Double down if possible. If not Hit.")
hash_dstand = Hash.new("Double down if possible. If not Stand.")
hash_hard = {5 => hash_h,
            6 => hash_h,
            7 => hash_h,
            8 => hash_h.merge({5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."})
            }

puts "Welcome to the blackjack helper!"
puts "Please enter Kings, Queens, and Jacks as 10, and Aces as A."
puts "What is your first card?"
card1 = gets.chomp
puts "What is your second card?"
card2 = gets.chomp
puts "What is the dealer's card?"
dealer_total = gets.chomp

def add_users_cards(card1,card2)
  if card1 == "A"
    card1 = 11
  end
  if card2 == "A"
    card2 = 11
  end
  player_total = card1.to_i + card2.to_i
end
puts hash_h[5]
