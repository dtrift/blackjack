require_relative 'card.rb'
require_relative 'deck.rb'

class Hand
  attr_accessor :current_cards

  def initialize
    @current_cards = []
  end

  def get_card(card)
    @current_cards << card
  end

  def score

  end

end
