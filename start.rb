require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'game.rb'
require_relative 'start.rb'

class Start
  attr_accessor :game_interface, :player, :dealer

  def initialize(interface)
    @game_interface = interface
    # @game = game
    @dealer = Dealer.new
    @player = nil
  end

  def new_game
    @game_interface.welcome
    @player = Player.new(game_interface.player_name)
    # player_name
    # @game.interface.get_player_name
  end

  def player_name
    @player.name
    # puts @player.name
  end

end
