class Card
  CARD_SUITS = [:spades, :hearts, :diamonds, :clubs]

  CARD_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

  def self.default_suits
    CARD_SUITS
  end

  def self.default_values
    CARD_VALUES
  end

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end
