require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'game.rb'
require_relative 'start.rb'

Start.new(Game.new, Interface.new).new_game

# @interface = Interface.new
# @game = Game.new
# @interface.welcome
# @interface.get_player_name
