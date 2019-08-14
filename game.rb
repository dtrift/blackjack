require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'

class Game

  attr_accessor :deck, :dealer, :player, :interface

  def initialize
    @deck = Deck.new
    @dealer = Dealer.new
    @player = Player.new
    @interface = Interface.new
  end

  def new
    @interface.welcome
    @player.name = @interface.player_name
    hello
  end

  def hello
    @interface.say_hello(@player)
  end

end
