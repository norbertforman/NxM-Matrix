require 'helper_spec'

describe Array do
  describe "NxM Matrix output test" do
    it "empty matrix" do
      matrix = []
      expect(matrix.spiral_print).to eq([])
    end
  end
end
