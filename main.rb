require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'game.rb'
require_relative 'start.rb'

@start = Start.new(Interface.new)
@start.new_game


# Start.new(Interface.new, Game.new).new_game

# @start = Start.new(Game.new, Interface.new)
# @start.new_game
