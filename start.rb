require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'game.rb'
require_relative 'start.rb'

class Start
  attr_accessor :game, :interface

  def initialize(game, interface)
    @game = game
    @interface = interface
  end

  def new_interface

  end

  def new_game
    @interface.welcome
    @interface.get_player_name
  end

end
