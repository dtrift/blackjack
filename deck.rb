require_relative 'card.rb'
require_relative 'hand.rb'

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
    @cards[0]
    @cards.shift
  end

end
