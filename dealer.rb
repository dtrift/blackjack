require_relative 'hand.rb'

class Dealer
  attr_accessor :money
  attr_reader :hand

  def initialize(money = 100)
    @money = money
    @hand = Hand.new
  end

end
