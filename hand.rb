# frozen_string_literal: true

class Hand
  attr_accessor :current_cards, :score

  def initialize
    @current_cards = []
    @score = 0
  end

  def get_card(card)
    @current_cards << card
    if card.value == 11 && @score + card.value > 21
      @score += 1
    else
      @score += card.value
    end
  end
end
