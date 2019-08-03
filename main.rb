require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'game_process.rb'

@bank = 0

def welcome
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
  puts " +         A♡ K♡                                                    + "
  puts " +    ---           ---    ---   |  *     --    ---    ---   |  *   + "
  puts " +   |   |  |      |   |  |   |  |*         |  |   |  |   |  |*     + "
  puts " +   |---   |      |   |  |      |          |  |   |  |      |      + "
  puts " +   |   |  |      |---|  |   |  |*    |    |  |---|  |   |  |*     + "
  puts " +    ---    ----  |   |   ---   |  *   ----   |   |   ---   |  *   + "
  puts " +                                                                  + "
  puts " ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
end

def play_game
  puts "Добро пожаловать в игру Blackjack!"
  puts "Как тебя зовут?"
  print "Имя: "
  @name = gets.chomp.capitalize
  @player = Player.new(@name)
  puts "Привет #{@player.name}! На твоем счету $#{@player.money}"
  2.times { @player.current_cards << @deck.first_card }
  2.times { @dealer.current_cards << @deck.first_card }
  puts
  puts "Карты #{@player.name} #{@player.current_cards}"
  puts "Карты дилера #{@dealer.current_cards}"
end

@deck = Deck.new
@deck.add_cards
@dealer = Dealer.new
welcome
play_game
