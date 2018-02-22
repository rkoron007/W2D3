require "hand"

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  let(:small_deck) { Deck.new([[:spades, 2], [:diamonds, 5]])}

end
