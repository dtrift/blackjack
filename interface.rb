require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'game.rb'
require_relative 'start.rb'

class Interface

  # def game
  #   @start.game
  # end

  # def initialize(game)
  #   @game = game
  # end

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
  end

  def player_name
    print "Как тебя зовут?: "
    gets.chomp.capitalize
  end

end
