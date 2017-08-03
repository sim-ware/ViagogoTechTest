require 'event'

describe Event do

  context "#initialize" do
    it "is initialized with empty attributes by default" do
      event = Event.new
      expect(event.coordinate.x).to eq 0
      expect(event.coordinate.y).to eq 0
    end
  end

end
