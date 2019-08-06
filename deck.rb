class Deck

  def initialize
    @suits = ['♡', '♢', '♣', '♠' ]
  end

  def add_cards
    @cards = []

    ('2'..'9').each do |value|
      @suits.each do |suit|
        card = value, suit
        @cards << {card: card, value: value.to_i}
      end
    end

    ['10', 'J', 'Q', 'K'].each do |value|
      @suits.each do |suit|
        card = value, suit
        @cards << {card: card, value: 10}
      end
    end

    ['A'].each do |value|
      @suits.each do |suit|
        card = value, suit
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
