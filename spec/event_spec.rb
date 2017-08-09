require 'event'

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
    it "Creates the Amount of Ticket Objects supplied by Parameter" do
      event = Event.new
      event.create_tickets(300)
      expect(event.ticketlist.length).to eq 300
    end

    it "ensures Ticket Number is an Integer" do
      event = Event.new
      event.create_tickets(0.5)
      expect(event.ticketlist.length).to eq 0
    end
  end

end
