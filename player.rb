class Player
  attr_accessor :name

  def initialize(name, money = 100) # метод initialize и score вынести в модуль 
    @name = name
    @money = money
    @current_cards = []
  end

  def score

  end

end
