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
    @player = Player.new
  end
  
end
