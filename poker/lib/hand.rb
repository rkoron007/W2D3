require_relative "deck.rb"

class Hand

  def self.new_hand
    Hand.new(deck.take(5))
  end

  attr_reader :cards

  def initialize
    @cards = cards
  end

  def high_card
    @cards.values.max
  end

  def one_pair

  end

  def two_pair

  end

  def three_pair

  end

end


=begin
High card. If no combination can be made, then a player's hand is valued at the highest single card. If two players have the same high card, then the second highest card would break the tie.
Example: 5♣ 8♦ 10♠ Q♥ A♠
One Pair. A pair is formed when you have two of any of the same cards.
Example: 9♠ 9♦ 5♣ 8♣ K♥
Two Pairs. When more than one player has two pairs, the player with the highest pair wins.
Example: 9♠ 9♦ 5♣ 5♥ 8♥
Three of a Kind.
Example: 9♠ 9♦ 9♥ 5♣ 8♣
=end
