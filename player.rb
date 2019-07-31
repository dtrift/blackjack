class Player
  attr_accessor :name

  def initializa(name, money = 100)
    @money = money
    @current_cards = {}
    @name = name
  end

end
