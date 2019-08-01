class Deck
  attr_reader :cards

  def initialize
    @suits = ['♡', '♢', '♣', '♠' ] 
    @cards = {}
  end

  def add_item

    ('2'..'9').each do |val|
      @suits.each do |su|
        card = val, su
        @cards.store(card, val.to_i)
      end
    end

    ['10', 'J', 'Q', 'K'].each do |val|
      @suits.each do |su|
        card = val, su
        @cards.store(card, 10)
      end
    end

  end

  def random_card
    @random_card = @cards.keys
    @random_card[rand(@random_card.size)]
  end

end
