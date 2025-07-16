# April 7, 2025

# Goal:
# To get as close as possible to 21, without going over.

# Card Values:
# Cards 2-10 are worth their face value
# Jack, Queen, King are each worth 10
# Ace is worth either 1 or 11
# (ace's value is determined each time a new card is drawn from the deck)

# Setup:
# The dealer and player are each dealt two cards.
# The player can see both of their two cards, but only one of the dealer's cards
# The player takes their turn first

# Gameplay:
# Player turn: the player can decide to either "hit" or "stay"
# The player can continue to hit as many times as they want
# The turn is over when the player either busts or stays
# If the player busts, the game is over and the dealer won

# Dealer turn: when the player stays, it's the dealer's turn
# The dealer must follow a rule for whether to hit or stay:
# hit until the total is at least 17
# If the dealer busts, then the player wins

# Comparing cards:
# when both the player and the dealer stay, it's time to compare
# the total value of the cards and see who has the highest value

# High Level Pseudocode:
# 1. Initialize deck
# 2. Deal cards to player
# 3. Deal cards to dealer
# 4. Player turn: hit or stay
#   - repeat until bust or "stay"
# 5. If player bust, dealer wins
# 6. Dealer turn: hit or stay
#   - repeat until total >= 17
# 7. If dealer bust, player wins
# 8. If neither player nor dealer bust, compare cards & declare winner

### CODE ###

def prompt(msg)
  puts "=> #{msg}"
end

# Suits and Values
SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

# Figure out whether the player or dealer has busted
def busted?(deck)
  total(deck) > 21
end

# Initialize the Deck
def initialize_deck(suits, values)
  values.each_with_object([]) do |value, array|
    suits.each { |suit| array << [suit, value] }
  end
end

# Deal Card to Player or Dealer

def deal_card(main_deck, deck)
  deck << main_deck.shuffle!.pop
end

# Calculate the total value of cards in the player's deck or dealer's deck

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0 # references the total value of cards in the deck
  values.each do |value|
    if value == "A" # if value is "A", add 11 to the total
      sum += 11
    elsif value.to_i == 0 # if value is "J", "Q", or "K", add 10
      sum += 10
    else
      sum += value.to_i # else, convert the value to an integer
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21 # makes each "A" in deck worth 1 if sum is > 21
  end

  sum
end

# Calculate Result of Game
def calculate_result(dealer_deck, player_deck)
  if total(dealer_deck) > total(player_deck)
    "Dealer"
  elsif total(dealer_deck) < total(player_deck)
    "Player"
  end
end

# Display Result of Game
def display_result(dealer_deck, player_deck)
  if calculate_result(dealer_deck, player_deck) == "Dealer"
    prompt "The dealer won this game!"
    prompt "Dealer total: #{total(dealer_deck)}"
    prompt "Player total: #{total(player_deck)}"
  elsif calculate_result(dealer_deck, player_deck) == "Player"
    prompt "Congratulations! You've won this game."
    prompt "Dealer total: #{total(dealer_deck)}"
    prompt "Player total: #{total(player_deck)}"
  else
    prompt "It's a tie!"
    prompt "Dealer total: #{total(dealer_deck)}"
    prompt "Player total: #{total(player_deck)}"
  end
end

# Ask to play again
def play_again?
  prompt "Would you like to play again? (y/n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

### START GAME ###

prompt "Welcome to 21 - press enter to continue"
gets
system('clear')

loop do
  loop do
    deck = initialize_deck(SUITS, VALUES)
    player_deck = []
    dealer_deck = []
    2.times { deal_card(deck, player_deck) }
    2.times { deal_card(deck, dealer_deck) }

    prompt "The dealer has dealt you two cards: #{player_deck}"
    prompt "Your total is now: #{total(player_deck)}"
    prompt "Here is one of the dealer's cards: #{dealer_deck[0]}"

    answer = nil
    loop do
      prompt "hit or stay?"
      answer = gets.chomp.downcase
      system "clear"

      if answer == 'hit'
        # Deal a card to the player
        deal_card(deck, player_deck)
        prompt "Here's your updated deck: #{player_deck}"
        prompt "Your total is now: #{total(player_deck)}"
      end

      break if answer == 'stay' || busted?(player_deck)
    end

    # If player busts, dealer wins

    if busted?(player_deck)
      prompt "You busted! The dealer won this game."
      prompt "Press enter to continue"
      gets
      system "clear"
      break
    else
      prompt "You chose to stay. Now it's the dealer's turn"
      prompt "Press enter to continue"
      gets
    end

    system('clear')

    # Dealer Turn

    answer = nil
    loop do
      if busted?(dealer_deck)
        break
      elsif total(dealer_deck) >= 17
        prompt "The dealer has chosen to stay."
        break
      else
        prompt "The dealer has chosen to hit."
        prompt "Dealing a card to the dealer..."
        deal_card(deck, dealer_deck)
        prompt "Press enter to continue"
        gets
        system "clear"
        prompt "Dealer's turn again:"
      end
    end

    if busted?(dealer_deck)
      prompt "The dealer busted! You won this game"
      prompt "Dealer total: #{total(dealer_deck)}"
      prompt "Player total: #{total(player_deck)}"
      break
    else
      prompt "You & the dealer have now chosen to stay. Let's compare cards..."
      prompt "Press enter to continue"
      gets
      system "clear"
      # Calculate and display result
      display_result(dealer_deck, player_deck)
      break
    end
  end
  # Ask to play again
  break unless play_again?
  system "clear"
  prompt "Press enter to start the next game"
  gets
  system "clear"
end

prompt "Thank you for playing 21. Goodbye!"
