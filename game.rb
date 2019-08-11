require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'logic.rb'
require_relative 'interface.rb'

class Game
  attr_accessor :deck, :dealer, :interface, :player

  def initialize
    @deck = Deck.new
    @dealer = Dealer.new
    @interface = Interface.new
  end

  def new_player(player_name)
    @player = Player.new(player_name)
  end

end
