
def check_card(card)
  if card[0].downcase == "a"
    card = 11
  elsif card[0].downcase == "k" || card[0].downcase == "q" || card[0].downcase == "j"
    card = 10
  end
end

def ace_checker(card)
  if card == 11
    true
  end
end

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
hash_soft ={}
hash_pair = {}
puts "Welcome to the blackjack helper!"
puts "What is your first card?"
card1 = gets.chomp
puts "What is your second card?"
card2 = gets.chomp
puts "What is the dealer's card?"
dealer_card = gets.chomp
check_card(card1)
check_card(card2)
check_card(dealer_card)
user_card_total = card1.to_i + card2.to_i
if ace_checker(card1) == true || ace_checker(card2) == true
  puts hash_soft[user_card_total][dealer_card]
elsif card1 == card2
  puts hash_pair[user_card_total][dealer_card]
else
  puts hash_hard[user_card_total][dealer_card]
end
puts hash_hard[8][5]
puts user_card_total
