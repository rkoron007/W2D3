require "deck"

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  let(:card1) { double("card1", :suit => :spades, :value => 2) }
  let(:card2) { double("card2", :suit => :diamonds, :value => 5) }
  let(:small_deck) { Deck.new([card1, card2])}

    describe "#initialize" do
      it "initializes with 52 cards" do
        expect(deck.cards.length).to eq(52)
      end

      it "initializes with unique cards" do
        expect(deck.cards.uniq.length).to eq(deck.cards.length)
        expect(small_deck.cards.uniq.length).to eq(small_deck.cards.length)
      end

      it "initializes as shuffled" do

      end
    end

    describe "#take" do

      it "reduces the deck" do
        small_deck.take(1)
        expect(small_deck.cards).to eq([card1])
      end

      it "return the taken cards" do
        expect(small_deck.take(1)).to eq([card2])
      end

      it "raises an error if there are not enough cards" do
        expect{ small_deck.take(3) }.to raise_error("not enough cards!")
      end
    end

    describe "#count" do

      it "counts the cards" do
        expect(small_deck.count).to eq(2)
      end
    end
end
