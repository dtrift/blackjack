class Dealer
  attr_reader :money, :current_cards, :sum_cards

  def initialize(money = 100)
    @money = money
    @current_cards = []
    @sum_cards = 0
  end

  def score
    @current_cards.each do |card|
      @sum_cards += card[:value]
    end
  end
end
