class Player
  attr_accessor :name, :money, :current_cards, :score_current_cards

  def initialize(name, money = 100)
    @name = name
    @money = money
    @current_cards = []
    @score_current_cards = []
  end

end
