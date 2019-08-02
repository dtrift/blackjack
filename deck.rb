class Deck
  attr_reader :cards

  def initialize
    @suits = ['♡', '♢', '♣', '♠' ]
    @cards = []
  end

  def add_item

    ('2'..'9').each do |val|
      @suits.each do |su|
        card = val, su
        @cards << {card => val.to_i}
      end
    end

    ['10', 'J', 'Q', 'K'].each do |val|
      @suits.each do |su|
        card = val, su
        @cards << {card => 10}
      end
    end

    ['A'].each do |val|
      @suits.each do |su|
        card = val, su
        @cards << {card => 11}
      end
    end

  end

  def random_card
    @cards.sample
  end

end
