
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
            8 => hash_h.merge({5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            9 => hash_h.merge({2 => "Double down if possible. If not Hit.", 3 => "Double down if possible. If not Hit.", 4 => "Double down if possible. If not Hit.",5 => "Double down if possible. If not Hit.",6 => "Double down if possible. If not Hit."})},
            10 => hash_dhit({10 => "Hit.", 11 => "Hit.",}),
            11 => hash_dhit,
            12 => hash_h.({4 => "Stand.", 5=> "Stand.", 6 => "Stand."}),
            13 => hash_h({2 => "Stand.",3 => "Stand.",4 => "Stand.",5 => "Stand.",6}),
            14 => hash_h({2 => "Stand.", 3 => "Stand.",4 => "Stand.",5 => "Stand.",6}),
            15 => hash_h({2 => "Stand.",3 => "Stand.",4 => "Stand.",5 => "Stand.",6}),
            16 => hash_h({2 => "Stand.",3 => "Stand.",4 => "Stand.",5 => "Stand.",6}),
            17 => hash_s.merge
            18 => hash_s.merge
            19 => hash_s.merge
            20 => hash_s.merge
            21 => hash_s.merge



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
dealer_card = dealer_card.to_i
user_card_total = card1.to_i + card2.to_i

p user_card_total
p dealer_card

if ace_checker(card1) == true || ace_checker(card2) == true
  puts hash_soft[user_card_total][dealer_card]
elsif card1 == card2
  puts hash_pair[user_card_total][dealer_card]
else
  puts hash_hard[user_card_total][dealer_card]
end
puts "#{hash_hard[8][5]} DEBUG"
puts user_card_total
