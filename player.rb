class Player
  attr_accessor :name, :money, :current_cards, :score_current_cards

  def initialize(name = 'Player', money = 100)
    @name = name
    @money = money
    @current_cards = []
    @score_current_cards = []
  end

  def score
    @score_current_cards.sum
  end

end
