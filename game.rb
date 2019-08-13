require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'

class Game

  attr_accessor :deck, :dealer, :player, :interface

  def initialize
    @interface = Interface.new
    @deck = Deck.new
    @dealer = Dealer.new
    @player = Player.new
  end

  # def start
  #   @interface.welcome
  #   set_player_name
  # end

  # def set_player_name
  #   @player.name = @interface.get_player_name
  # end

  def new
    @interface.welcome
    @interface.get_player_name
  end

  # def player_name(name)
  #   @player.name = name
  # end

end
