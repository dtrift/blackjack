# frozen_string_literal: true

class Card
  SUITS = ['♡', '♢', '♣', '♠'].freeze
  VALUES = {
    '2': 2, '3': 3, '4': 4,
    '5': 5, '6': 6, '7': 7,
    '8': 8, '9': 9, '10': 10,
    'J': 10, 'Q': 10, 'K': 10,
    'A': 11
  }.freeze

  attr_reader :name, :suit, :value

  def initialize(name, suit, value)
    @name = name.to_s
    @suit = suit
    @value = value
  end
end
