require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'game_process.rb'

def welcome
  puts
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
  puts " +         A♡ K♡                                                    + "
  puts " +    ---           ---    ---   |  *     --    ---    ---   |  *   + "
  puts " +   |   |  |      |   |  |   |  |*         |  |   |  |   |  |*     + "
  puts " +   |---   |      |   |  |      |          |  |   |  |      |      + "
  puts " +   |   |  |      |---|  |   |  |*    |    |  |---|  |   |  |*     + "
  puts " +    ---    ----  |   |   ---   |  *   ----   |   |   ---   |  *   + "
  puts " +                                                                  + "
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
  puts
  puts "Добро пожаловать в игру Blackjack!"
  puts
end

def get_player_name
  puts "Как тебя зовут?"
  print "Имя: "
  @name = gets.chomp.capitalize
  @player = Player.new(@name)
  puts "Привет #{@player.name}! На твоем счету $#{@player.money}"
end

def start_game
  balance_info
  2.times { player_one_more_card }
  2.times { dealer_one_more_card }
  @player.show_cards
  puts "Карты #{@player.name}: #{@player.show}"
  @player.score
  puts "Сумма: #{@player.sum_cards}"
  puts "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-"
  puts "Карты дилера: ************"
  puts "Сумма: **"
  puts
end

def balance_info
  puts
  puts "| Ставка $10 |"
  puts
  puts "| Баланс | #{@player.name}: $#{@player.money} | Дилер: $#{@dealer.money} | Банк $#{@bank} |"
  puts
end

def put_money_bank
  @bank = 0
  @player.money -= 10
  @dealer.money -= 10
  @bank += 20
end

def player_one_more_card
  @player.current_cards << @deck.first_card
end

def dealer_one_more_card
  @dealer.current_cards << @deck.first_card
end

def player_win

end

def player_lose

end

welcome
get_player_name
put_money_bank
start_game
