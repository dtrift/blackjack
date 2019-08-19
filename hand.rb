# frozen_string_literal: true

class Hand
  attr_accessor :current_cards, :score, :show_cards

  def initialize
    @current_cards = []
    @show_cards = []
    @score = 0
  end

  def get_card(card)
    @current_cards << card
    @show_cards << [card.name, card.suit].join
    if card.value == 11 && @score + card.value > 21
      @score += 1
    else @score += card.value
    end
  end
end
