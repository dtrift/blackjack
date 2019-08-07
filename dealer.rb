class Dealer
  attr_accessor :money, :current_cards, :score_current_cards

  def initialize(money = 100)
    @money = money
    @current_cards = []
    @score_current_cards = []
  end

  def score
    @score_current_cards.sum
  end

end

@dealer = Dealer.new
