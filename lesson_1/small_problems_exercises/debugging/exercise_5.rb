# April 20, 2025      Card Deck 

# We started working on a card game but got stuck. Check out why the code below raises a TypeError.

# Once you get the program to run and produce a sum, you might notice that the sum is off: It's lower than it should be. Why is that?

# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

# deck = { :hearts   => cards,
#          :diamonds => cards,
#          :clubs    => cards,
#          :spades   => cards }

# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end

# # Pick one random card per suit

# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end

# # Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end

#   sum += remaining_cards.sum
# end

# puts sum



### SOLUTION ###

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum

# ANSWER PART 1:

# The reason this TypeError is thrown is because with the reduce method, we are trying to add values together that are not integers and are instead symbols, which we cannot do. When we try to determine the score of the remaining cards in the deck, we attempt to use the reduce method to add all the scores together (all the remaining cards for each suit). However, when we invoke the map method, this returns a new array of scores, and what we're trying to add together all the cards from the the original arrays that are in our deck hash. In order to transform the values in our deck hash in place, we need to use the destructive version (map!) which will mutate the values in place, transforming them from cards like :king and :ace to scores like 10 and 11. This will allow us to add all the scores together without getting a TypeError. 

# ANSWER PART 2:

# When we run this code and it executes successfully, the sum is much lower than it should be. This is because when we initialize our deck in the beginning of the program, the values for each suit all share a reference because they all point to the same object in memory, the cards array. Therefore, when we try to remove one card from each suit and add it to player cards, this will affect the cards of every single suit, because they all share a reference. If we remove a 10 from :clubs, this 10 will be removed from all other suits. Therefore, our sum at the end is much lower because instead of just removing 4 cards from the main deck, we removed 16 (four from each suit). To fix this, I invoked the clone method on each value (cards) when we initialize the deck. Therefore, each group of cards will still have the same value, but they are all different objects and no longer share a reference, meaning that when we remove a card from one suit, it will not affect any other suits. This will give us the correct sum at the end of our program. 