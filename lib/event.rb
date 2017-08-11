require_relative 'coordinate'

class Event
  attr_accessor :coordinate, :id, :ticketlist, :manhattan_distance

  def initialize
    @coordinate = Coordinate.new
    @id = 0
    @ticketlist = []
    @manhattan_distance = 0
    @r = (rand(0..4))
  end

  def create_tickets
    for i in 0..@r
      t = Ticket.new
      @ticketlist.push(t)
    end
    create_prices
  end

  def create_prices
    for i in 0..@r
      @ticketlist[i].price_setter(rand(20.00..200.00))
    end
  end

end
