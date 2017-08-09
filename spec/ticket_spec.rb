require 'ticket'

describe Ticket do

  context "#initialize" do
    it "is initialized with empty coordinates by default" do
      ticket = Ticket.new
      expect(ticket.price).to eq 0
    end
  end

  context "#price_setter" do
    it "sets the Ticket's Price to the parameter supplied" do
      ticket = Ticket.new
      ticket.price_setter(50.50)
      expect(ticket.price).to eq "$50.50"
    end

    it "Accepts only Floats as Ticket Prices" do
      ticket = Ticket.new
      ticket.price_setter('cat')
      expect(ticket.price).to eq 0
    end
  end

end
