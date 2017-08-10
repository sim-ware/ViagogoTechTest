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
    end
  end

  context "#id_setter" do
    it "sets the Event's ID Attribute to the parameter supplied" do
      event = Event.new
      event.id_setter(1)
      expect(event.id).to eq 1
    end
  end

  context "#create_tickets" do
    it "Creates 3 Ticket Objects and Sets their Prices to Random Floats" do
      event = Event.new
      event.create_tickets
      expect(event.ticketlist.length).to eq 3
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
