require 'ticket'

describe Ticket do

  context "#initialize" do
    it "is initialized with empty coordinates by default" do
      ticket = Ticket.new
      expect(ticket.price).to eq 0
    end
  end

end
