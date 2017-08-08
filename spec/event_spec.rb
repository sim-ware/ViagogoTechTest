require 'event'

describe Event do

  context "#initialize" do
    it "is initialized with empty attributes by default" do
      event = Event.new
      expect(event.coordinate.x).to eq 0
      expect(event.coordinate.y).to eq 0
      expect(event.id).to eq 0
      expect(event.tickets).to eq 0
      expect(event.price).to eq 0
    end
  end

  context "#id_setter" do
    it "sets the Event's ID Attribute to the parameter supplied" do
        event = Event.new
        event.id_setter(1)
        expect(event.id).to eq 1
    end
  end

  context "#ticket_setter" do
    it "sets the Event's Ticket Number to the parameter supplied" do
      event = Event.new
      event.ticket_setter(300)
      expect(event.tickets).to eq 300
    end

    it "ensures Ticket Number is an Integer" do
      event = Event.new
      event.ticket_setter(0.5)
      expect(event.tickets).to eq 0
    end
  end

  context "#price_setter" do
    it "sets the Event's Price to the parameter supplied" do
      event = Event.new
      event.price_setter(50.50)
      expect(event.price).to eq "$50.50"
    end

    it "Accepts only Floats as ticket Prices" do
      event = Event.new
      event.price_setter('cat')
      expect(event.price).to eq 0
    end
  end

end
