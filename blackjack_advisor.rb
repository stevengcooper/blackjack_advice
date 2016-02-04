
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

hit = Hash.new("You should Hit.")
stand = Hash.new("I think you should Stand.")
split = Hash.new("Here's a good chance to Split.")
double_hit = Hash.new("Double down if possible. If not Hit.")
double_stand = Hash.new("Double down if possible. If not Stand.")
hash_hard = {5 => hit,
            6 => hit,
            7 => hit,
            8 => hit.merge({5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            9 => hit.merge({2 => "Double down if possible. If not Hit.", 3 => "Double down if possible. If not Hit.", 4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            10 => double_stand.merge({10 => "Hit.", 11 => "Hit."}),
            11 => double_stand,
            12 => hit.merge({4 => "Stand.", 5=> "Stand.", 6 => "Stand."}),
            13 => hit.merge({2 => "Stand.", 3 => "Stand.", 4 => "Stand.", 5 => "Stand.", 6 => "Stand."}),
            14 => hit.merge({2 => "Stand.", 3 => "Stand.", 4 => "Stand.", 5 => "Stand.", 6 => "Stand."}),
            15 => hit.merge({2 => "Stand.", 3 => "Stand.", 4 => "Stand.", 5 => "Stand.", 6 => "Stand."}),
            16 => hit.merge({2 => "Stand.", 3 => "Stand.", 4 => "Stand.", 5 => "Stand.", 6 => "Stand."}),
            17 => stand,
            18 => stand,
            19 => stand,
            20 => stand,
            21 => stand
            }
hash_soft = {13 => hit({4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            14 => hit({4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            15 => hit({4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            16 => hit({4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            17 => => hit({2 => "Double down if possible. If not Hit.", 3 => "Double down if possible. If not Hit.", 4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit."}),
            18 => stand({3 => "Double down if possible. If not Hit.", 4 => "Double down if possible. If not Hit.", 5 => "Double down if possible. If not Hit.", 6 => "Double down if possible. If not Hit.",  9 => "You should Hit.", 10 => "You should Hit."})
            19
          }
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

if ace_checker(card1) == true || ace_checker(card2) == true
  puts hash_soft[user_card_total][dealer_card]
elsif card1 == card2
  puts hash_pair[user_card_total][dealer_card]
else
  puts hash_hard[user_card_total][dealer_card]
end
