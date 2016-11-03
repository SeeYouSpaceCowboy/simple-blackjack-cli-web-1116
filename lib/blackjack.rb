def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(cards)
  # code #display_card_total here
  puts "Your cards add up to #{cards}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(input)
  # code hit? here
  prompt_user
  user = get_user_input
  user == 'h' ? input += deal_card : input
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current = initial_round
  while current < 21 do
    current = hit?(current)
    display_card_total(current)
  end
  end_game(current) 
end
