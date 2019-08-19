# frozen_string_literal: true

require_relative 'card.rb'
class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::VALUES.each do |name, value|
        @cards << Card.new(name, suit, value)
      end
    end
    @cards.shuffle!
  end

  def first_card
    @cards.shift
  end
end
