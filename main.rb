# frozen_string_literal: true

require_relative 'player.rb'
require_relative 'dealer.rb'
require_relative 'deck.rb'
require_relative 'interface.rb'
require_relative 'game.rb'

game = Game.new(Interface.new)
game.start
