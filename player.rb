class Player
  attr_accessor :name, :money
  attr_reader :current_cards, :sum_cards, :show

  def initialize(name, money = 100) # метод initialize и score вынести в модуль 
    @name = name
    @money = money
    @current_cards = []
    @sum_cards = 0
    @show = []
  end

  def score
    @current_cards.each do |card|
      @sum_cards += card[:value]
    end
  end

  def show_cards
    @current_cards.each do |card|
      @show << card[:card]
    end
  end

end
