class Deck
  attr_reader :cards

  def initialize
    @suits = ['♡', '♢', '♣', '♠' ]
  end

  def add_cards
    @cards = []

    ('2'..'9').each do |val|
      @suits.each do |su|
        card = val, su
        @cards << {card: card, value: val.to_i}
      end
    end

    ['10', 'J', 'Q', 'K'].each do |val|
      @suits.each do |su|
        card = val, su
        @cards << {card: card, value: 10}
      end
    end

    ['A'].each do |val|
      @suits.each do |su|
        card = val, su
        @cards << {card: card, value: 11}
      end
    end

    @cards.shuffle!

  end

  def first_card
    @cards[0]
    @cards.shift
  end

end

@deck = Deck.new
