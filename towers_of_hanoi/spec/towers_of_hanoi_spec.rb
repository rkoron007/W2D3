require 'towers_of_hanoi'

RSpec.describe TowersOfHanoi do
  subject(:hanoi) { TowersOfHanoi.new }

  describe "#initialize" do
    it "initializes with default towers" do
      expect(hanoi.towers).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#valid_play?" do
    let(:bad_hanoi) { TowersOfHanoi.new([[3], [], [2, 1]]) }

    it "determines if a move is valid" do
      expect{bad_hanoi.valid_play?(1, 0)}.to raise_error("tower is empty!")
    end

    it "return false if bigger disc tries to move onto a smaller disc" do
      expect(bad_hanoi.valid_play?(0, 2)).to be false
    end

    it "return false if bigger disc tries to move onto a smaller disc" do
      expect(bad_hanoi.valid_play?(0, 2)).to be false
    end
  end

  describe "#move" do
    it "the disc moves to the new position" do
      expect(hanoi.move(0,1)).to eq([[3, 2], [1], []])
    end
  end

  describe "#won?" do
    let(:good_hanoi) { TowersOfHanoi.new([[], [], [3, 2, 1]]) }
      it "will return true if player won" do
        expect(good_hanoi.won?).to be true
      end

    let(:bad_hanoi) { TowersOfHanoi.new([[3], [], [2, 1]]) }

      it "will return true if player won" do
        expect(bad_hanoi.won?).to be false
      end

  end

end
