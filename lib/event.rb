require_relative 'coordinate'

class Event
  attr_reader :coordinate, :id, :ticketlist

  def initialize
    @coordinate = Coordinate.new
    @id = 0
    @ticketlist = []
  end

  def id_setter(number)
    @id = number
  end

  def create_tickets
    for i in 0..2
      t = Ticket.new
      @ticketlist.push(t)
    end
    create_prices
  end

  def create_prices
    for i in 0..2
      @ticketlist[i].price_setter(rand(20.00..200.00))
    end
  end

end
