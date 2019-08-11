require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'logic.rb'
require_relative 'interface.rb'
require_relative 'game.rb'

@game = Game.new
@game.interface.welcome
# @game.interface.get_player_name
