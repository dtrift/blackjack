require_relative 'hand.rb'

class Dealer
  attr_accessor :money, :hand

  def initialize(money = 100)
    @money = money
    @hand = Hand.new
  end

  # def score

  # end

end
