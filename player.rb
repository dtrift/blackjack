class Player
  attr_accessor :name
  attr_reader :money, :current_cards, :sum_cards

  def initialize(name, money = 100) # метод initialize и score вынести в модуль 
    @name = name
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
