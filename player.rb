require_relative 'hand.rb'

class Player
  attr_accessor :name, :money, :hand

  def initialize(name = 'Player', money = 100)
    @name = name
    @money = money
    @hand = Hand.new
  end

  # def score
  #   19
  #   # @score_current_cards.sum
  # end

end
