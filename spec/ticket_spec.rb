require 'ticket'

describe Ticket do

  context "#initialize" do
    it "is initialized with empty coordinates by default" do
      ticket = Ticket.new
      expect(ticket.price).to eq 0
    end
  end

  context "#price_setter" do
    it "Sets the Tickets Price to a Float" do
      ticket = Ticket.new
      ticket.price_setter(20.20)
      expect(ticket.price).to eq "$20.20"
    end

    it "Accepts only Floats" do
      ticket = Ticket.new
      ticket.price_setter('twenty-two forty')
      expect(ticket.price).to eq 0
    end
  end

end
