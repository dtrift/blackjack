require_relative 'hand.rb'

class Player
  attr_accessor :name, :money
  attr_reader :hand

  def initialize(name = 'Player', money = 100)
    @name = name
    @money = money
    @hand = Hand.new
  end

end
