require 'coordinate'

describe Coordinate do

  context "#initialize" do
    it "is initialized with empty coordinates by default" do
      coordinate = Coordinate.new
      expect(coordinate.x).to eq 0
      expect(coordinate.y).to eq 0
    end
  end

  context "#set" do
    it "coordinates can be set to integers" do
      coordinate = Coordinate.new
      coordinate.set(-10, 10)
      expect(coordinate.x).to eq -10
      expect(coordinate.y).to eq 10
    end
  end

end
