class Card

  SUITS = [ '♡', '♢', '♣', '♠' ]
  VALUES = { 
             '2': 2, '3': 3, '4': 4,
             '5': 5, '6': 6, '7': 7, 
             '8': 8, '9': 9, '10': 10,
             'J': 10, 'Q': 10, 'K': 10, 'A': 11 
                                                }
  attr_accessor :name, :suit, :value
  
  def initialize(name, suit, value)
    @name = name
    @suit = suit
    @value = value
  end

end
