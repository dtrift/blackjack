class Player
  attr_accessor :name, :money, :current_cards, :score

  def initialize(name, money = 100) # методы initialize, score, show_cards вынеси в модуль 
    @name = name
    @money = money
    @current_cards = []
    @score = 0
  end

end
