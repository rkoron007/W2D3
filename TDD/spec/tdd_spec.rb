require 'tdd'

RSpec.describe Array do

  describe "#my_uniq" do
    subject(:array) { Array.new([6,3,2,6,2]) }

    it "returns an empty array if array is empty" do
      expect([].my_uniq).to be_empty
    end

    it "removes duplicates" do
      expect(array.my_uniq).to eq([6,3,2])
    end

    it "returns original order" do
      expect(array.my_uniq).to eq([6,3,2])
    end
  end

  describe "#two_sum" do
    subject(:array) { Array.new([-1, 0, 2, -2, 1]) }

    it "returns an empty array if array is empty" do
      expect([].two_sum).to be_empty
    end

    it "return all indice pairs of positions where the elements sum to zero" do
      expect(array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns the indice pairs in order" do
      expect(array.two_sum).not_to eql([[2, 3], [0, 4]])
    end
  end

  describe "#my_transpose" do
    subject(:array) { Array.new([[0, 1, 2], [3, 4, 5], [6, 7, 8]]) }

    it "dimensions of original and new array match" do
      expect(array.my_transpose.length).to eq(3)
    end

    it "dimensions of original and new subarrays match" do
      expect(array.my_transpose[0].length).to eq(3)
    end

    it "correctly transposes the array" do
      expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

  describe "#stock_picker" do
    subject(:array) { Array.new([120,85,360,10,1000]) }

    it "returns an empty array if there are no days" do
      expect([].stock_picker).to eq([])
    end

    it "correctly returns the indices of the two best days" do
      expect(array.stock_picker).to eq([3,4])
    end

    it "does not return the best profit" do
      expect(array.stock_picker).not_to eql(990)
    end

  end
end
