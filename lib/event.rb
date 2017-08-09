require_relative 'coordinate'
require_relative 'ticket'

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

  def create_tickets(number)
    if number.is_a? Integer
      for i in 0..(number-1)
        ticket = Ticket.new
        @ticketlist.push(ticket)
      end
    else
      return 'Please enter an Integer'
    end
  end

end

# condition ? if_true : if_false

# if number.is_a? Integer ? @tickets = number : 'Please enter an Integer'
