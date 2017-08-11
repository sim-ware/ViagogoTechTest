require 'event'
require 'ticket'

describe Event do

  context "#initialize" do
    it "is initialized with empty attributes by default" do
      event = Event.new
      expect(event.coordinate.x).to eq 0
      expect(event.coordinate.y).to eq 0
      expect(event.id).to eq 0
      expect(event.ticketlist).to eq []
      expect(event.manhattan_distance).to eq 0
    end
  end

  context "#create_tickets" do
    it "Creates Random No. Between 0 and 5 Ticket Objects and Sets their Prices to Random Floats" do
      event = Event.new
      event.create_tickets
      expect(event.ticketlist.length).to be_within(2.5).of(2.5)
      expect(event.ticketlist[0].price).to be_instance_of String
    end
  end

  context "#create_prices" do
    it "creates Prices for the Event's Tickets" do
      event = Event.new
      event.create_tickets
      event.create_prices
      expect(event.ticketlist[0].price).to be_instance_of String
    end
  end

end
