class Dealer
  attr_accessor :money, :current_cards, :score

  def initialize(money = 100)
    @money = money
    @current_cards = []
    @score = 0
  end

end

@dealer = Dealer.new
