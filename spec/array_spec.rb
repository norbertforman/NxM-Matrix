require 'helper_spec'
require 'byebug'

describe Array do
  describe "NxM Matrix output test" do
    it "empty matrix" do
      matrix = []
      expect(matrix.spiral_print).to eq([])
    end
    it "NxN matrix" do
      matrix = [
        [1,2,3,4,5],
        [6,7,8,9,10],
        [11,12,13,14,15],
        [16,17,18,19,20],
        [21,22,23,24,25]
      ]
      correct = [1, 2, 3, 4, 5, 10, 15, 20, 25, 24, 23, 22, 21, 16, 11, 6, 7, 8, 9, 14, 19, 18, 17, 12, 13]
      expect(matrix.spiral_print).to eq(correct)
    end
  end

  describe "Recurzive NxM Matrix output test" do
    it "empty matrix" do
      matrix = []
      expect(matrix.recurzive_spiral_print).to eq([])
    end
    it "NxN matrix" do
      matrix = [
        [1,2,3],
        [4,5,6],
        [7,8,9]
      ]
      correct = [1, 2, 3, 6, 9, 8, 7, 4, 5]
      expect(matrix.recurzive_spiral_print).to eq(correct)
    end
    it "NxM matrix where N > M" do
      matrix = [
        [1,2,3],
        [4,5,6]
      ]
      correct = [1, 2, 3, 6, 5, 4]
      expect(matrix.recurzive_spiral_print).to eq(correct)
    end
    it "NxM matrix where N < M" do
      matrix = [
        [1,2],
        [3,4],
        [5,6]
      ]
      correct = [1, 2, 4, 6, 5, 3]
      expect(matrix.recurzive_spiral_print).to eq(correct)
    end
  end
end
