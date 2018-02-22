require_relative 'card'

class Deck
  attr_reader :cards

  def initialize(cards = Deck.default_cards)
    @cards = cards
  end

  def take(num_cards)
    raise "not enough cards!" if num_cards > self.count
    cards.pop(num_cards)
  end

  def count
    cards.length
  end

  private

  def self.default_cards
    deck = []

    Card.default_suits.each do |suit|
      Card.default_values.each do |value|
        deck << Card.new(suit, value)
      end
    end

    deck.shuffle!
  end
end
