require "card"

RSpec.describe Card do
  subject(:card) { Card.new(:spades, 2) }

    describe "#initialize" do
      it "initializes with a suit and a value" do
        expect(card.suit).to eq(:spades)
        expect(card.value).to eq(2)
      end
    end
end
